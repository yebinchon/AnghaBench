; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_build.c_ubi_get_by_major.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_build.c_ubi_get_by_major.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ubi_devices_lock = common dso_local global i32 0, align 4
@UBI_MAX_DEVICES = common dso_local global i32 0, align 4
@ubi_devices = common dso_local global %struct.ubi_device** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubi_device* @ubi_get_by_major(i32 %0) #0 {
  %2 = alloca %struct.ubi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_device*, align 8
  store i32 %0, i32* %3, align 4
  %6 = call i32 @spin_lock(i32* @ubi_devices_lock)
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %44, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @UBI_MAX_DEVICES, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %47

11:                                               ; preds = %7
  %12 = load %struct.ubi_device**, %struct.ubi_device*** @ubi_devices, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ubi_device*, %struct.ubi_device** %12, i64 %14
  %16 = load %struct.ubi_device*, %struct.ubi_device** %15, align 8
  store %struct.ubi_device* %16, %struct.ubi_device** %5, align 8
  %17 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %18 = icmp ne %struct.ubi_device* %17, null
  br i1 %18, label %19, label %43

19:                                               ; preds = %11
  %20 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %21 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @MAJOR(i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %19
  %28 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %29 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @ubi_assert(i32 %32)
  %34 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %35 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %39 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %38, i32 0, i32 1
  %40 = call i32 @get_device(i32* %39)
  %41 = call i32 @spin_unlock(i32* @ubi_devices_lock)
  %42 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  store %struct.ubi_device* %42, %struct.ubi_device** %2, align 8
  br label %49

43:                                               ; preds = %19, %11
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %7

47:                                               ; preds = %7
  %48 = call i32 @spin_unlock(i32* @ubi_devices_lock)
  store %struct.ubi_device* null, %struct.ubi_device** %2, align 8
  br label %49

49:                                               ; preds = %47, %27
  %50 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  ret %struct.ubi_device* %50
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
