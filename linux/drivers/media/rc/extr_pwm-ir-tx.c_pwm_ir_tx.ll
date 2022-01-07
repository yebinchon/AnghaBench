; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_pwm-ir-tx.c_pwm_ir_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_pwm-ir-tx.c_pwm_ir_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.pwm_ir* }
%struct.pwm_ir = type { i32, i32, %struct.pwm_device* }
%struct.pwm_device = type { i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32*, i32)* @pwm_ir_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_ir_tx(%struct.rc_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pwm_ir*, align 8
  %8 = alloca %struct.pwm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %15 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %14, i32 0, i32 0
  %16 = load %struct.pwm_ir*, %struct.pwm_ir** %15, align 8
  store %struct.pwm_ir* %16, %struct.pwm_ir** %7, align 8
  %17 = load %struct.pwm_ir*, %struct.pwm_ir** %7, align 8
  %18 = getelementptr inbounds %struct.pwm_ir, %struct.pwm_ir* %17, i32 0, i32 2
  %19 = load %struct.pwm_device*, %struct.pwm_device** %18, align 8
  store %struct.pwm_device* %19, %struct.pwm_device** %8, align 8
  %20 = load i32, i32* @NSEC_PER_SEC, align 4
  %21 = load %struct.pwm_ir*, %struct.pwm_ir** %7, align 8
  %22 = getelementptr inbounds %struct.pwm_ir, %struct.pwm_ir* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @DIV_ROUND_CLOSEST(i32 %20, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.pwm_ir*, %struct.pwm_ir** %7, align 8
  %26 = getelementptr inbounds %struct.pwm_ir, %struct.pwm_ir* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %11, align 4
  %29 = mul nsw i32 %27, %28
  %30 = call i32 @DIV_ROUND_CLOSEST(i32 %29, i32 100)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.pwm_device*, %struct.pwm_device** %8, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @pwm_config(%struct.pwm_device* %31, i32 %32, i32 %33)
  %35 = call i32 (...) @ktime_get()
  store i32 %35, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %69, %3
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %72

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = srem i32 %41, 2
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.pwm_device*, %struct.pwm_device** %8, align 8
  %46 = call i32 @pwm_disable(%struct.pwm_device* %45)
  br label %50

47:                                               ; preds = %40
  %48 = load %struct.pwm_device*, %struct.pwm_device** %8, align 8
  %49 = call i32 @pwm_enable(%struct.pwm_device* %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %12, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ktime_add_us(i32 %51, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 (...) @ktime_get()
  %60 = call i64 @ktime_us_delta(i32 %58, i32 %59)
  store i64 %60, i64* %13, align 8
  %61 = load i64, i64* %13, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %50
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* %13, align 8
  %66 = add nsw i64 %65, 10
  %67 = call i32 @usleep_range(i64 %64, i64 %66)
  br label %68

68:                                               ; preds = %63, %50
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %36

72:                                               ; preds = %36
  %73 = load %struct.pwm_device*, %struct.pwm_device** %8, align 8
  %74 = call i32 @pwm_disable(%struct.pwm_device* %73)
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @pwm_config(%struct.pwm_device*, i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @pwm_disable(%struct.pwm_device*) #1

declare dso_local i32 @pwm_enable(%struct.pwm_device*) #1

declare dso_local i32 @ktime_add_us(i32, i32) #1

declare dso_local i64 @ktime_us_delta(i32, i32) #1

declare dso_local i32 @usleep_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
