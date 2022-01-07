; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_bus.c_sdio_match_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_bus.c_sdio_match_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_device_id = type { i64, i64, i64 }
%struct.sdio_func = type { i32 }
%struct.sdio_driver = type { %struct.sdio_device_id* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sdio_device_id* (%struct.sdio_func*, %struct.sdio_driver*)* @sdio_match_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sdio_device_id* @sdio_match_device(%struct.sdio_func* %0, %struct.sdio_driver* %1) #0 {
  %3 = alloca %struct.sdio_device_id*, align 8
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.sdio_driver*, align 8
  %6 = alloca %struct.sdio_device_id*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store %struct.sdio_driver* %1, %struct.sdio_driver** %5, align 8
  %7 = load %struct.sdio_driver*, %struct.sdio_driver** %5, align 8
  %8 = getelementptr inbounds %struct.sdio_driver, %struct.sdio_driver* %7, i32 0, i32 0
  %9 = load %struct.sdio_device_id*, %struct.sdio_device_id** %8, align 8
  store %struct.sdio_device_id* %9, %struct.sdio_device_id** %6, align 8
  %10 = load %struct.sdio_device_id*, %struct.sdio_device_id** %6, align 8
  %11 = icmp ne %struct.sdio_device_id* %10, null
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %37, %12
  %14 = load %struct.sdio_device_id*, %struct.sdio_device_id** %6, align 8
  %15 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = load %struct.sdio_device_id*, %struct.sdio_device_id** %6, align 8
  %20 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.sdio_device_id*, %struct.sdio_device_id** %6, align 8
  %25 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %23, %18, %13
  %29 = phi i1 [ true, %18 ], [ true, %13 ], [ %27, %23 ]
  br i1 %29, label %30, label %40

30:                                               ; preds = %28
  %31 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %32 = load %struct.sdio_device_id*, %struct.sdio_device_id** %6, align 8
  %33 = call i64 @sdio_match_one(%struct.sdio_func* %31, %struct.sdio_device_id* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load %struct.sdio_device_id*, %struct.sdio_device_id** %6, align 8
  store %struct.sdio_device_id* %36, %struct.sdio_device_id** %3, align 8
  br label %42

37:                                               ; preds = %30
  %38 = load %struct.sdio_device_id*, %struct.sdio_device_id** %6, align 8
  %39 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %38, i32 1
  store %struct.sdio_device_id* %39, %struct.sdio_device_id** %6, align 8
  br label %13

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40, %2
  store %struct.sdio_device_id* null, %struct.sdio_device_id** %3, align 8
  br label %42

42:                                               ; preds = %41, %35
  %43 = load %struct.sdio_device_id*, %struct.sdio_device_id** %3, align 8
  ret %struct.sdio_device_id* %43
}

declare dso_local i64 @sdio_match_one(%struct.sdio_func*, %struct.sdio_device_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
