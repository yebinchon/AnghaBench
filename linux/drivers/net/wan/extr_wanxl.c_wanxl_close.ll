; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_wanxl.c_wanxl_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_wanxl.c_wanxl_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.port = type { i32, %struct.TYPE_8__**, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i64 }

@DOORBELL_TO_CARD_CLOSE_0 = common dso_local global i32 0, align 4
@PLX_DOORBELL_TO_CARD = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"unable to close port\0A\00", align 1
@TX_BUFFERS = common dso_local global i32 0, align 4
@PACKET_EMPTY = common dso_local global i64 0, align 8
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @wanxl_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wanxl_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.port* @dev_to_port(%struct.net_device* %7)
  store %struct.port* %8, %struct.port** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @hdlc_close(%struct.net_device* %9)
  %11 = load i32, i32* @DOORBELL_TO_CARD_CLOSE_0, align 4
  %12 = load %struct.port*, %struct.port** %3, align 8
  %13 = getelementptr inbounds %struct.port, %struct.port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %11, %14
  %16 = shl i32 1, %15
  %17 = load %struct.port*, %struct.port** %3, align 8
  %18 = getelementptr inbounds %struct.port, %struct.port* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PLX_DOORBELL_TO_CARD, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 %16, i64 %23)
  %25 = load i64, i64* @jiffies, align 8
  %26 = load i64, i64* @HZ, align 8
  %27 = add i64 %25, %26
  store i64 %27, i64* %4, align 8
  br label %28

28:                                               ; preds = %36, %1
  %29 = load %struct.port*, %struct.port** %3, align 8
  %30 = call %struct.TYPE_7__* @get_status(%struct.port* %29)
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %41

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @jiffies, align 8
  %39 = call i64 @time_after(i64 %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %28, label %41

41:                                               ; preds = %36, %34
  %42 = load %struct.port*, %struct.port** %3, align 8
  %43 = call %struct.TYPE_7__* @get_status(%struct.port* %42)
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = call i32 @netdev_err(%struct.net_device* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %41
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = call i32 @netif_stop_queue(%struct.net_device* %51)
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %102, %50
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @TX_BUFFERS, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %105

57:                                               ; preds = %53
  %58 = load %struct.port*, %struct.port** %3, align 8
  %59 = call %struct.TYPE_7__* @get_status(%struct.port* %58)
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %6, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PACKET_EMPTY, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %101

70:                                               ; preds = %57
  %71 = load i64, i64* @PACKET_EMPTY, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.port*, %struct.port** %3, align 8
  %75 = getelementptr inbounds %struct.port, %struct.port* %74, i32 0, i32 2
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.port*, %struct.port** %3, align 8
  %83 = getelementptr inbounds %struct.port, %struct.port* %82, i32 0, i32 1
  %84 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %84, i64 %86
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %92 = call i32 @pci_unmap_single(i32 %78, i32 %81, i32 %90, i32 %91)
  %93 = load %struct.port*, %struct.port** %3, align 8
  %94 = getelementptr inbounds %struct.port, %struct.port* %93, i32 0, i32 1
  %95 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %95, i64 %97
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = call i32 @dev_kfree_skb(%struct.TYPE_8__* %99)
  br label %101

101:                                              ; preds = %70, %57
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %53

105:                                              ; preds = %53
  ret i32 0
}

declare dso_local %struct.port* @dev_to_port(%struct.net_device*) #1

declare dso_local i32 @hdlc_close(%struct.net_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local %struct.TYPE_7__* @get_status(%struct.port*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
