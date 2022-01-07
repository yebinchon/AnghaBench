; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_ptp.c_mv88e6xxx_ptp_overflow_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_ptp.c_mv88e6xxx_ptp_overflow_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.delayed_work = type { i32 }
%struct.mv88e6xxx_chip = type { i32, i32 }
%struct.timespec64 = type { i32 }

@MV88E6XXX_TAI_OVERFLOW_PERIOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @mv88e6xxx_ptp_overflow_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv88e6xxx_ptp_overflow_check(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.delayed_work*, align 8
  %4 = alloca %struct.mv88e6xxx_chip*, align 8
  %5 = alloca %struct.timespec64, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %6 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %7 = call %struct.delayed_work* @to_delayed_work(%struct.work_struct* %6)
  store %struct.delayed_work* %7, %struct.delayed_work** %3, align 8
  %8 = load %struct.delayed_work*, %struct.delayed_work** %3, align 8
  %9 = call %struct.mv88e6xxx_chip* @dw_overflow_to_chip(%struct.delayed_work* %8)
  store %struct.mv88e6xxx_chip* %9, %struct.mv88e6xxx_chip** %4, align 8
  %10 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %11 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %10, i32 0, i32 1
  %12 = call i32 @mv88e6xxx_ptp_gettime(i32* %11, %struct.timespec64* %5)
  %13 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %14 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %13, i32 0, i32 0
  %15 = load i32, i32* @MV88E6XXX_TAI_OVERFLOW_PERIOD, align 4
  %16 = call i32 @schedule_delayed_work(i32* %14, i32 %15)
  ret void
}

declare dso_local %struct.delayed_work* @to_delayed_work(%struct.work_struct*) #1

declare dso_local %struct.mv88e6xxx_chip* @dw_overflow_to_chip(%struct.delayed_work*) #1

declare dso_local i32 @mv88e6xxx_ptp_gettime(i32*, %struct.timespec64*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
