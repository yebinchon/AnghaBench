; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2.c_mv88e6xxx_g2_smi_phy_read_data_c45.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2.c_mv88e6xxx_g2_smi_phy_read_data_c45.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@MV88E6XXX_G2_SMI_PHY_CMD_OP_45_READ_DATA = common dso_local global i32 0, align 4
@MV88E6XXX_G2_SMI_PHY_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, i32, i32, i32, i32*)* @mv88e6xxx_g2_smi_phy_read_data_c45 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_g2_smi_phy_read_data_c45(%struct.mv88e6xxx_chip* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mv88e6xxx_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* @MV88E6XXX_G2_SMI_PHY_CMD_OP_45_READ_DATA, align 4
  store i32 %14, i32* %12, align 4
  %15 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @mv88e6xxx_g2_smi_phy_access_c45(%struct.mv88e6xxx_chip* %15, i32 %16, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %6, align 4
  br label %30

25:                                               ; preds = %5
  %26 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %27 = load i32, i32* @MV88E6XXX_G2_SMI_PHY_DATA, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @mv88e6xxx_g2_read(%struct.mv88e6xxx_chip* %26, i32 %27, i32* %28)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %25, %23
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i32 @mv88e6xxx_g2_smi_phy_access_c45(%struct.mv88e6xxx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @mv88e6xxx_g2_read(%struct.mv88e6xxx_chip*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
