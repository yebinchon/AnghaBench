; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_hwtstamp.c_mv88e6xxx_hwtstamp_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_hwtstamp.c_mv88e6xxx_hwtstamp_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptp_clock_info = type { i32 }
%struct.mv88e6xxx_chip = type { %struct.mv88e6xxx_port_hwtstamp*, %struct.dsa_switch* }
%struct.mv88e6xxx_port_hwtstamp = type { i32 }
%struct.dsa_switch = type { i32 }

@MV88E6XXX_HWTSTAMP_TX_IN_PROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mv88e6xxx_hwtstamp_work(%struct.ptp_clock_info* %0) #0 {
  %2 = alloca %struct.ptp_clock_info*, align 8
  %3 = alloca %struct.mv88e6xxx_chip*, align 8
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca %struct.mv88e6xxx_port_hwtstamp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ptp_clock_info* %0, %struct.ptp_clock_info** %2, align 8
  %8 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %2, align 8
  %9 = call %struct.mv88e6xxx_chip* @ptp_to_chip(%struct.ptp_clock_info* %8)
  store %struct.mv88e6xxx_chip* %9, %struct.mv88e6xxx_chip** %3, align 8
  %10 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %11 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %10, i32 0, i32 1
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %11, align 8
  store %struct.dsa_switch* %12, %struct.dsa_switch** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %47, %1
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %16 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %13
  %20 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @dsa_is_user_port(%struct.dsa_switch* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %47

25:                                               ; preds = %19
  %26 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %27 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %26, i32 0, i32 0
  %28 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %28, i64 %30
  store %struct.mv88e6xxx_port_hwtstamp* %31, %struct.mv88e6xxx_port_hwtstamp** %5, align 8
  %32 = load i32, i32* @MV88E6XXX_HWTSTAMP_TX_IN_PROGRESS, align 4
  %33 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %5, align 8
  %34 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %33, i32 0, i32 0
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %25
  %38 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %39 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %5, align 8
  %40 = call i32 @mv88e6xxx_txtstamp_work(%struct.mv88e6xxx_chip* %38, %struct.mv88e6xxx_port_hwtstamp* %39)
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %37, %25
  %44 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %45 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %5, align 8
  %46 = call i32 @mv88e6xxx_rxtstamp_work(%struct.mv88e6xxx_chip* %44, %struct.mv88e6xxx_port_hwtstamp* %45)
  br label %47

47:                                               ; preds = %43, %24
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %13

50:                                               ; preds = %13
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 -1
  %55 = sext i32 %54 to i64
  ret i64 %55
}

declare dso_local %struct.mv88e6xxx_chip* @ptp_to_chip(%struct.ptp_clock_info*) #1

declare dso_local i32 @dsa_is_user_port(%struct.dsa_switch*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mv88e6xxx_txtstamp_work(%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_port_hwtstamp*) #1

declare dso_local i32 @mv88e6xxx_rxtstamp_work(%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_port_hwtstamp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
