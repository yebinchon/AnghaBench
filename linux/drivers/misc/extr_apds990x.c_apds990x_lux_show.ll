; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_lux_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_lux_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.apds990x_chip = type { i32, i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@APDS_TIMEOUT = common dso_local global i32 0, align 4
@APDS_CALIB_SCALER = common dso_local global i32 0, align 4
@APDS_RANGE = common dso_local global i32 0, align 4
@APDS990X_LUX_OUTPUT_SCALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @apds990x_lux_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds990x_lux_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.apds990x_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.apds990x_chip* @dev_get_drvdata(%struct.device* %12)
  store %struct.apds990x_chip* %13, %struct.apds990x_chip** %8, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call i64 @pm_runtime_suspended(%struct.device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %73

20:                                               ; preds = %3
  %21 = load %struct.apds990x_chip*, %struct.apds990x_chip** %8, align 8
  %22 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.apds990x_chip*, %struct.apds990x_chip** %8, align 8
  %25 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* @APDS_TIMEOUT, align 4
  %31 = call i32 @msecs_to_jiffies(i32 %30)
  %32 = call i64 @wait_event_interruptible_timeout(i32 %23, i32 %29, i32 %31)
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %20
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %73

38:                                               ; preds = %20
  %39 = load %struct.apds990x_chip*, %struct.apds990x_chip** %8, align 8
  %40 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %39, i32 0, i32 2
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.apds990x_chip*, %struct.apds990x_chip** %8, align 8
  %43 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.apds990x_chip*, %struct.apds990x_chip** %8, align 8
  %46 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %44, %47
  %49 = load i32, i32* @APDS_CALIB_SCALER, align 4
  %50 = sdiv i32 %48, %49
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @APDS_RANGE, align 4
  %53 = load i32, i32* @APDS990X_LUX_OUTPUT_SCALE, align 4
  %54 = mul nsw i32 %52, %53
  %55 = icmp sgt i32 %51, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %38
  %57 = load i32, i32* @APDS_RANGE, align 4
  %58 = load i32, i32* @APDS990X_LUX_OUTPUT_SCALE, align 4
  %59 = mul nsw i32 %57, %58
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %56, %38
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @APDS990X_LUX_OUTPUT_SCALE, align 4
  %64 = sdiv i32 %62, %63
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @APDS990X_LUX_OUTPUT_SCALE, align 4
  %67 = srem i32 %65, %66
  %68 = call i32 @sprintf(i8* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load %struct.apds990x_chip*, %struct.apds990x_chip** %8, align 8
  %70 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %69, i32 0, i32 2
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %60, %35, %17
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.apds990x_chip* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @pm_runtime_suspended(%struct.device*) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
