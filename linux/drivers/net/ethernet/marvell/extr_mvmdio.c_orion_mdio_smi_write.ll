; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvmdio.c_orion_mdio_smi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvmdio.c_orion_mdio_smi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.orion_mdio_dev* }
%struct.orion_mdio_dev = type { i32 }

@MII_ADDR_C45 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@orion_mdio_smi_ops = common dso_local global i32 0, align 4
@MVMDIO_SMI_PHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@MVMDIO_SMI_PHY_REG_SHIFT = common dso_local global i32 0, align 4
@MVMDIO_SMI_WRITE_OPERATION = common dso_local global i32 0, align 4
@MVMDIO_SMI_DATA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @orion_mdio_smi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orion_mdio_smi_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.orion_mdio_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %13 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %12, i32 0, i32 0
  %14 = load %struct.orion_mdio_dev*, %struct.orion_mdio_dev** %13, align 8
  store %struct.orion_mdio_dev* %14, %struct.orion_mdio_dev** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @MII_ADDR_C45, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %47

22:                                               ; preds = %4
  %23 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %24 = call i32 @orion_mdio_wait_ready(i32* @orion_mdio_smi_ops, %struct.mii_bus* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %5, align 4
  br label %47

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @MVMDIO_SMI_PHY_ADDR_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @MVMDIO_SMI_PHY_REG_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = or i32 %32, %35
  %37 = load i32, i32* @MVMDIO_SMI_WRITE_OPERATION, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @MVMDIO_SMI_DATA_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = or i32 %38, %41
  %43 = load %struct.orion_mdio_dev*, %struct.orion_mdio_dev** %10, align 8
  %44 = getelementptr inbounds %struct.orion_mdio_dev, %struct.orion_mdio_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @writel(i32 %42, i32 %45)
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %29, %27, %19
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @orion_mdio_wait_ready(i32*, %struct.mii_bus*) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
