; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_ptp.c_mv88e6352_ptp_enable_extts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_ptp.c_mv88e6352_ptp_enable_extts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32, i32 }
%struct.ptp_clock_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@PTP_RISING_EDGE = common dso_local global i32 0, align 4
@PTP_PF_EXTTS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MV88E6352_G2_SCRATCH_GPIO_PCTL_EVREQ = common dso_local global i32 0, align 4
@TAI_EVENT_WORK_INTERVAL = common dso_local global i32 0, align 4
@PTP_CLOCK_EXTTS = common dso_local global i32 0, align 4
@MV88E6352_G2_SCRATCH_GPIO_PCTL_GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, %struct.ptp_clock_request*, i32)* @mv88e6352_ptp_enable_extts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6352_ptp_enable_extts(%struct.mv88e6xxx_chip* %0, %struct.ptp_clock_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv88e6xxx_chip*, align 8
  %6 = alloca %struct.ptp_clock_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %5, align 8
  store %struct.ptp_clock_request* %1, %struct.ptp_clock_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ptp_clock_request*, %struct.ptp_clock_request** %6, align 8
  %13 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PTP_RISING_EDGE, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %19 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PTP_PF_EXTTS, align 4
  %22 = load %struct.ptp_clock_request*, %struct.ptp_clock_request** %6, align 8
  %23 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ptp_find_pin(i32 %20, i32 %21, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %69

32:                                               ; preds = %3
  %33 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %34 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %33)
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %32
  %38 = load i32, i32* @MV88E6352_G2_SCRATCH_GPIO_PCTL_EVREQ, align 4
  store i32 %38, i32* %9, align 4
  %39 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @mv88e6352_set_gpio_func(%struct.mv88e6xxx_chip* %39, i32 %40, i32 %41, i32 1)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %65

46:                                               ; preds = %37
  %47 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %48 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %47, i32 0, i32 0
  %49 = load i32, i32* @TAI_EVENT_WORK_INTERVAL, align 4
  %50 = call i32 @schedule_delayed_work(i32* %48, i32 %49)
  %51 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %52 = load i32, i32* @PTP_CLOCK_EXTTS, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @mv88e6352_config_eventcap(%struct.mv88e6xxx_chip* %51, i32 %52, i32 %53)
  store i32 %54, i32* %11, align 4
  br label %64

55:                                               ; preds = %32
  %56 = load i32, i32* @MV88E6352_G2_SCRATCH_GPIO_PCTL_GPIO, align 4
  store i32 %56, i32* %9, align 4
  %57 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @mv88e6352_set_gpio_func(%struct.mv88e6xxx_chip* %57, i32 %58, i32 %59, i32 1)
  store i32 %60, i32* %11, align 4
  %61 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %62 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %61, i32 0, i32 0
  %63 = call i32 @cancel_delayed_work_sync(i32* %62)
  br label %64

64:                                               ; preds = %55, %46
  br label %65

65:                                               ; preds = %64, %45
  %66 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %67 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %66)
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %29
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @ptp_find_pin(i32, i32, i32) #1

declare dso_local i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6352_set_gpio_func(%struct.mv88e6xxx_chip*, i32, i32, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @mv88e6352_config_eventcap(%struct.mv88e6xxx_chip*, i32, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
