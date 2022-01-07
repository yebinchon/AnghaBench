; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-rx51.c_ir_rx51_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-rx51.c_ir_rx51_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.rc_dev*, i32*, %struct.TYPE_4__, i32 }
%struct.rc_dev = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.pwm_device = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"pwm_get failed: %d\0A\00", align 1
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@ir_rx51 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@ir_rx51_timer_cb = common dso_local global i32 0, align 4
@RC_DRIVER_IR_RAW_TX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ir_rx51_open = common dso_local global i32 0, align 4
@ir_rx51_release = common dso_local global i32 0, align 4
@ir_rx51_tx = common dso_local global i32 0, align 4
@ir_rx51_set_duty_cycle = common dso_local global i32 0, align 4
@ir_rx51_set_tx_carrier = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ir_rx51_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_rx51_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pwm_device*, align 8
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.pwm_device* @pwm_get(i32* %8, i32* null)
  store %struct.pwm_device* %9, %struct.pwm_device** %4, align 8
  %10 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %11 = call i64 @IS_ERR(%struct.pwm_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %15 = call i32 @PTR_ERR(%struct.pwm_device* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @EPROBE_DEFER, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %20, %13
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %75

27:                                               ; preds = %1
  %28 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %29 = call i32 @pwm_get_period(%struct.pwm_device* %28)
  %30 = load i32, i32* @NSEC_PER_SEC, align 4
  %31 = call i32 @DIV_ROUND_CLOSEST(i32 %29, i32 %30)
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ir_rx51, i32 0, i32 3), align 4
  %32 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %33 = call i32 @pwm_put(%struct.pwm_device* %32)
  %34 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %35 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %36 = call i32 @hrtimer_init(%struct.TYPE_4__* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ir_rx51, i32 0, i32 2), i32 %34, i32 %35)
  %37 = load i32, i32* @ir_rx51_timer_cb, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ir_rx51, i32 0, i32 2, i32 0), align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  store i32* %39, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ir_rx51, i32 0, i32 1), align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load i32, i32* @RC_DRIVER_IR_RAW_TX, align 4
  %43 = call %struct.rc_dev* @devm_rc_allocate_device(i32* %41, i32 %42)
  store %struct.rc_dev* %43, %struct.rc_dev** %5, align 8
  %44 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %45 = icmp ne %struct.rc_dev* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %27
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %75

49:                                               ; preds = %27
  %50 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %51 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %50, i32 0, i32 6
  store %struct.TYPE_3__* @ir_rx51, %struct.TYPE_3__** %51, align 8
  %52 = load i32, i32* @ir_rx51_open, align 4
  %53 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %54 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @ir_rx51_release, align 4
  %56 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %57 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @ir_rx51_tx, align 4
  %59 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %60 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @ir_rx51_set_duty_cycle, align 4
  %62 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %63 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @ir_rx51_set_tx_carrier, align 4
  %65 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %66 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @KBUILD_MODNAME, align 4
  %68 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %69 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  store %struct.rc_dev* %70, %struct.rc_dev** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ir_rx51, i32 0, i32 0), align 8
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load %struct.rc_dev*, %struct.rc_dev** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ir_rx51, i32 0, i32 0), align 8
  %74 = call i32 @devm_rc_register_device(i32* %72, %struct.rc_dev* %73)
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %49, %46, %25
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.pwm_device* @pwm_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.pwm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.pwm_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @pwm_get_period(%struct.pwm_device*) #1

declare dso_local i32 @pwm_put(%struct.pwm_device*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_4__*, i32, i32) #1

declare dso_local %struct.rc_dev* @devm_rc_allocate_device(i32*, i32) #1

declare dso_local i32 @devm_rc_register_device(i32*, %struct.rc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
