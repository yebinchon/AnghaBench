; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_unload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i64, i32, %struct.TYPE_8__*, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 (i32)* }
%struct.TYPE_7__ = type { i32 (i32, i32)*, i32 (i32, %struct.qed_link_params*)* }
%struct.qed_link_params = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Starting qede unload\0A\00", align 1
@QEDE_FLAGS_LINK_REQUESTED = common dso_local global i32 0, align 4
@QEDE_UNLOAD_RECOVERY = common dso_local global i32 0, align 4
@QEDE_STATE_CLOSED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Stopped Queues\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Link is down\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Ending qede unload\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qede_dev*, i32, i32)* @qede_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_unload(%struct.qede_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qede_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_link_params, align 4
  %8 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %10 = call i32 @DP_INFO(%struct.qede_dev* %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %15 = call i32 @__qede_lock(%struct.qede_dev* %14)
  br label %16

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @QEDE_FLAGS_LINK_REQUESTED, align 4
  %18 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %19 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %18, i32 0, i32 6
  %20 = call i32 @clear_bit(i32 %17, i32* %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @QEDE_UNLOAD_RECOVERY, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load i32, i32* @QEDE_STATE_CLOSED, align 4
  %26 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %27 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %24, %16
  %29 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %30 = call i32 @qede_rdma_dev_event_close(%struct.qede_dev* %29)
  %31 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %32 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @netif_tx_disable(i32 %33)
  %35 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %36 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @netif_carrier_off(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @QEDE_UNLOAD_RECOVERY, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %28
  %43 = call i32 @memset(%struct.qed_link_params* %7, i32 0, i32 4)
  %44 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %7, i32 0, i32 0
  store i32 0, i32* %44, align 4
  %45 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %46 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32 (i32, %struct.qed_link_params*)*, i32 (i32, %struct.qed_link_params*)** %50, align 8
  %52 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %53 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 %51(i32 %54, %struct.qed_link_params* %7)
  %56 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %57 = call i32 @qede_stop_queues(%struct.qede_dev* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %42
  %61 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %62 = call i32 @qede_sync_free_irqs(%struct.qede_dev* %61)
  br label %120

63:                                               ; preds = %42
  %64 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %65 = call i32 @DP_INFO(%struct.qede_dev* %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %28
  %67 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %68 = call i32 @qede_vlan_mark_nonconfigured(%struct.qede_dev* %67)
  %69 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %70 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %69, i32 0, i32 2
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32 (i32)*, i32 (i32)** %72, align 8
  %74 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %75 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 %73(i32 %76)
  %78 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %79 = call i32 @IS_VF(%struct.qede_dev* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %66
  %82 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %83 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %90 = call i32 @qede_poll_for_freeing_arfs_filters(%struct.qede_dev* %89)
  %91 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %92 = call i32 @qede_free_arfs(%struct.qede_dev* %91)
  br label %93

93:                                               ; preds = %88, %81, %66
  %94 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %95 = call i32 @qede_sync_free_irqs(%struct.qede_dev* %94)
  %96 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %97 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %96, i32 0, i32 2
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32 (i32, i32)*, i32 (i32, i32)** %101, align 8
  %103 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %104 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 %102(i32 %105, i32 0)
  %107 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %108 = call i32 @qede_napi_disable_remove(%struct.qede_dev* %107)
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @QEDE_UNLOAD_RECOVERY, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %93
  %113 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %114 = call i32 @qede_empty_tx_queues(%struct.qede_dev* %113)
  br label %115

115:                                              ; preds = %112, %93
  %116 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %117 = call i32 @qede_free_mem_load(%struct.qede_dev* %116)
  %118 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %119 = call i32 @qede_free_fp_array(%struct.qede_dev* %118)
  br label %120

120:                                              ; preds = %115, %60
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %125 = call i32 @__qede_unlock(%struct.qede_dev* %124)
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @QEDE_UNLOAD_RECOVERY, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %132 = call i32 @DP_NOTICE(%struct.qede_dev* %131, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %126
  %134 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %135 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %134, i32 0, i32 0
  store i64 0, i64* %135, align 8
  %136 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %137 = call i32 @DP_INFO(%struct.qede_dev* %136, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DP_INFO(%struct.qede_dev*, i8*) #1

declare dso_local i32 @__qede_lock(%struct.qede_dev*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @qede_rdma_dev_event_close(%struct.qede_dev*) #1

declare dso_local i32 @netif_tx_disable(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @memset(%struct.qed_link_params*, i32, i32) #1

declare dso_local i32 @qede_stop_queues(%struct.qede_dev*) #1

declare dso_local i32 @qede_sync_free_irqs(%struct.qede_dev*) #1

declare dso_local i32 @qede_vlan_mark_nonconfigured(%struct.qede_dev*) #1

declare dso_local i32 @IS_VF(%struct.qede_dev*) #1

declare dso_local i32 @qede_poll_for_freeing_arfs_filters(%struct.qede_dev*) #1

declare dso_local i32 @qede_free_arfs(%struct.qede_dev*) #1

declare dso_local i32 @qede_napi_disable_remove(%struct.qede_dev*) #1

declare dso_local i32 @qede_empty_tx_queues(%struct.qede_dev*) #1

declare dso_local i32 @qede_free_mem_load(%struct.qede_dev*) #1

declare dso_local i32 @qede_free_fp_array(%struct.qede_dev*) #1

declare dso_local i32 @__qede_unlock(%struct.qede_dev*) #1

declare dso_local i32 @DP_NOTICE(%struct.qede_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
