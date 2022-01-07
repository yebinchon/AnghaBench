; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_gpio-ir-tx.c_gpio_ir_tx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_gpio-ir-tx.c_gpio_ir_tx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.gpio_ir = type { i32, i32, i32, i32 }
%struct.rc_dev = type { i32, i32, i32, i32, i32, %struct.gpio_ir* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RC_DRIVER_IR_RAW_TX = common dso_local global i32 0, align 4
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to get gpio (%ld)\0A\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@DEVICE_NAME = common dso_local global i32 0, align 4
@gpio_ir_tx = common dso_local global i32 0, align 4
@gpio_ir_tx_set_duty_cycle = common dso_local global i32 0, align 4
@gpio_ir_tx_set_carrier = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to register rc device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpio_ir_tx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_ir_tx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.gpio_ir*, align 8
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.gpio_ir* @devm_kmalloc(i32* %8, i32 16, i32 %9)
  store %struct.gpio_ir* %10, %struct.gpio_ir** %4, align 8
  %11 = load %struct.gpio_ir*, %struct.gpio_ir** %4, align 8
  %12 = icmp ne %struct.gpio_ir* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %97

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* @RC_DRIVER_IR_RAW_TX, align 4
  %20 = call %struct.rc_dev* @devm_rc_allocate_device(i32* %18, i32 %19)
  store %struct.rc_dev* %20, %struct.rc_dev** %5, align 8
  %21 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %22 = icmp ne %struct.rc_dev* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %97

26:                                               ; preds = %16
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %30 = call i32 @devm_gpiod_get(i32* %28, i32* null, i32 %29)
  %31 = load %struct.gpio_ir*, %struct.gpio_ir** %4, align 8
  %32 = getelementptr inbounds %struct.gpio_ir, %struct.gpio_ir* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.gpio_ir*, %struct.gpio_ir** %4, align 8
  %34 = getelementptr inbounds %struct.gpio_ir, %struct.gpio_ir* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %26
  %39 = load %struct.gpio_ir*, %struct.gpio_ir** %4, align 8
  %40 = getelementptr inbounds %struct.gpio_ir, %struct.gpio_ir* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @PTR_ERR(i32 %41)
  %43 = load i32, i32* @EPROBE_DEFER, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.gpio_ir*, %struct.gpio_ir** %4, align 8
  %50 = getelementptr inbounds %struct.gpio_ir, %struct.gpio_ir* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @PTR_ERR(i32 %51)
  %53 = call i32 (i32*, i8*, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %46, %38
  %55 = load %struct.gpio_ir*, %struct.gpio_ir** %4, align 8
  %56 = getelementptr inbounds %struct.gpio_ir, %struct.gpio_ir* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @PTR_ERR(i32 %57)
  store i32 %58, i32* %2, align 4
  br label %97

59:                                               ; preds = %26
  %60 = load %struct.gpio_ir*, %struct.gpio_ir** %4, align 8
  %61 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %62 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %61, i32 0, i32 5
  store %struct.gpio_ir* %60, %struct.gpio_ir** %62, align 8
  %63 = load i32, i32* @DRIVER_NAME, align 4
  %64 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %65 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @DEVICE_NAME, align 4
  %67 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %68 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @gpio_ir_tx, align 4
  %70 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %71 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @gpio_ir_tx_set_duty_cycle, align 4
  %73 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %74 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @gpio_ir_tx_set_carrier, align 4
  %76 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %77 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.gpio_ir*, %struct.gpio_ir** %4, align 8
  %79 = getelementptr inbounds %struct.gpio_ir, %struct.gpio_ir* %78, i32 0, i32 0
  store i32 38000, i32* %79, align 4
  %80 = load %struct.gpio_ir*, %struct.gpio_ir** %4, align 8
  %81 = getelementptr inbounds %struct.gpio_ir, %struct.gpio_ir* %80, i32 0, i32 1
  store i32 50, i32* %81, align 4
  %82 = load %struct.gpio_ir*, %struct.gpio_ir** %4, align 8
  %83 = getelementptr inbounds %struct.gpio_ir, %struct.gpio_ir* %82, i32 0, i32 2
  %84 = call i32 @spin_lock_init(i32* %83)
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %88 = call i32 @devm_rc_register_device(i32* %86, %struct.rc_dev* %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %59
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 (i32*, i8*, ...) @dev_err(i32* %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %91, %59
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %54, %23, %13
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.gpio_ir* @devm_kmalloc(i32*, i32, i32) #1

declare dso_local %struct.rc_dev* @devm_rc_allocate_device(i32*, i32) #1

declare dso_local i32 @devm_gpiod_get(i32*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @devm_rc_register_device(i32*, %struct.rc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
