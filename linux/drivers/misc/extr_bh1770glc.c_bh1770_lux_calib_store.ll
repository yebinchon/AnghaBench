; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_bh1770glc.c_bh1770_lux_calib_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_bh1770glc.c_bh1770_lux_calib_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.bh1770_chip = type { i64, i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @bh1770_lux_calib_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bh1770_lux_calib_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bh1770_chip*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.bh1770_chip* @dev_get_drvdata(%struct.device* %15)
  store %struct.bh1770_chip* %16, %struct.bh1770_chip** %10, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @kstrtoul(i8* %17, i32 0, i64* %11)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %5, align 4
  br label %63

23:                                               ; preds = %4
  %24 = load %struct.bh1770_chip*, %struct.bh1770_chip** %10, align 8
  %25 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.bh1770_chip*, %struct.bh1770_chip** %10, align 8
  %28 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load %struct.bh1770_chip*, %struct.bh1770_chip** %10, align 8
  %32 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.bh1770_chip*, %struct.bh1770_chip** %10, align 8
  %34 = call i64 @bh1770_get_corr_value(%struct.bh1770_chip* %33)
  store i64 %34, i64* %13, align 8
  %35 = load i64, i64* %13, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %23
  %38 = load i64, i64* %12, align 8
  %39 = load %struct.bh1770_chip*, %struct.bh1770_chip** %10, align 8
  %40 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.bh1770_chip*, %struct.bh1770_chip** %10, align 8
  %42 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %63

46:                                               ; preds = %23
  %47 = load i64, i64* %13, align 8
  %48 = load %struct.bh1770_chip*, %struct.bh1770_chip** %10, align 8
  %49 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %48, i32 0, i32 4
  store i64 %47, i64* %49, align 8
  %50 = load %struct.bh1770_chip*, %struct.bh1770_chip** %10, align 8
  %51 = load %struct.bh1770_chip*, %struct.bh1770_chip** %10, align 8
  %52 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.bh1770_chip*, %struct.bh1770_chip** %10, align 8
  %55 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @bh1770_lux_update_thresholds(%struct.bh1770_chip* %50, i32 %53, i32 %56)
  %58 = load %struct.bh1770_chip*, %struct.bh1770_chip** %10, align 8
  %59 = getelementptr inbounds %struct.bh1770_chip, %struct.bh1770_chip* %58, i32 0, i32 1
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i64, i64* %9, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %46, %37, %21
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.bh1770_chip* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @bh1770_get_corr_value(%struct.bh1770_chip*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bh1770_lux_update_thresholds(%struct.bh1770_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
