; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_device.c_octeon_allocate_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_device.c_octeon_allocate_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64, i32, i32, i32 }

@octeon_devices_lock = common dso_local global i32 0, align 4
@MAX_OCTEON_DEVICES = common dso_local global i64 0, align 8
@octeon_device = common dso_local global %struct.octeon_device** null, align 8
@octeon_device_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"LiquidIO%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.octeon_device* @octeon_allocate_device(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.octeon_device*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store %struct.octeon_device* null, %struct.octeon_device** %7, align 8
  %8 = call i32 @spin_lock(i32* @octeon_devices_lock)
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %21, %2
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @MAX_OCTEON_DEVICES, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load %struct.octeon_device**, %struct.octeon_device*** @octeon_device, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.octeon_device*, %struct.octeon_device** %14, i64 %15
  %17 = load %struct.octeon_device*, %struct.octeon_device** %16, align 8
  %18 = icmp ne %struct.octeon_device* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %24

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20
  %22 = load i64, i64* %6, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %6, align 8
  br label %9

24:                                               ; preds = %19, %9
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @MAX_OCTEON_DEVICES, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call %struct.octeon_device* @octeon_allocate_device_mem(i64 %29, i64 %30)
  store %struct.octeon_device* %31, %struct.octeon_device** %7, align 8
  %32 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %33 = icmp ne %struct.octeon_device* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i32, i32* @octeon_device_count, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @octeon_device_count, align 4
  %37 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %38 = load %struct.octeon_device**, %struct.octeon_device*** @octeon_device, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds %struct.octeon_device*, %struct.octeon_device** %38, i64 %39
  store %struct.octeon_device* %37, %struct.octeon_device** %40, align 8
  br label %41

41:                                               ; preds = %34, %28
  br label %42

42:                                               ; preds = %41, %24
  %43 = call i32 @spin_unlock(i32* @octeon_devices_lock)
  %44 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %45 = icmp ne %struct.octeon_device* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store %struct.octeon_device* null, %struct.octeon_device** %3, align 8
  br label %65

47:                                               ; preds = %42
  %48 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %49 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %48, i32 0, i32 3
  %50 = call i32 @spin_lock_init(i32* %49)
  %51 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %52 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %51, i32 0, i32 2
  %53 = call i32 @spin_lock_init(i32* %52)
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %56 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %58 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %61 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @snprintf(i32 %59, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %62)
  %64 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  store %struct.octeon_device* %64, %struct.octeon_device** %3, align 8
  br label %65

65:                                               ; preds = %47, %46
  %66 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  ret %struct.octeon_device* %66
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.octeon_device* @octeon_allocate_device_mem(i64, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
