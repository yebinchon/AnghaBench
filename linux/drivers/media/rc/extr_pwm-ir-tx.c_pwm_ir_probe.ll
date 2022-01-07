; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_pwm-ir-tx.c_pwm_ir_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_pwm-ir-tx.c_pwm_ir_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.pwm_ir = type { i32, i32, i32 }
%struct.rc_dev = type { i32, i32, i32, i32, i32, %struct.pwm_ir* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RC_DRIVER_IR_RAW_TX = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@DEVICE_NAME = common dso_local global i32 0, align 4
@pwm_ir_tx = common dso_local global i32 0, align 4
@pwm_ir_set_duty_cycle = common dso_local global i32 0, align 4
@pwm_ir_set_carrier = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to register rc device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pwm_ir_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_ir_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pwm_ir*, align 8
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.pwm_ir* @devm_kmalloc(i32* %8, i32 12, i32 %9)
  store %struct.pwm_ir* %10, %struct.pwm_ir** %4, align 8
  %11 = load %struct.pwm_ir*, %struct.pwm_ir** %4, align 8
  %12 = icmp ne %struct.pwm_ir* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %77

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @devm_pwm_get(i32* %18, i32* null)
  %20 = load %struct.pwm_ir*, %struct.pwm_ir** %4, align 8
  %21 = getelementptr inbounds %struct.pwm_ir, %struct.pwm_ir* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.pwm_ir*, %struct.pwm_ir** %4, align 8
  %23 = getelementptr inbounds %struct.pwm_ir, %struct.pwm_ir* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @IS_ERR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = load %struct.pwm_ir*, %struct.pwm_ir** %4, align 8
  %29 = getelementptr inbounds %struct.pwm_ir, %struct.pwm_ir* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PTR_ERR(i32 %30)
  store i32 %31, i32* %2, align 4
  br label %77

32:                                               ; preds = %16
  %33 = load %struct.pwm_ir*, %struct.pwm_ir** %4, align 8
  %34 = getelementptr inbounds %struct.pwm_ir, %struct.pwm_ir* %33, i32 0, i32 0
  store i32 38000, i32* %34, align 4
  %35 = load %struct.pwm_ir*, %struct.pwm_ir** %4, align 8
  %36 = getelementptr inbounds %struct.pwm_ir, %struct.pwm_ir* %35, i32 0, i32 1
  store i32 50, i32* %36, align 4
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load i32, i32* @RC_DRIVER_IR_RAW_TX, align 4
  %40 = call %struct.rc_dev* @devm_rc_allocate_device(i32* %38, i32 %39)
  store %struct.rc_dev* %40, %struct.rc_dev** %5, align 8
  %41 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %42 = icmp ne %struct.rc_dev* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %77

46:                                               ; preds = %32
  %47 = load %struct.pwm_ir*, %struct.pwm_ir** %4, align 8
  %48 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %49 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %48, i32 0, i32 5
  store %struct.pwm_ir* %47, %struct.pwm_ir** %49, align 8
  %50 = load i32, i32* @DRIVER_NAME, align 4
  %51 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %52 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @DEVICE_NAME, align 4
  %54 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %55 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @pwm_ir_tx, align 4
  %57 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %58 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @pwm_ir_set_duty_cycle, align 4
  %60 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %61 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @pwm_ir_set_carrier, align 4
  %63 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %64 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %68 = call i32 @devm_rc_register_device(i32* %66, %struct.rc_dev* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %46
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %46
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %75, %43, %27, %13
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.pwm_ir* @devm_kmalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_pwm_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.rc_dev* @devm_rc_allocate_device(i32*, i32) #1

declare dso_local i32 @devm_rc_register_device(i32*, %struct.rc_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
