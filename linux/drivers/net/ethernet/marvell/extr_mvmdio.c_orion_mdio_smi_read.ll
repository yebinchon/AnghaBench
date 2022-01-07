; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvmdio.c_orion_mdio_smi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvmdio.c_orion_mdio_smi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32, %struct.orion_mdio_dev* }
%struct.orion_mdio_dev = type { i32 }

@MII_ADDR_C45 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@orion_mdio_smi_ops = common dso_local global i32 0, align 4
@MVMDIO_SMI_PHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@MVMDIO_SMI_PHY_REG_SHIFT = common dso_local global i32 0, align 4
@MVMDIO_SMI_READ_OPERATION = common dso_local global i32 0, align 4
@MVMDIO_SMI_READ_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"SMI bus read not valid\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @orion_mdio_smi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orion_mdio_smi_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.orion_mdio_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %12 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %11, i32 0, i32 1
  %13 = load %struct.orion_mdio_dev*, %struct.orion_mdio_dev** %12, align 8
  store %struct.orion_mdio_dev* %13, %struct.orion_mdio_dev** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @MII_ADDR_C45, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %68

21:                                               ; preds = %3
  %22 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %23 = call i32 @orion_mdio_wait_ready(i32* @orion_mdio_smi_ops, %struct.mii_bus* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %4, align 4
  br label %68

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @MVMDIO_SMI_PHY_ADDR_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @MVMDIO_SMI_PHY_REG_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %31, %34
  %36 = load i32, i32* @MVMDIO_SMI_READ_OPERATION, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.orion_mdio_dev*, %struct.orion_mdio_dev** %8, align 8
  %39 = getelementptr inbounds %struct.orion_mdio_dev, %struct.orion_mdio_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @writel(i32 %37, i32 %40)
  %42 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %43 = call i32 @orion_mdio_wait_ready(i32* @orion_mdio_smi_ops, %struct.mii_bus* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %28
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %4, align 4
  br label %68

48:                                               ; preds = %28
  %49 = load %struct.orion_mdio_dev*, %struct.orion_mdio_dev** %8, align 8
  %50 = getelementptr inbounds %struct.orion_mdio_dev, %struct.orion_mdio_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @readl(i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @MVMDIO_SMI_READ_VALID, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %48
  %58 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %59 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %68

64:                                               ; preds = %48
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @GENMASK(i32 15, i32 0)
  %67 = and i32 %65, %66
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %64, %57, %46, %26, %18
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @orion_mdio_wait_ready(i32*, %struct.mii_bus*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
