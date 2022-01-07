; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_ptp.c_mv88e6352_config_eventcap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_ptp.c_mv88e6352_config_eventcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32, i32 }

@MV88E6XXX_TAI_CFG_CAP_OVERWRITE = common dso_local global i32 0, align 4
@MV88E6XXX_TAI_CFG_CAP_CTR_START = common dso_local global i32 0, align 4
@MV88E6XXX_TAI_CFG_EVREQ_FALLING = common dso_local global i32 0, align 4
@MV88E6XXX_TAI_CFG = common dso_local global i32 0, align 4
@PTP_CLOCK_PPS = common dso_local global i32 0, align 4
@MV88E6XXX_TAI_EVENT_STATUS_CAP_TRIG = common dso_local global i32 0, align 4
@PTP_CLOCK_EXTTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MV88E6XXX_TAI_EVENT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, i32, i32)* @mv88e6352_config_eventcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6352_config_eventcap(%struct.mv88e6xxx_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv88e6xxx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @MV88E6XXX_TAI_CFG_CAP_OVERWRITE, align 4
  %12 = load i32, i32* @MV88E6XXX_TAI_CFG_CAP_CTR_START, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %15 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @MV88E6XXX_TAI_CFG_EVREQ_FALLING, align 4
  %20 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %21 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %18, %3
  %25 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %26 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %29 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %27, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %33 = load i32, i32* @MV88E6XXX_TAI_CFG, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @mv88e6xxx_tai_write(%struct.mv88e6xxx_chip* %32, i32 %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %61

40:                                               ; preds = %24
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @PTP_CLOCK_PPS, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @MV88E6XXX_TAI_EVENT_STATUS_CAP_TRIG, align 4
  store i32 %45, i32* %9, align 4
  br label %55

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @PTP_CLOCK_EXTTS, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %9, align 4
  br label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %61

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54, %44
  %56 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %57 = load i32, i32* @MV88E6XXX_TAI_EVENT_STATUS, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @mv88e6xxx_tai_write(%struct.mv88e6xxx_chip* %56, i32 %57, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %55, %51, %38
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @mv88e6xxx_tai_write(%struct.mv88e6xxx_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
