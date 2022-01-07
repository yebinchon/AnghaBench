; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port.c_mv88e6352_port_set_egress_floods.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port.c_mv88e6352_port_set_egress_floods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@MV88E6XXX_PORT_CTL0 = common dso_local global i32 0, align 4
@MV88E6352_PORT_CTL0_EGRESS_FLOODS_MASK = common dso_local global i32 0, align 4
@MV88E6352_PORT_CTL0_EGRESS_FLOODS_ALL_UNKNOWN_DA = common dso_local global i32 0, align 4
@MV88E6352_PORT_CTL0_EGRESS_FLOODS_NO_UNKNOWN_MC_DA = common dso_local global i32 0, align 4
@MV88E6352_PORT_CTL0_EGRESS_FLOODS_NO_UNKNOWN_UC_DA = common dso_local global i32 0, align 4
@MV88E6352_PORT_CTL0_EGRESS_FLOODS_NO_UNKNOWN_DA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6352_port_set_egress_floods(%struct.mv88e6xxx_chip* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mv88e6xxx_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @MV88E6XXX_PORT_CTL0, align 4
  %15 = call i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip* %12, i32 %13, i32 %14, i32* %11)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %5, align 4
  br label %60

20:                                               ; preds = %4
  %21 = load i32, i32* @MV88E6352_PORT_CTL0_EGRESS_FLOODS_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %11, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* @MV88E6352_PORT_CTL0_EGRESS_FLOODS_ALL_UNKNOWN_DA, align 4
  %32 = load i32, i32* %11, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %11, align 4
  br label %54

34:                                               ; preds = %27, %20
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* @MV88E6352_PORT_CTL0_EGRESS_FLOODS_NO_UNKNOWN_MC_DA, align 4
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %11, align 4
  br label %53

41:                                               ; preds = %34
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* @MV88E6352_PORT_CTL0_EGRESS_FLOODS_NO_UNKNOWN_UC_DA, align 4
  %46 = load i32, i32* %11, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %11, align 4
  br label %52

48:                                               ; preds = %41
  %49 = load i32, i32* @MV88E6352_PORT_CTL0_EGRESS_FLOODS_NO_UNKNOWN_DA, align 4
  %50 = load i32, i32* %11, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %48, %44
  br label %53

53:                                               ; preds = %52, %37
  br label %54

54:                                               ; preds = %53, %30
  %55 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @MV88E6XXX_PORT_CTL0, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @mv88e6xxx_port_write(%struct.mv88e6xxx_chip* %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %54, %18
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip*, i32, i32, i32*) #1

declare dso_local i32 @mv88e6xxx_port_write(%struct.mv88e6xxx_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
