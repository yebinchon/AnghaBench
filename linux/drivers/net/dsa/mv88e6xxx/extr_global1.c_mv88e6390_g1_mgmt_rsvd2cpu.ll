; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1.c_mv88e6390_g1_mgmt_rsvd2cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1.c_mv88e6390_g1_mgmt_rsvd2cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@MV88E6390_G1_MONITOR_MGMT_CTL_PTR_0180C200000XLO = common dso_local global i32 0, align 4
@MV88E6390_G1_MONITOR_MGMT_CTL_PTR_0180C200000XHI = common dso_local global i32 0, align 4
@MV88E6390_G1_MONITOR_MGMT_CTL_PTR_0180C200002XLO = common dso_local global i32 0, align 4
@MV88E6390_G1_MONITOR_MGMT_CTL_PTR_0180C200002XHI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6390_g1_mgmt_rsvd2cpu(%struct.mv88e6xxx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mv88e6xxx_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %3, align 8
  %6 = load i32, i32* @MV88E6390_G1_MONITOR_MGMT_CTL_PTR_0180C200000XLO, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @mv88e6390_g1_monitor_write(%struct.mv88e6xxx_chip* %7, i32 %8, i32 255)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %42

14:                                               ; preds = %1
  %15 = load i32, i32* @MV88E6390_G1_MONITOR_MGMT_CTL_PTR_0180C200000XHI, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @mv88e6390_g1_monitor_write(%struct.mv88e6xxx_chip* %16, i32 %17, i32 255)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %42

23:                                               ; preds = %14
  %24 = load i32, i32* @MV88E6390_G1_MONITOR_MGMT_CTL_PTR_0180C200002XLO, align 4
  store i32 %24, i32* %4, align 4
  %25 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @mv88e6390_g1_monitor_write(%struct.mv88e6xxx_chip* %25, i32 %26, i32 255)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %42

32:                                               ; preds = %23
  %33 = load i32, i32* @MV88E6390_G1_MONITOR_MGMT_CTL_PTR_0180C200002XHI, align 4
  store i32 %33, i32* %4, align 4
  %34 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @mv88e6390_g1_monitor_write(%struct.mv88e6xxx_chip* %34, i32 %35, i32 255)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %39, %30, %21, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @mv88e6390_g1_monitor_write(%struct.mv88e6xxx_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
