; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvmdio.c_orion_mdio_xsmi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvmdio.c_orion_mdio_xsmi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32, %struct.orion_mdio_dev* }
%struct.orion_mdio_dev = type { i64 }

@MII_ADDR_C45 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@orion_mdio_xsmi_ops = common dso_local global i32 0, align 4
@MVMDIO_XSMI_ADDR_REG = common dso_local global i64 0, align 8
@MVMDIO_XSMI_PHYADDR_SHIFT = common dso_local global i32 0, align 4
@MVMDIO_XSMI_DEVADDR_SHIFT = common dso_local global i32 0, align 4
@MVMDIO_XSMI_READ_OPERATION = common dso_local global i32 0, align 4
@MVMDIO_XSMI_MGNT_REG = common dso_local global i64 0, align 8
@MVMDIO_XSMI_READ_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"XSMI bus read not valid\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @orion_mdio_xsmi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orion_mdio_xsmi_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
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
  %15 = ashr i32 %14, 16
  %16 = call i32 @GENMASK(i32 4, i32 0)
  %17 = and i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @MII_ADDR_C45, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %89

25:                                               ; preds = %3
  %26 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %27 = call i32 @orion_mdio_wait_ready(i32* @orion_mdio_xsmi_ops, %struct.mii_bus* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %89

32:                                               ; preds = %25
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @GENMASK(i32 15, i32 0)
  %35 = and i32 %33, %34
  %36 = load %struct.orion_mdio_dev*, %struct.orion_mdio_dev** %8, align 8
  %37 = getelementptr inbounds %struct.orion_mdio_dev, %struct.orion_mdio_dev* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MVMDIO_XSMI_ADDR_REG, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @MVMDIO_XSMI_PHYADDR_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @MVMDIO_XSMI_DEVADDR_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = or i32 %44, %47
  %49 = load i32, i32* @MVMDIO_XSMI_READ_OPERATION, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.orion_mdio_dev*, %struct.orion_mdio_dev** %8, align 8
  %52 = getelementptr inbounds %struct.orion_mdio_dev, %struct.orion_mdio_dev* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MVMDIO_XSMI_MGNT_REG, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  %57 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %58 = call i32 @orion_mdio_wait_ready(i32* @orion_mdio_xsmi_ops, %struct.mii_bus* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %32
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %89

63:                                               ; preds = %32
  %64 = load %struct.orion_mdio_dev*, %struct.orion_mdio_dev** %8, align 8
  %65 = getelementptr inbounds %struct.orion_mdio_dev, %struct.orion_mdio_dev* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @MVMDIO_XSMI_MGNT_REG, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @readl(i64 %68)
  %70 = load i32, i32* @MVMDIO_XSMI_READ_VALID, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %63
  %74 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %75 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %89

80:                                               ; preds = %63
  %81 = load %struct.orion_mdio_dev*, %struct.orion_mdio_dev** %8, align 8
  %82 = getelementptr inbounds %struct.orion_mdio_dev, %struct.orion_mdio_dev* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @MVMDIO_XSMI_MGNT_REG, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @readl(i64 %85)
  %87 = call i32 @GENMASK(i32 15, i32 0)
  %88 = and i32 %86, %87
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %80, %73, %61, %30, %22
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @orion_mdio_wait_ready(i32*, %struct.mii_bus*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
