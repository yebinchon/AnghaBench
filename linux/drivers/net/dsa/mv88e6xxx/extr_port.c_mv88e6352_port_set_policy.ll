; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port.c_mv88e6352_port_set_policy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port.c_mv88e6352_port_set_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@MV88E6XXX_PORT_POLICY_CTL_DA_MASK = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_POLICY_CTL_SA_MASK = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_POLICY_CTL_VTU_MASK = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_POLICY_CTL_ETYPE_MASK = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_POLICY_CTL_PPPOE_MASK = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_POLICY_CTL_VBAS_MASK = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_POLICY_CTL_OPT82_MASK = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_POLICY_CTL_UDP_MASK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_POLICY_CTL_NORMAL = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_POLICY_CTL_MIRROR = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_POLICY_CTL_TRAP = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_POLICY_CTL_DISCARD = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_POLICY_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6352_port_set_policy(%struct.mv88e6xxx_chip* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mv88e6xxx_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %48 [
    i32 135, label %16
    i32 131, label %20
    i32 128, label %24
    i32 134, label %28
    i32 132, label %32
    i32 129, label %36
    i32 133, label %40
    i32 130, label %44
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* @MV88E6XXX_PORT_POLICY_CTL_DA_MASK, align 4
  %18 = call i32 @__bf_shf(i32 %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* @MV88E6XXX_PORT_POLICY_CTL_DA_MASK, align 4
  store i32 %19, i32* %11, align 4
  br label %51

20:                                               ; preds = %4
  %21 = load i32, i32* @MV88E6XXX_PORT_POLICY_CTL_SA_MASK, align 4
  %22 = call i32 @__bf_shf(i32 %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* @MV88E6XXX_PORT_POLICY_CTL_SA_MASK, align 4
  store i32 %23, i32* %11, align 4
  br label %51

24:                                               ; preds = %4
  %25 = load i32, i32* @MV88E6XXX_PORT_POLICY_CTL_VTU_MASK, align 4
  %26 = call i32 @__bf_shf(i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* @MV88E6XXX_PORT_POLICY_CTL_VTU_MASK, align 4
  store i32 %27, i32* %11, align 4
  br label %51

28:                                               ; preds = %4
  %29 = load i32, i32* @MV88E6XXX_PORT_POLICY_CTL_ETYPE_MASK, align 4
  %30 = call i32 @__bf_shf(i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* @MV88E6XXX_PORT_POLICY_CTL_ETYPE_MASK, align 4
  store i32 %31, i32* %11, align 4
  br label %51

32:                                               ; preds = %4
  %33 = load i32, i32* @MV88E6XXX_PORT_POLICY_CTL_PPPOE_MASK, align 4
  %34 = call i32 @__bf_shf(i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* @MV88E6XXX_PORT_POLICY_CTL_PPPOE_MASK, align 4
  store i32 %35, i32* %11, align 4
  br label %51

36:                                               ; preds = %4
  %37 = load i32, i32* @MV88E6XXX_PORT_POLICY_CTL_VBAS_MASK, align 4
  %38 = call i32 @__bf_shf(i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* @MV88E6XXX_PORT_POLICY_CTL_VBAS_MASK, align 4
  store i32 %39, i32* %11, align 4
  br label %51

40:                                               ; preds = %4
  %41 = load i32, i32* @MV88E6XXX_PORT_POLICY_CTL_OPT82_MASK, align 4
  %42 = call i32 @__bf_shf(i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* @MV88E6XXX_PORT_POLICY_CTL_OPT82_MASK, align 4
  store i32 %43, i32* %11, align 4
  br label %51

44:                                               ; preds = %4
  %45 = load i32, i32* @MV88E6XXX_PORT_POLICY_CTL_UDP_MASK, align 4
  %46 = call i32 @__bf_shf(i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* @MV88E6XXX_PORT_POLICY_CTL_UDP_MASK, align 4
  store i32 %47, i32* %11, align 4
  br label %51

48:                                               ; preds = %4
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %90

51:                                               ; preds = %44, %40, %36, %32, %28, %24, %20, %16
  %52 = load i32, i32* %9, align 4
  switch i32 %52, label %61 [
    i32 137, label %53
    i32 138, label %55
    i32 136, label %57
    i32 139, label %59
  ]

53:                                               ; preds = %51
  %54 = load i32, i32* @MV88E6XXX_PORT_POLICY_CTL_NORMAL, align 4
  store i32 %54, i32* %12, align 4
  br label %64

55:                                               ; preds = %51
  %56 = load i32, i32* @MV88E6XXX_PORT_POLICY_CTL_MIRROR, align 4
  store i32 %56, i32* %12, align 4
  br label %64

57:                                               ; preds = %51
  %58 = load i32, i32* @MV88E6XXX_PORT_POLICY_CTL_TRAP, align 4
  store i32 %58, i32* %12, align 4
  br label %64

59:                                               ; preds = %51
  %60 = load i32, i32* @MV88E6XXX_PORT_POLICY_CTL_DISCARD, align 4
  store i32 %60, i32* %12, align 4
  br label %64

61:                                               ; preds = %51
  %62 = load i32, i32* @EOPNOTSUPP, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %90

64:                                               ; preds = %59, %57, %55, %53
  %65 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @MV88E6XXX_PORT_POLICY_CTL, align 4
  %68 = call i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip* %65, i32 %66, i32 %67, i32* %10)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %5, align 4
  br label %90

73:                                               ; preds = %64
  %74 = load i32, i32* %11, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %10, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %13, align 4
  %80 = shl i32 %78, %79
  %81 = load i32, i32* %11, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* %10, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %10, align 4
  %85 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @MV88E6XXX_PORT_POLICY_CTL, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @mv88e6xxx_port_write(%struct.mv88e6xxx_chip* %85, i32 %86, i32 %87, i32 %88)
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %73, %71, %61, %48
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @__bf_shf(i32) #1

declare dso_local i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip*, i32, i32, i32*) #1

declare dso_local i32 @mv88e6xxx_port_write(%struct.mv88e6xxx_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
