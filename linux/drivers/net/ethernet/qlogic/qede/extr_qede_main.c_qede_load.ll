; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i64, i64, i64, i32, %struct.TYPE_10__*, %struct.TYPE_8__, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (i32, i32)*, i32 (i32, %struct.qed_link_params*)* }
%struct.qed_link_params = type { i32 }
%struct.TYPE_8__ = type { %struct.qed_link_params }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Starting qede load\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Allocated %d Rx, %d Tx queues\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"aRFS memory allocation failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Napi added and enabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Setup IRQs succeeded\0A\00", align 1
@QEDE_LOAD_RELOAD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Start VPORT, RXQ and TXQ succeeded\0A\00", align 1
@QEDE_FLAGS_LINK_REQUESTED = common dso_local global i32 0, align 4
@QEDE_STATE_OPEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Ending successfully qede load\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*, i32, i32)* @qede_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_load(%struct.qede_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qede_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_link_params, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %11 = call i32 (%struct.qede_dev*, i8*, ...) @DP_INFO(%struct.qede_dev* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %16 = call i32 @__qede_lock(%struct.qede_dev* %15)
  br label %17

17:                                               ; preds = %14, %3
  %18 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %19 = call i32 @qede_set_num_queues(%struct.qede_dev* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %171

23:                                               ; preds = %17
  %24 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %25 = call i32 @qede_alloc_fp_array(%struct.qede_dev* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %171

29:                                               ; preds = %23
  %30 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %31 = call i32 @qede_init_fp(%struct.qede_dev* %30)
  %32 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %33 = call i32 @qede_alloc_mem_load(%struct.qede_dev* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %151

37:                                               ; preds = %29
  %38 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %39 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %40 = call i32 @QEDE_RSS_COUNT(%struct.qede_dev* %39)
  %41 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %42 = call i32 @QEDE_TSS_COUNT(%struct.qede_dev* %41)
  %43 = call i32 (%struct.qede_dev*, i8*, ...) @DP_INFO(%struct.qede_dev* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %42)
  %44 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %45 = call i32 @qede_set_real_num_queues(%struct.qede_dev* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %148

49:                                               ; preds = %37
  %50 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %51 = call i32 @IS_VF(%struct.qede_dev* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %69, label %53

53:                                               ; preds = %49
  %54 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %55 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %54, i32 0, i32 9
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %69

60:                                               ; preds = %53
  %61 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %62 = call i32 @qede_alloc_arfs(%struct.qede_dev* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %67 = call i32 @DP_NOTICE(%struct.qede_dev* %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %60
  br label %69

69:                                               ; preds = %68, %53, %49
  %70 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %71 = call i32 @qede_napi_add_enable(%struct.qede_dev* %70)
  %72 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %73 = call i32 (%struct.qede_dev*, i8*, ...) @DP_INFO(%struct.qede_dev* %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %74 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %75 = call i32 @qede_setup_irqs(%struct.qede_dev* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %145

79:                                               ; preds = %69
  %80 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %81 = call i32 (%struct.qede_dev*, i8*, ...) @DP_INFO(%struct.qede_dev* %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %82 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @QEDE_LOAD_RELOAD, align 4
  %85 = icmp ne i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @qede_start_queues(%struct.qede_dev* %82, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %138

91:                                               ; preds = %79
  %92 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %93 = call i32 (%struct.qede_dev*, i8*, ...) @DP_INFO(%struct.qede_dev* %92, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %94 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %95 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @netdev_get_num_tc(i32 %96)
  store i64 %97, i64* %8, align 8
  %98 = load i64, i64* %8, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = load i64, i64* %8, align 8
  br label %107

102:                                              ; preds = %91
  %103 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %104 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %103, i32 0, i32 9
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  br label %107

107:                                              ; preds = %102, %100
  %108 = phi i64 [ %101, %100 ], [ %106, %102 ]
  store i64 %108, i64* %8, align 8
  %109 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %110 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 4
  %112 = load i64, i64* %8, align 8
  %113 = call i32 @qede_setup_tc(i32 %111, i64 %112)
  %114 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %115 = call i32 @qede_configure_vlan_filters(%struct.qede_dev* %114)
  %116 = load i32, i32* @QEDE_FLAGS_LINK_REQUESTED, align 4
  %117 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %118 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %117, i32 0, i32 7
  %119 = call i32 @set_bit(i32 %116, i32* %118)
  %120 = call i32 @memset(%struct.qed_link_params* %7, i32 0, i32 4)
  %121 = getelementptr inbounds %struct.qed_link_params, %struct.qed_link_params* %7, i32 0, i32 0
  store i32 1, i32* %121, align 4
  %122 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %123 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %122, i32 0, i32 4
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load i32 (i32, %struct.qed_link_params*)*, i32 (i32, %struct.qed_link_params*)** %127, align 8
  %129 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %130 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = call i32 %128(i32 %131, %struct.qed_link_params* %7)
  %133 = load i32, i32* @QEDE_STATE_OPEN, align 4
  %134 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %135 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %134, i32 0, i32 6
  store i32 %133, i32* %135, align 4
  %136 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %137 = call i32 (%struct.qede_dev*, i8*, ...) @DP_INFO(%struct.qede_dev* %136, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %171

138:                                              ; preds = %90
  %139 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %140 = call i32 @qede_sync_free_irqs(%struct.qede_dev* %139)
  %141 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %142 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = call i32 @memset(%struct.qed_link_params* %143, i32 0, i32 4)
  br label %145

145:                                              ; preds = %138, %78
  %146 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %147 = call i32 @qede_napi_disable_remove(%struct.qede_dev* %146)
  br label %148

148:                                              ; preds = %145, %48
  %149 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %150 = call i32 @qede_free_mem_load(%struct.qede_dev* %149)
  br label %151

151:                                              ; preds = %148, %36
  %152 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %153 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %152, i32 0, i32 4
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i32 (i32, i32)*, i32 (i32, i32)** %157, align 8
  %159 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %160 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = call i32 %158(i32 %161, i32 0)
  %163 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %164 = call i32 @qede_free_fp_array(%struct.qede_dev* %163)
  %165 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %166 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %165, i32 0, i32 2
  store i64 0, i64* %166, align 8
  %167 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %168 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %167, i32 0, i32 1
  store i64 0, i64* %168, align 8
  %169 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %170 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %169, i32 0, i32 0
  store i64 0, i64* %170, align 8
  br label %171

171:                                              ; preds = %151, %107, %28, %22
  %172 = load i32, i32* %6, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %171
  %175 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %176 = call i32 @__qede_unlock(%struct.qede_dev* %175)
  br label %177

177:                                              ; preds = %174, %171
  %178 = load i32, i32* %9, align 4
  ret i32 %178
}

declare dso_local i32 @DP_INFO(%struct.qede_dev*, i8*, ...) #1

declare dso_local i32 @__qede_lock(%struct.qede_dev*) #1

declare dso_local i32 @qede_set_num_queues(%struct.qede_dev*) #1

declare dso_local i32 @qede_alloc_fp_array(%struct.qede_dev*) #1

declare dso_local i32 @qede_init_fp(%struct.qede_dev*) #1

declare dso_local i32 @qede_alloc_mem_load(%struct.qede_dev*) #1

declare dso_local i32 @QEDE_RSS_COUNT(%struct.qede_dev*) #1

declare dso_local i32 @QEDE_TSS_COUNT(%struct.qede_dev*) #1

declare dso_local i32 @qede_set_real_num_queues(%struct.qede_dev*) #1

declare dso_local i32 @IS_VF(%struct.qede_dev*) #1

declare dso_local i32 @qede_alloc_arfs(%struct.qede_dev*) #1

declare dso_local i32 @DP_NOTICE(%struct.qede_dev*, i8*) #1

declare dso_local i32 @qede_napi_add_enable(%struct.qede_dev*) #1

declare dso_local i32 @qede_setup_irqs(%struct.qede_dev*) #1

declare dso_local i32 @qede_start_queues(%struct.qede_dev*, i32) #1

declare dso_local i64 @netdev_get_num_tc(i32) #1

declare dso_local i32 @qede_setup_tc(i32, i64) #1

declare dso_local i32 @qede_configure_vlan_filters(%struct.qede_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @memset(%struct.qed_link_params*, i32, i32) #1

declare dso_local i32 @qede_sync_free_irqs(%struct.qede_dev*) #1

declare dso_local i32 @qede_napi_disable_remove(%struct.qede_dev*) #1

declare dso_local i32 @qede_free_mem_load(%struct.qede_dev*) #1

declare dso_local i32 @qede_free_fp_array(%struct.qede_dev*) #1

declare dso_local i32 @__qede_unlock(%struct.qede_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
