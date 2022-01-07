; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_atmel-ssc.c_atmel_ssc_get_driver_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_atmel-ssc.c_atmel_ssc_get_driver_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_ssc_platform_data = type opaque
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.of_device_id = type { %struct.atmel_ssc_platform_data* }
%struct.TYPE_4__ = type { i64 }

@atmel_ssc_dt_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.atmel_ssc_platform_data* (%struct.platform_device*)* @atmel_ssc_get_driver_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.atmel_ssc_platform_data* @atmel_ssc_get_driver_data(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.atmel_ssc_platform_data*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load i32, i32* @atmel_ssc_dt_ids, align 4
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call %struct.of_device_id* @of_match_node(i32 %11, i64 %15)
  store %struct.of_device_id* %16, %struct.of_device_id** %4, align 8
  %17 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %18 = icmp eq %struct.of_device_id* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  store %struct.atmel_ssc_platform_data* null, %struct.atmel_ssc_platform_data** %2, align 8
  br label %30

20:                                               ; preds = %10
  %21 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %22 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %21, i32 0, i32 0
  %23 = load %struct.atmel_ssc_platform_data*, %struct.atmel_ssc_platform_data** %22, align 8
  store %struct.atmel_ssc_platform_data* %23, %struct.atmel_ssc_platform_data** %2, align 8
  br label %30

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = call %struct.TYPE_4__* @platform_get_device_id(%struct.platform_device* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.atmel_ssc_platform_data*
  store %struct.atmel_ssc_platform_data* %29, %struct.atmel_ssc_platform_data** %2, align 8
  br label %30

30:                                               ; preds = %24, %20, %19
  %31 = load %struct.atmel_ssc_platform_data*, %struct.atmel_ssc_platform_data** %2, align 8
  ret %struct.atmel_ssc_platform_data* %31
}

declare dso_local %struct.of_device_id* @of_match_node(i32, i64) #1

declare dso_local %struct.TYPE_4__* @platform_get_device_id(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
