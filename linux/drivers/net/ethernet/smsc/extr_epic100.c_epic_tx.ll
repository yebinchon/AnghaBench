; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_epic100.c_epic_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_epic100.c_epic_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.epic_private = type { i32, i32, i32, %struct.sk_buff**, %struct.TYPE_4__*, i32 }
%struct.sk_buff = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@TX_RING_SIZE = common dso_local global i32 0, align 4
@DescOwn = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Out-of-sync dirty pointer, %d vs. %d, full=%d.\0A\00", align 1
@TX_QUEUE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.epic_private*)* @epic_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @epic_tx(%struct.net_device* %0, %struct.epic_private* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.epic_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.epic_private* %1, %struct.epic_private** %4, align 8
  %10 = load %struct.epic_private*, %struct.epic_private** %4, align 8
  %11 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.epic_private*, %struct.epic_private** %4, align 8
  %14 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %110, %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sub i32 %17, %18
  %20 = icmp ugt i32 %19, 0
  br i1 %20, label %21, label %113

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @TX_RING_SIZE, align 4
  %24 = urem i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load %struct.epic_private*, %struct.epic_private** %4, align 8
  %26 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %25, i32 0, i32 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @DescOwn, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  br label %113

38:                                               ; preds = %21
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 1
  %41 = call i64 @likely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  %45 = ashr i32 %44, 8
  %46 = and i32 %45, 15
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, %46
  store i32 %51, i32* %49, align 4
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.epic_private*, %struct.epic_private** %4, align 8
  %58 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %57, i32 0, i32 3
  %59 = load %struct.sk_buff**, %struct.sk_buff*** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %59, i64 %61
  %63 = load %struct.sk_buff*, %struct.sk_buff** %62, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %65
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 4
  br label %78

73:                                               ; preds = %38
  %74 = load %struct.net_device*, %struct.net_device** %3, align 8
  %75 = load %struct.epic_private*, %struct.epic_private** %4, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @epic_tx_error(%struct.net_device* %74, %struct.epic_private* %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %43
  %79 = load %struct.epic_private*, %struct.epic_private** %4, align 8
  %80 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %79, i32 0, i32 3
  %81 = load %struct.sk_buff**, %struct.sk_buff*** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %81, i64 %83
  %85 = load %struct.sk_buff*, %struct.sk_buff** %84, align 8
  store %struct.sk_buff* %85, %struct.sk_buff** %7, align 8
  %86 = load %struct.epic_private*, %struct.epic_private** %4, align 8
  %87 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.epic_private*, %struct.epic_private** %4, align 8
  %90 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %89, i32 0, i32 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %101 = call i32 @pci_unmap_single(i32 %88, i32 %96, i64 %99, i32 %100)
  %102 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %103 = call i32 @dev_consume_skb_irq(%struct.sk_buff* %102)
  %104 = load %struct.epic_private*, %struct.epic_private** %4, align 8
  %105 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %104, i32 0, i32 3
  %106 = load %struct.sk_buff**, %struct.sk_buff*** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %106, i64 %108
  store %struct.sk_buff* null, %struct.sk_buff** %109, align 8
  br label %110

110:                                              ; preds = %78
  %111 = load i32, i32* %5, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %16

113:                                              ; preds = %37, %16
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %5, align 4
  %116 = sub i32 %114, %115
  %117 = load i32, i32* @TX_RING_SIZE, align 4
  %118 = icmp ugt i32 %116, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %113
  %120 = load %struct.net_device*, %struct.net_device** %3, align 8
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.epic_private*, %struct.epic_private** %4, align 8
  %124 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @netdev_warn(%struct.net_device* %120, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %121, i32 %122, i32 %125)
  %127 = load i32, i32* @TX_RING_SIZE, align 4
  %128 = load i32, i32* %5, align 4
  %129 = add i32 %128, %127
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %119, %113
  %131 = load i32, i32* %5, align 4
  %132 = load %struct.epic_private*, %struct.epic_private** %4, align 8
  %133 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.epic_private*, %struct.epic_private** %4, align 8
  %135 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %130
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* %5, align 4
  %141 = sub i32 %139, %140
  %142 = load i32, i32* @TX_QUEUE_LEN, align 4
  %143 = sub nsw i32 %142, 4
  %144 = icmp ult i32 %141, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %138
  %146 = load %struct.epic_private*, %struct.epic_private** %4, align 8
  %147 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %146, i32 0, i32 2
  store i32 0, i32* %147, align 8
  %148 = load %struct.net_device*, %struct.net_device** %3, align 8
  %149 = call i32 @netif_wake_queue(%struct.net_device* %148)
  br label %150

150:                                              ; preds = %145, %138, %130
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @epic_tx_error(%struct.net_device*, %struct.epic_private*, i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @dev_consume_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32, i32, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
