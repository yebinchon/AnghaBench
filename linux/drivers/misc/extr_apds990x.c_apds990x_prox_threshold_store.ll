; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_prox_threshold_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_prox_threshold_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.apds990x_chip = type { i64, i32 }

@APDS_RANGE = common dso_local global i64 0, align 8
@APDS_PROX_HYSTERESIS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @apds990x_prox_threshold_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds990x_prox_threshold_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.apds990x_chip*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.apds990x_chip* @dev_get_drvdata(%struct.device* %13)
  store %struct.apds990x_chip* %14, %struct.apds990x_chip** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @kstrtoul(i8* %15, i32 0, i64* %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %49

21:                                               ; preds = %4
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* @APDS_RANGE, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %11, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @APDS_PROX_HYSTERESIS, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %25, %21
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %49

35:                                               ; preds = %28
  %36 = load %struct.apds990x_chip*, %struct.apds990x_chip** %10, align 8
  %37 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %36, i32 0, i32 1
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load i64, i64* %11, align 8
  %40 = load %struct.apds990x_chip*, %struct.apds990x_chip** %10, align 8
  %41 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.apds990x_chip*, %struct.apds990x_chip** %10, align 8
  %43 = call i32 @apds990x_force_p_refresh(%struct.apds990x_chip* %42)
  %44 = load %struct.apds990x_chip*, %struct.apds990x_chip** %10, align 8
  %45 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %44, i32 0, i32 1
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i64, i64* %9, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %35, %32, %19
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.apds990x_chip* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @apds990x_force_p_refresh(%struct.apds990x_chip*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
