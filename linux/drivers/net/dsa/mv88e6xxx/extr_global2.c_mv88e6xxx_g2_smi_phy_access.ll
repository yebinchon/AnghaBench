; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2.c_mv88e6xxx_g2_smi_phy_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2.c_mv88e6xxx_g2_smi_phy_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@MV88E6390_G2_SMI_PHY_CMD_FUNC_EXTERNAL = common dso_local global i32 0, align 4
@MV88E6390_G2_SMI_PHY_CMD_FUNC_INTERNAL = common dso_local global i32 0, align 4
@MV88E6XXX_G2_SMI_PHY_CMD_MODE_45 = common dso_local global i32 0, align 4
@MV88E6XXX_G2_SMI_PHY_CMD_MODE_22 = common dso_local global i32 0, align 4
@MV88E6XXX_G2_SMI_PHY_CMD_DEV_ADDR_MASK = common dso_local global i32 0, align 4
@MV88E6XXX_G2_SMI_PHY_CMD_REG_ADDR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, i32, i32, i32, i32, i32)* @mv88e6xxx_g2_smi_phy_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_g2_smi_phy_access(%struct.mv88e6xxx_chip* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.mv88e6xxx_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %10, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %6
  %18 = load i32, i32* @MV88E6390_G2_SMI_PHY_CMD_FUNC_EXTERNAL, align 4
  %19 = load i32, i32* %13, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %13, align 4
  br label %25

21:                                               ; preds = %6
  %22 = load i32, i32* @MV88E6390_G2_SMI_PHY_CMD_FUNC_INTERNAL, align 4
  %23 = load i32, i32* %13, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %13, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* @MV88E6XXX_G2_SMI_PHY_CMD_MODE_45, align 4
  %30 = load i32, i32* %13, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %13, align 4
  br label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @MV88E6XXX_G2_SMI_PHY_CMD_MODE_22, align 4
  %34 = load i32, i32* %13, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %13, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* @MV88E6XXX_G2_SMI_PHY_CMD_DEV_ADDR_MASK, align 4
  %38 = call i32 @__bf_shf(i32 %37)
  %39 = load i32, i32* %11, align 4
  %40 = shl i32 %39, %38
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @MV88E6XXX_G2_SMI_PHY_CMD_DEV_ADDR_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* %13, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @MV88E6XXX_G2_SMI_PHY_CMD_REG_ADDR_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* %13, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %13, align 4
  %51 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @mv88e6xxx_g2_smi_phy_cmd(%struct.mv88e6xxx_chip* %51, i32 %52)
  ret i32 %53
}

declare dso_local i32 @__bf_shf(i32) #1

declare dso_local i32 @mv88e6xxx_g2_smi_phy_cmd(%struct.mv88e6xxx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
