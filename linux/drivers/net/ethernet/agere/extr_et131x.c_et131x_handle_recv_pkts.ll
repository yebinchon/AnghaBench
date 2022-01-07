; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_handle_recv_pkts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_handle_recv_pkts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { %struct.TYPE_9__*, %struct.TYPE_7__*, %struct.TYPE_10__*, i32, %struct.rx_ring }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.rx_ring = type { i64, i32, i32 }
%struct.rfd = type { i64 }

@MAX_PACKETS_HANDLED = common dso_local global i32 0, align 4
@RFD_LOW_WATER_MARK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"RFD's are running out\0A\00", align 1
@PARM_TX_TIME_INT_DEF = common dso_local global i32 0, align 4
@NANO_IN_A_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et131x_adapter*, i32)* @et131x_handle_recv_pkts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et131x_handle_recv_pkts(%struct.et131x_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.et131x_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rfd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rx_ring*, align 8
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.rfd* null, %struct.rfd** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %11 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %11, i32 0, i32 4
  store %struct.rx_ring* %12, %struct.rx_ring** %9, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @MAX_PACKETS_HANDLED, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @MAX_PACKETS_HANDLED, align 4
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %16, %2
  br label %19

19:                                               ; preds = %77, %57, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %80

23:                                               ; preds = %19
  %24 = load %struct.rx_ring*, %struct.rx_ring** %9, align 8
  %25 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %24, i32 0, i32 2
  %26 = call i64 @list_empty(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.rx_ring*, %struct.rx_ring** %9, align 8
  %30 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN_ON(i32 %33)
  store i32 0, i32* %8, align 4
  br label %80

35:                                               ; preds = %23
  %36 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %37 = call %struct.rfd* @nic_rx_pkts(%struct.et131x_adapter* %36)
  store %struct.rfd* %37, %struct.rfd** %5, align 8
  %38 = load %struct.rfd*, %struct.rfd** %5, align 8
  %39 = icmp eq %struct.rfd* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %80

41:                                               ; preds = %35
  %42 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %47, i32 0, i32 2
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = call i32 @netif_carrier_ok(%struct.TYPE_10__* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.rfd*, %struct.rfd** %5, align 8
  %54 = getelementptr inbounds %struct.rfd, %struct.rfd* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %46, %41
  br label %19

58:                                               ; preds = %52
  %59 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %60 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %59, i32 0, i32 2
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.rx_ring*, %struct.rx_ring** %9, align 8
  %67 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @RFD_LOW_WATER_MARK, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %58
  %72 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %72, i32 0, i32 1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = call i32 @dev_warn(i32* %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %71, %58
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %19

80:                                               ; preds = %40, %28, %19
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %84, %80
  %88 = load %struct.rx_ring*, %struct.rx_ring** %9, align 8
  %89 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %88, i32 0, i32 1
  store i32 1, i32* %89, align 8
  %90 = load i32, i32* @PARM_TX_TIME_INT_DEF, align 4
  %91 = load i32, i32* @NANO_IN_A_MICRO, align 4
  %92 = mul nsw i32 %90, %91
  %93 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %93, i32 0, i32 0
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = call i32 @writel(i32 %92, i32* %97)
  br label %102

99:                                               ; preds = %84
  %100 = load %struct.rx_ring*, %struct.rx_ring** %9, align 8
  %101 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %100, i32 0, i32 1
  store i32 0, i32* %101, align 8
  br label %102

102:                                              ; preds = %99, %87
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.rfd* @nic_rx_pkts(%struct.et131x_adapter*) #1

declare dso_local i32 @netif_carrier_ok(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
