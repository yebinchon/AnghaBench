; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_hw.c_atl1e_phy_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_hw.c_atl1e_phy_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_hw = type { %struct.atl1e_adapter* }
%struct.atl1e_adapter = type { i32 }

@BMCR_RESET = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@REG_MDIO_CTRL = common dso_local global i32 0, align 4
@MDIO_START = common dso_local global i32 0, align 4
@MDIO_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"pcie linkdown at least for 25ms\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"pcie linkup after %d ms\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atl1e_phy_commit(%struct.atl1e_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl1e_hw*, align 8
  %4 = alloca %struct.atl1e_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.atl1e_hw* %0, %struct.atl1e_hw** %3, align 8
  %9 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %10 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %9, i32 0, i32 0
  %11 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %10, align 8
  store %struct.atl1e_adapter* %11, %struct.atl1e_adapter** %4, align 8
  %12 = load i32, i32* @BMCR_RESET, align 4
  %13 = load i32, i32* @BMCR_ANENABLE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @BMCR_ANRESTART, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %18 = load i32, i32* @MII_BMCR, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @atl1e_write_phy_reg(%struct.atl1e_hw* %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %62

23:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %40, %23
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 25
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = call i32 @msleep(i32 1)
  %29 = load %struct.atl1e_hw*, %struct.atl1e_hw** %3, align 8
  %30 = load i32, i32* @REG_MDIO_CTRL, align 4
  %31 = call i32 @AT_READ_REG(%struct.atl1e_hw* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @MDIO_START, align 4
  %34 = load i32, i32* @MDIO_BUSY, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  br label %43

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %24

43:                                               ; preds = %38, %24
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @MDIO_START, align 4
  %46 = load i32, i32* @MDIO_BUSY, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = icmp ne i32 0, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %4, align 8
  %52 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i8*, ...) @netdev_err(i32 %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %63

56:                                               ; preds = %43
  %57 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %4, align 8
  %58 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 (i32, i8*, ...) @netdev_err(i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %56, %1
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %50
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @atl1e_write_phy_reg(%struct.atl1e_hw*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @AT_READ_REG(%struct.atl1e_hw*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
