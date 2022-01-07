; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_tx_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_tx_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_channel = type { i32, %struct.xgbe_ring*, %struct.xgbe_prv_data* }
%struct.xgbe_ring = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.xgbe_prv_data = type { %struct.net_device*, %struct.xgbe_desc_if, %struct.xgbe_hw_if }
%struct.net_device = type { i32 }
%struct.xgbe_desc_if = type { i32 (%struct.xgbe_prv_data.0*, %struct.xgbe_ring_data*)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.xgbe_ring_data = type { %struct.TYPE_3__, %struct.xgbe_ring_desc* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.xgbe_ring_desc = type { i32 }
%struct.xgbe_hw_if = type { i32 (%struct.xgbe_ring_data*)*, i64 (%struct.xgbe_ring_desc*)*, i32 (%struct.xgbe_ring_desc*)* }
%struct.netdev_queue = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"-->xgbe_tx_poll\0A\00", align 1
@XGBE_TX_DESC_MAX_PROC = common dso_local global i32 0, align 4
@XGBE_TX_DESC_MIN_FREE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"<--xgbe_tx_poll: processed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_channel*)* @xgbe_tx_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_tx_poll(%struct.xgbe_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_channel*, align 8
  %4 = alloca %struct.xgbe_prv_data*, align 8
  %5 = alloca %struct.xgbe_hw_if*, align 8
  %6 = alloca %struct.xgbe_desc_if*, align 8
  %7 = alloca %struct.xgbe_ring*, align 8
  %8 = alloca %struct.xgbe_ring_data*, align 8
  %9 = alloca %struct.xgbe_ring_desc*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.netdev_queue*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.xgbe_channel* %0, %struct.xgbe_channel** %3, align 8
  %16 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %17 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %16, i32 0, i32 2
  %18 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %17, align 8
  store %struct.xgbe_prv_data* %18, %struct.xgbe_prv_data** %4, align 8
  %19 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %20 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %19, i32 0, i32 2
  store %struct.xgbe_hw_if* %20, %struct.xgbe_hw_if** %5, align 8
  %21 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %22 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %21, i32 0, i32 1
  store %struct.xgbe_desc_if* %22, %struct.xgbe_desc_if** %6, align 8
  %23 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %24 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %23, i32 0, i32 1
  %25 = load %struct.xgbe_ring*, %struct.xgbe_ring** %24, align 8
  store %struct.xgbe_ring* %25, %struct.xgbe_ring** %7, align 8
  %26 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %27 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %26, i32 0, i32 0
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  store %struct.net_device* %28, %struct.net_device** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %29 = call i32 (i8*, ...) @DBGPR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.xgbe_ring*, %struct.xgbe_ring** %7, align 8
  %31 = icmp ne %struct.xgbe_ring* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %155

33:                                               ; preds = %1
  %34 = load %struct.xgbe_ring*, %struct.xgbe_ring** %7, align 8
  %35 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %15, align 4
  %37 = call i32 (...) @smp_rmb()
  %38 = load %struct.net_device*, %struct.net_device** %10, align 8
  %39 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %40 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %38, i32 %41)
  store %struct.netdev_queue* %42, %struct.netdev_queue** %11, align 8
  br label %43

43:                                               ; preds = %107, %33
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @XGBE_TX_DESC_MAX_PROC, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load %struct.xgbe_ring*, %struct.xgbe_ring** %7, align 8
  %49 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %50, %51
  br label %53

53:                                               ; preds = %47, %43
  %54 = phi i1 [ false, %43 ], [ %52, %47 ]
  br i1 %54, label %55, label %126

55:                                               ; preds = %53
  %56 = load %struct.xgbe_ring*, %struct.xgbe_ring** %7, align 8
  %57 = load %struct.xgbe_ring*, %struct.xgbe_ring** %7, align 8
  %58 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %56, i32 %59)
  store %struct.xgbe_ring_data* %60, %struct.xgbe_ring_data** %8, align 8
  %61 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %8, align 8
  %62 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %61, i32 0, i32 1
  %63 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %62, align 8
  store %struct.xgbe_ring_desc* %63, %struct.xgbe_ring_desc** %9, align 8
  %64 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %5, align 8
  %65 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %64, i32 0, i32 2
  %66 = load i32 (%struct.xgbe_ring_desc*)*, i32 (%struct.xgbe_ring_desc*)** %65, align 8
  %67 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %9, align 8
  %68 = call i32 %66(%struct.xgbe_ring_desc* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %55
  br label %126

71:                                               ; preds = %55
  %72 = call i32 (...) @dma_rmb()
  %73 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %74 = call i64 @netif_msg_tx_done(%struct.xgbe_prv_data* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %78 = load %struct.xgbe_ring*, %struct.xgbe_ring** %7, align 8
  %79 = load %struct.xgbe_ring*, %struct.xgbe_ring** %7, align 8
  %80 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @xgbe_dump_tx_desc(%struct.xgbe_prv_data* %77, %struct.xgbe_ring* %78, i32 %81, i32 1, i32 0)
  br label %83

83:                                               ; preds = %76, %71
  %84 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %5, align 8
  %85 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %84, i32 0, i32 1
  %86 = load i64 (%struct.xgbe_ring_desc*)*, i64 (%struct.xgbe_ring_desc*)** %85, align 8
  %87 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %9, align 8
  %88 = call i64 %86(%struct.xgbe_ring_desc* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %83
  %91 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %8, align 8
  %92 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = zext i32 %95 to i64
  %97 = add nsw i64 %96, %94
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %13, align 4
  %99 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %8, align 8
  %100 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = zext i32 %103 to i64
  %105 = add nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %14, align 4
  br label %107

107:                                              ; preds = %90, %83
  %108 = load %struct.xgbe_desc_if*, %struct.xgbe_desc_if** %6, align 8
  %109 = getelementptr inbounds %struct.xgbe_desc_if, %struct.xgbe_desc_if* %108, i32 0, i32 0
  %110 = load i32 (%struct.xgbe_prv_data.0*, %struct.xgbe_ring_data*)*, i32 (%struct.xgbe_prv_data.0*, %struct.xgbe_ring_data*)** %109, align 8
  %111 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %112 = bitcast %struct.xgbe_prv_data* %111 to %struct.xgbe_prv_data.0*
  %113 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %8, align 8
  %114 = call i32 %110(%struct.xgbe_prv_data.0* %112, %struct.xgbe_ring_data* %113)
  %115 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %5, align 8
  %116 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %115, i32 0, i32 0
  %117 = load i32 (%struct.xgbe_ring_data*)*, i32 (%struct.xgbe_ring_data*)** %116, align 8
  %118 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %8, align 8
  %119 = call i32 %117(%struct.xgbe_ring_data* %118)
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %12, align 4
  %122 = load %struct.xgbe_ring*, %struct.xgbe_ring** %7, align 8
  %123 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %123, align 4
  br label %43

126:                                              ; preds = %70, %53
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %126
  store i32 0, i32* %2, align 4
  br label %155

130:                                              ; preds = %126
  %131 = load %struct.netdev_queue*, %struct.netdev_queue** %11, align 8
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %14, align 4
  %134 = call i32 @netdev_tx_completed_queue(%struct.netdev_queue* %131, i32 %132, i32 %133)
  %135 = load %struct.xgbe_ring*, %struct.xgbe_ring** %7, align 8
  %136 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %151

140:                                              ; preds = %130
  %141 = load %struct.xgbe_ring*, %struct.xgbe_ring** %7, align 8
  %142 = call i64 @xgbe_tx_avail_desc(%struct.xgbe_ring* %141)
  %143 = load i64, i64* @XGBE_TX_DESC_MIN_FREE, align 8
  %144 = icmp sgt i64 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = load %struct.xgbe_ring*, %struct.xgbe_ring** %7, align 8
  %147 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  store i32 0, i32* %148, align 4
  %149 = load %struct.netdev_queue*, %struct.netdev_queue** %11, align 8
  %150 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %149)
  br label %151

151:                                              ; preds = %145, %140, %130
  %152 = load i32, i32* %12, align 4
  %153 = call i32 (i8*, ...) @DBGPR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* %12, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %151, %129, %32
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @DBGPR(i8*, ...) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring*, i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i64 @netif_msg_tx_done(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_dump_tx_desc(%struct.xgbe_prv_data*, %struct.xgbe_ring*, i32, i32, i32) #1

declare dso_local i32 @netdev_tx_completed_queue(%struct.netdev_queue*, i32, i32) #1

declare dso_local i64 @xgbe_tx_avail_desc(%struct.xgbe_ring*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
