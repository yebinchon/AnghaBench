; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl2_hw = type { i32 }

@REG_PHY_ENABLE = common dso_local global i32 0, align 4
@MII_DBG_ADDR = common dso_local global i32 0, align 4
@MII_DBG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.atl2_hw*)* @atl2_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @atl2_phy_init(%struct.atl2_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.atl2_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.atl2_hw* %0, %struct.atl2_hw** %3, align 8
  %6 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %7 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %60

11:                                               ; preds = %1
  %12 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %13 = load i32, i32* @REG_PHY_ENABLE, align 4
  %14 = call i32 @ATL2_WRITE_REGW(%struct.atl2_hw* %12, i32 %13, i32 1)
  %15 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %16 = call i32 @ATL2_WRITE_FLUSH(%struct.atl2_hw* %15)
  %17 = call i32 @msleep(i32 1)
  %18 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %19 = load i32, i32* @MII_DBG_ADDR, align 4
  %20 = call i64 @atl2_write_phy_reg(%struct.atl2_hw* %18, i32 %19, i32 0)
  %21 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %22 = load i32, i32* @MII_DBG_DATA, align 4
  %23 = call i32 @atl2_read_phy_reg(%struct.atl2_hw* %21, i32 %22, i32* %5)
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 4096
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %11
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, -4097
  store i32 %29, i32* %5, align 4
  %30 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %31 = load i32, i32* @MII_DBG_DATA, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @atl2_write_phy_reg(%struct.atl2_hw* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %27, %11
  %35 = call i32 @msleep(i32 1)
  %36 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %37 = call i64 @atl2_write_phy_reg(%struct.atl2_hw* %36, i32 18, i32 3072)
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* %4, align 8
  store i64 %41, i64* %2, align 8
  br label %60

42:                                               ; preds = %34
  %43 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %44 = call i64 @atl2_phy_setup_autoneg_adv(%struct.atl2_hw* %43)
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i64, i64* %4, align 8
  store i64 %48, i64* %2, align 8
  br label %60

49:                                               ; preds = %42
  %50 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %51 = call i64 @atl2_phy_commit(%struct.atl2_hw* %50)
  store i64 %51, i64* %4, align 8
  %52 = load i64, i64* %4, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i64, i64* %4, align 8
  store i64 %55, i64* %2, align 8
  br label %60

56:                                               ; preds = %49
  %57 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %58 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  %59 = load i64, i64* %4, align 8
  store i64 %59, i64* %2, align 8
  br label %60

60:                                               ; preds = %56, %54, %47, %40, %10
  %61 = load i64, i64* %2, align 8
  ret i64 %61
}

declare dso_local i32 @ATL2_WRITE_REGW(%struct.atl2_hw*, i32, i32) #1

declare dso_local i32 @ATL2_WRITE_FLUSH(%struct.atl2_hw*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @atl2_write_phy_reg(%struct.atl2_hw*, i32, i32) #1

declare dso_local i32 @atl2_read_phy_reg(%struct.atl2_hw*, i32, i32*) #1

declare dso_local i64 @atl2_phy_setup_autoneg_adv(%struct.atl2_hw*) #1

declare dso_local i64 @atl2_phy_commit(%struct.atl2_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
