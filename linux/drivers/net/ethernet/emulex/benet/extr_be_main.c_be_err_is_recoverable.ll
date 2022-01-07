; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_err_is_recoverable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_err_is_recoverable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_2__*, %struct.be_error_recovery }
%struct.TYPE_2__ = type { i32 }
%struct.be_error_recovery = type { i32, i64, i64 }

@ERR_RECOVERY_IDLE_TIME = common dso_local global i32 0, align 4
@ERR_RECOVERY_INTERVAL = common dso_local global i32 0, align 4
@POST_STAGE_RECOVERABLE_ERR = common dso_local global i32 0, align 4
@POST_ERR_RECOVERY_CODE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Recoverable HW error code: 0x%x\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Cannot recover within %lu sec from driver load\0A\00", align 1
@MSEC_PER_SEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Cannot recover within %lu sec from last recovery\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Cannot recover from a consecutive TPE error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @be_err_is_recoverable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_err_is_recoverable(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_error_recovery*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %9 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %9, i32 0, i32 1
  store %struct.be_error_recovery* %10, %struct.be_error_recovery** %4, align 8
  %11 = load i32, i32* @ERR_RECOVERY_IDLE_TIME, align 4
  %12 = call i64 @msecs_to_jiffies(i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i32, i32* @ERR_RECOVERY_INTERVAL, align 4
  %14 = call i64 @msecs_to_jiffies(i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %16 = call i32 @be_POST_stage_get(%struct.be_adapter* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @POST_STAGE_RECOVERABLE_ERR, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @POST_STAGE_RECOVERABLE_ERR, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %98

23:                                               ; preds = %1
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @POST_ERR_RECOVERY_CODE_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %98

30:                                               ; preds = %23
  %31 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i32*, i8*, ...) @dev_err(i32* %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i64, i64* @jiffies, align 8
  %38 = load %struct.be_error_recovery*, %struct.be_error_recovery** %4, align 8
  %39 = getelementptr inbounds %struct.be_error_recovery, %struct.be_error_recovery* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  %42 = load i64, i64* %5, align 8
  %43 = call i64 @time_before_eq(i64 %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %30
  %46 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @jiffies_to_msecs(i64 %50)
  %52 = load i32, i32* @MSEC_PER_SEC, align 4
  %53 = sdiv i32 %51, %52
  %54 = call i32 (i32*, i8*, ...) @dev_err(i32* %49, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  store i32 0, i32* %2, align 4
  br label %98

55:                                               ; preds = %30
  %56 = load %struct.be_error_recovery*, %struct.be_error_recovery** %4, align 8
  %57 = getelementptr inbounds %struct.be_error_recovery, %struct.be_error_recovery* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %55
  %61 = load i64, i64* @jiffies, align 8
  %62 = load %struct.be_error_recovery*, %struct.be_error_recovery** %4, align 8
  %63 = getelementptr inbounds %struct.be_error_recovery, %struct.be_error_recovery* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  %66 = load i64, i64* %6, align 8
  %67 = call i64 @time_before_eq(i64 %65, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %60
  %70 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @jiffies_to_msecs(i64 %74)
  %76 = load i32, i32* @MSEC_PER_SEC, align 4
  %77 = sdiv i32 %75, %76
  %78 = call i32 (i32*, i8*, ...) @dev_err(i32* %73, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  store i32 0, i32* %2, align 4
  br label %98

79:                                               ; preds = %60, %55
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.be_error_recovery*, %struct.be_error_recovery** %4, align 8
  %82 = getelementptr inbounds %struct.be_error_recovery, %struct.be_error_recovery* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %87 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = call i32 (i32*, i8*, ...) @dev_err(i32* %89, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %98

91:                                               ; preds = %79
  %92 = load i64, i64* @jiffies, align 8
  %93 = load %struct.be_error_recovery*, %struct.be_error_recovery** %4, align 8
  %94 = getelementptr inbounds %struct.be_error_recovery, %struct.be_error_recovery* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.be_error_recovery*, %struct.be_error_recovery** %4, align 8
  %97 = getelementptr inbounds %struct.be_error_recovery, %struct.be_error_recovery* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  store i32 1, i32* %2, align 4
  br label %98

98:                                               ; preds = %91, %85, %69, %45, %29, %22
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @be_POST_stage_get(%struct.be_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @time_before_eq(i64, i64) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
