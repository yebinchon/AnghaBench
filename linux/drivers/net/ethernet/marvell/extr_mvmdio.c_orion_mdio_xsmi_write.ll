; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvmdio.c_orion_mdio_xsmi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvmdio.c_orion_mdio_xsmi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.orion_mdio_dev* }
%struct.orion_mdio_dev = type { i64 }

@MII_ADDR_C45 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@orion_mdio_xsmi_ops = common dso_local global i32 0, align 4
@MVMDIO_XSMI_ADDR_REG = common dso_local global i64 0, align 8
@MVMDIO_XSMI_PHYADDR_SHIFT = common dso_local global i32 0, align 4
@MVMDIO_XSMI_DEVADDR_SHIFT = common dso_local global i32 0, align 4
@MVMDIO_XSMI_WRITE_OPERATION = common dso_local global i32 0, align 4
@MVMDIO_XSMI_MGNT_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @orion_mdio_xsmi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orion_mdio_xsmi_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.orion_mdio_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %14 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %13, i32 0, i32 0
  %15 = load %struct.orion_mdio_dev*, %struct.orion_mdio_dev** %14, align 8
  store %struct.orion_mdio_dev* %15, %struct.orion_mdio_dev** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = ashr i32 %16, 16
  %18 = call i32 @GENMASK(i32 4, i32 0)
  %19 = and i32 %17, %18
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @MII_ADDR_C45, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %61

27:                                               ; preds = %4
  %28 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %29 = call i32 @orion_mdio_wait_ready(i32* @orion_mdio_xsmi_ops, %struct.mii_bus* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %5, align 4
  br label %61

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @GENMASK(i32 15, i32 0)
  %37 = and i32 %35, %36
  %38 = load %struct.orion_mdio_dev*, %struct.orion_mdio_dev** %10, align 8
  %39 = getelementptr inbounds %struct.orion_mdio_dev, %struct.orion_mdio_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MVMDIO_XSMI_ADDR_REG, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @MVMDIO_XSMI_PHYADDR_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @MVMDIO_XSMI_DEVADDR_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = or i32 %46, %49
  %51 = load i32, i32* @MVMDIO_XSMI_WRITE_OPERATION, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.orion_mdio_dev*, %struct.orion_mdio_dev** %10, align 8
  %56 = getelementptr inbounds %struct.orion_mdio_dev, %struct.orion_mdio_dev* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MVMDIO_XSMI_MGNT_REG, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %34, %32, %24
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @orion_mdio_wait_ready(i32*, %struct.mii_bus*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
