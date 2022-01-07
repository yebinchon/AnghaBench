; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_ptp.c_mv88e6352_tai_event_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_ptp.c_mv88e6352_tai_event_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.delayed_work = type { i32 }
%struct.mv88e6xxx_chip = type { i32, i32, i32, i32 }
%struct.ptp_clock_event = type { i32, i64, i32 }

@MV88E6XXX_TAI_EVENT_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to read TAI status register\0A\00", align 1
@MV88E6XXX_TAI_EVENT_STATUS_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"missed event capture\0A\00", align 1
@MV88E6XXX_TAI_EVENT_STATUS_VALID = common dso_local global i32 0, align 4
@PTP_CLOCK_EXTTS = common dso_local global i32 0, align 4
@TAI_EVENT_WORK_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @mv88e6352_tai_event_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv88e6352_tai_event_work(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.delayed_work*, align 8
  %4 = alloca %struct.mv88e6xxx_chip*, align 8
  %5 = alloca %struct.ptp_clock_event, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %9 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %10 = call %struct.delayed_work* @to_delayed_work(%struct.work_struct* %9)
  store %struct.delayed_work* %10, %struct.delayed_work** %3, align 8
  %11 = load %struct.delayed_work*, %struct.delayed_work** %3, align 8
  %12 = call %struct.mv88e6xxx_chip* @dw_tai_event_to_chip(%struct.delayed_work* %11)
  store %struct.mv88e6xxx_chip* %12, %struct.mv88e6xxx_chip** %4, align 8
  %13 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %14 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %13)
  %15 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %16 = load i32, i32* @MV88E6XXX_TAI_EVENT_STATUS, align 4
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %19 = call i32 @ARRAY_SIZE(i32* %18)
  %20 = call i32 @mv88e6xxx_tai_read(%struct.mv88e6xxx_chip* %15, i32 %16, i32* %17, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %22 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %21)
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %27 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %90

30:                                               ; preds = %1
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %32 = load i32, i32* %31, align 16
  %33 = load i32, i32* @MV88E6XXX_TAI_EVENT_STATUS_ERROR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %38 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_warn(i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %90

41:                                               ; preds = %30
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %43 = load i32, i32* %42, align 16
  %44 = load i32, i32* @MV88E6XXX_TAI_EVENT_STATUS_VALID, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  br label %85

48:                                               ; preds = %41
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %50 = load i32, i32* %49, align 8
  %51 = shl i32 %50, 16
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %51, %53
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @MV88E6XXX_TAI_EVENT_STATUS_VALID, align 4
  %56 = xor i32 %55, -1
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %58 = load i32, i32* %57, align 16
  %59 = and i32 %58, %56
  store i32 %59, i32* %57, align 16
  %60 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %61 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %60)
  %62 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %63 = load i32, i32* @MV88E6XXX_TAI_EVENT_STATUS, align 4
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %65 = load i32, i32* %64, align 16
  %66 = call i32 @mv88e6xxx_tai_write(%struct.mv88e6xxx_chip* %62, i32 %63, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %68 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %67)
  %69 = load i32, i32* @PTP_CLOCK_EXTTS, align 4
  %70 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %5, i32 0, i32 2
  store i32 %69, i32* %70, align 8
  %71 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %5, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %73 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %72)
  %74 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %75 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %74, i32 0, i32 2
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @timecounter_cyc2time(i32* %75, i32 %76)
  %78 = getelementptr inbounds %struct.ptp_clock_event, %struct.ptp_clock_event* %5, i32 0, i32 0
  store i32 %77, i32* %78, align 8
  %79 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %80 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %79)
  %81 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %82 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ptp_clock_event(i32 %83, %struct.ptp_clock_event* %5)
  br label %85

85:                                               ; preds = %48, %47
  %86 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %87 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %86, i32 0, i32 0
  %88 = load i32, i32* @TAI_EVENT_WORK_INTERVAL, align 4
  %89 = call i32 @schedule_delayed_work(i32* %87, i32 %88)
  br label %90

90:                                               ; preds = %85, %36, %25
  ret void
}

declare dso_local %struct.delayed_work* @to_delayed_work(%struct.work_struct*) #1

declare dso_local %struct.mv88e6xxx_chip* @dw_tai_event_to_chip(%struct.delayed_work*) #1

declare dso_local i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_tai_read(%struct.mv88e6xxx_chip*, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @mv88e6xxx_tai_write(%struct.mv88e6xxx_chip*, i32, i32) #1

declare dso_local i32 @timecounter_cyc2time(i32*, i32) #1

declare dso_local i32 @ptp_clock_event(i32, %struct.ptp_clock_event*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
