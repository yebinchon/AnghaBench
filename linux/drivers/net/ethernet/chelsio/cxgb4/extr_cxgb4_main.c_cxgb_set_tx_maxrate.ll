; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb_set_tx_maxrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb_set_tx_maxrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.port_info = type { i32, i32, i32, %struct.adapter* }
%struct.adapter = type { i32, i32 }
%struct.sched_class = type { i8* }
%struct.ch_sched_params = type { i32, i8*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i64, i8*, i32, i32, i32, i32, i32 }
%struct.ch_sched_queue = type { i32, i8*, %struct.TYPE_4__, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CXGB4_FULL_INIT_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to rate limit on queue %d. Link Down?\0A\00", align 1
@SCHED_MAX_RATE_KBPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Invalid rate %u Mbps, Max rate is %u Mbps\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@SCHED_CLS_NONE = common dso_local global i8* null, align 8
@SCHED_QUEUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Unbinding Queue %d on port %d fail. Err: %d\0A\00", align 1
@SCHED_CLASS_TYPE_PACKET = common dso_local global i32 0, align 4
@SCHED_CLASS_LEVEL_CL_RL = common dso_local global i32 0, align 4
@SCHED_CLASS_MODE_CLASS = common dso_local global i32 0, align 4
@SCHED_CLASS_RATEUNIT_BITS = common dso_local global i32 0, align 4
@SCHED_CLASS_RATEMODE_ABS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Queue rate limiting failed. Err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @cxgb_set_tx_maxrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb_set_tx_maxrate(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.port_info*, align 8
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca %struct.sched_class*, align 8
  %11 = alloca %struct.ch_sched_params, align 8
  %12 = alloca %struct.ch_sched_queue, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.port_info* @netdev_priv(%struct.net_device* %15)
  store %struct.port_info* %16, %struct.port_info** %8, align 8
  %17 = load %struct.port_info*, %struct.port_info** %8, align 8
  %18 = getelementptr inbounds %struct.port_info, %struct.port_info* %17, i32 0, i32 3
  %19 = load %struct.adapter*, %struct.adapter** %18, align 8
  store %struct.adapter* %19, %struct.adapter** %9, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call i32 @can_sched(%struct.net_device* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %174

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.port_info*, %struct.port_info** %8, align 8
  %32 = getelementptr inbounds %struct.port_info, %struct.port_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = icmp sgt i32 %30, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29, %26
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %174

39:                                               ; preds = %29
  %40 = load %struct.adapter*, %struct.adapter** %9, align 8
  %41 = getelementptr inbounds %struct.adapter, %struct.adapter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CXGB4_FULL_INIT_DONE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %39
  %47 = load %struct.adapter*, %struct.adapter** %9, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %49, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %174

54:                                               ; preds = %39
  %55 = load i32, i32* %7, align 4
  %56 = mul nsw i32 %55, 1000
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @SCHED_MAX_RATE_KBPS, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load %struct.adapter*, %struct.adapter** %9, align 8
  %62 = getelementptr inbounds %struct.adapter, %struct.adapter* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @SCHED_MAX_RATE_KBPS, align 4
  %66 = sdiv i32 %65, 1000
  %67 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %63, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %66)
  %68 = load i32, i32* @ERANGE, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %174

70:                                               ; preds = %54
  %71 = call i32 @memset(%struct.ch_sched_queue* %12, i32 0, i32 80)
  %72 = load i32, i32* %6, align 4
  %73 = getelementptr inbounds %struct.ch_sched_queue, %struct.ch_sched_queue* %12, i32 0, i32 0
  store i32 %72, i32* %73, align 8
  %74 = load i8*, i8** @SCHED_CLS_NONE, align 8
  %75 = getelementptr inbounds %struct.ch_sched_queue, %struct.ch_sched_queue* %12, i32 0, i32 1
  store i8* %74, i8** %75, align 8
  %76 = load %struct.net_device*, %struct.net_device** %5, align 8
  %77 = bitcast %struct.ch_sched_queue* %12 to i8*
  %78 = load i32, i32* @SCHED_QUEUE, align 4
  %79 = call i32 @cxgb4_sched_class_unbind(%struct.net_device* %76, i8* %77, i32 %78)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %70
  %83 = load %struct.adapter*, %struct.adapter** %9, align 8
  %84 = getelementptr inbounds %struct.adapter, %struct.adapter* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.port_info*, %struct.port_info** %8, align 8
  %88 = getelementptr inbounds %struct.port_info, %struct.port_info* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %14, align 4
  %91 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %85, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %89, i32 %90)
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %4, align 4
  br label %174

93:                                               ; preds = %70
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  store i32 0, i32* %4, align 4
  br label %174

97:                                               ; preds = %93
  %98 = bitcast %struct.ch_sched_params* %11 to %struct.ch_sched_queue*
  %99 = call i32 @memset(%struct.ch_sched_queue* %98, i32 0, i32 80)
  %100 = load i32, i32* @SCHED_CLASS_TYPE_PACKET, align 4
  %101 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %11, i32 0, i32 3
  store i32 %100, i32* %101, align 8
  %102 = load i32, i32* @SCHED_CLASS_LEVEL_CL_RL, align 4
  %103 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %11, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 9
  store i32 %102, i32* %105, align 8
  %106 = load i32, i32* @SCHED_CLASS_MODE_CLASS, align 4
  %107 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %11, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 8
  store i32 %106, i32* %109, align 4
  %110 = load i32, i32* @SCHED_CLASS_RATEUNIT_BITS, align 4
  %111 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %11, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 7
  store i32 %110, i32* %113, align 8
  %114 = load i32, i32* @SCHED_CLASS_RATEMODE_ABS, align 4
  %115 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %11, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 6
  store i32 %114, i32* %117, align 4
  %118 = load %struct.port_info*, %struct.port_info** %8, align 8
  %119 = getelementptr inbounds %struct.port_info, %struct.port_info* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %11, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 5
  store i32 %120, i32* %123, align 8
  %124 = load i8*, i8** @SCHED_CLS_NONE, align 8
  %125 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %11, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 4
  store i8* %124, i8** %127, align 8
  %128 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %11, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 3
  store i64 0, i64* %130, align 8
  %131 = load i32, i32* %13, align 4
  %132 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %11, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  store i32 %131, i32* %134, align 8
  %135 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %11, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  store i64 0, i64* %137, align 8
  %138 = load %struct.net_device*, %struct.net_device** %5, align 8
  %139 = getelementptr inbounds %struct.net_device, %struct.net_device* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %11, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  store i32 %140, i32* %143, align 4
  %144 = load %struct.net_device*, %struct.net_device** %5, align 8
  %145 = bitcast %struct.ch_sched_params* %11 to %struct.ch_sched_queue*
  %146 = call %struct.sched_class* @cxgb4_sched_class_alloc(%struct.net_device* %144, %struct.ch_sched_queue* %145)
  store %struct.sched_class* %146, %struct.sched_class** %10, align 8
  %147 = load %struct.sched_class*, %struct.sched_class** %10, align 8
  %148 = icmp ne %struct.sched_class* %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %97
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %4, align 4
  br label %174

152:                                              ; preds = %97
  %153 = call i32 @memset(%struct.ch_sched_queue* %12, i32 0, i32 80)
  %154 = load i32, i32* %6, align 4
  %155 = getelementptr inbounds %struct.ch_sched_queue, %struct.ch_sched_queue* %12, i32 0, i32 0
  store i32 %154, i32* %155, align 8
  %156 = load %struct.sched_class*, %struct.sched_class** %10, align 8
  %157 = getelementptr inbounds %struct.sched_class, %struct.sched_class* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds %struct.ch_sched_queue, %struct.ch_sched_queue* %12, i32 0, i32 1
  store i8* %158, i8** %159, align 8
  %160 = load %struct.net_device*, %struct.net_device** %5, align 8
  %161 = bitcast %struct.ch_sched_queue* %12 to i8*
  %162 = load i32, i32* @SCHED_QUEUE, align 4
  %163 = call i32 @cxgb4_sched_class_bind(%struct.net_device* %160, i8* %161, i32 %162)
  store i32 %163, i32* %14, align 4
  %164 = load i32, i32* %14, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %152
  %167 = load %struct.adapter*, %struct.adapter** %9, align 8
  %168 = getelementptr inbounds %struct.adapter, %struct.adapter* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %14, align 4
  %171 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %169, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %170)
  br label %172

172:                                              ; preds = %166, %152
  %173 = load i32, i32* %14, align 4
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %172, %149, %96, %82, %60, %46, %36, %23
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @can_sched(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.ch_sched_queue*, i32, i32) #1

declare dso_local i32 @cxgb4_sched_class_unbind(%struct.net_device*, i8*, i32) #1

declare dso_local %struct.sched_class* @cxgb4_sched_class_alloc(%struct.net_device*, %struct.ch_sched_queue*) #1

declare dso_local i32 @cxgb4_sched_class_bind(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
