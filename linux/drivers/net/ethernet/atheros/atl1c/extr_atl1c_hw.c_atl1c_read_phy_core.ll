; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_hw.c_atl1c_read_phy_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_hw.c_atl1c_read_phy_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_hw = type { i64, i64 }

@MDIO_CTRL_CLK_25_4 = common dso_local global i64 0, align 8
@athr_l2c_b2 = common dso_local global i64 0, align 8
@athr_l1d_2 = common dso_local global i64 0, align 8
@MDIO_CTRL_CLK_25_128 = common dso_local global i64 0, align 8
@MDIO_EXTN_DEVAD = common dso_local global i32 0, align 4
@MDIO_EXTN_REG = common dso_local global i32 0, align 4
@REG_MDIO_EXTN = common dso_local global i32 0, align 4
@MDIO_CTRL_SPRES_PRMBL = common dso_local global i32 0, align 4
@MDIO_CTRL_CLK_SEL = common dso_local global i32 0, align 4
@MDIO_CTRL_START = common dso_local global i32 0, align 4
@MDIO_CTRL_MODE_EXT = common dso_local global i32 0, align 4
@MDIO_CTRL_OP_READ = common dso_local global i32 0, align 4
@MDIO_CTRL_REG = common dso_local global i32 0, align 4
@REG_MDIO_CTRL = common dso_local global i32 0, align 4
@MDIO_CTRL_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atl1c_read_phy_core(%struct.atl1c_hw* %0, i32 %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.atl1c_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.atl1c_hw* %0, %struct.atl1c_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load i64, i64* @MDIO_CTRL_CLK_25_4, align 8
  store i64 %14, i64* %13, align 8
  %15 = load %struct.atl1c_hw*, %struct.atl1c_hw** %7, align 8
  %16 = call i32 @atl1c_stop_phy_polling(%struct.atl1c_hw* %15)
  %17 = load i64*, i64** %11, align 8
  store i64 0, i64* %17, align 8
  %18 = load %struct.atl1c_hw*, %struct.atl1c_hw** %7, align 8
  %19 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @athr_l2c_b2, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %5
  %24 = load %struct.atl1c_hw*, %struct.atl1c_hw** %7, align 8
  %25 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @athr_l1d_2, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23, %5
  %30 = load %struct.atl1c_hw*, %struct.atl1c_hw** %7, align 8
  %31 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i64, i64* @MDIO_CTRL_CLK_25_128, align 8
  store i64 %35, i64* %13, align 8
  br label %36

36:                                               ; preds = %34, %29, %23
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %36
  %40 = load i32, i32* @MDIO_EXTN_DEVAD, align 4
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @FIELDX(i32 %40, i64 %41)
  %43 = load i32, i32* @MDIO_EXTN_REG, align 4
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @FIELDX(i32 %43, i64 %44)
  %46 = or i32 %42, %45
  store i32 %46, i32* %12, align 4
  %47 = load %struct.atl1c_hw*, %struct.atl1c_hw** %7, align 8
  %48 = load i32, i32* @REG_MDIO_EXTN, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %47, i32 %48, i32 %49)
  %51 = load i32, i32* @MDIO_CTRL_SPRES_PRMBL, align 4
  %52 = load i32, i32* @MDIO_CTRL_CLK_SEL, align 4
  %53 = load i64, i64* %13, align 8
  %54 = call i32 @FIELDX(i32 %52, i64 %53)
  %55 = or i32 %51, %54
  %56 = load i32, i32* @MDIO_CTRL_START, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @MDIO_CTRL_MODE_EXT, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @MDIO_CTRL_OP_READ, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %12, align 4
  br label %76

62:                                               ; preds = %36
  %63 = load i32, i32* @MDIO_CTRL_SPRES_PRMBL, align 4
  %64 = load i32, i32* @MDIO_CTRL_CLK_SEL, align 4
  %65 = load i64, i64* %13, align 8
  %66 = call i32 @FIELDX(i32 %64, i64 %65)
  %67 = or i32 %63, %66
  %68 = load i32, i32* @MDIO_CTRL_REG, align 4
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @FIELDX(i32 %68, i64 %69)
  %71 = or i32 %67, %70
  %72 = load i32, i32* @MDIO_CTRL_START, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @MDIO_CTRL_OP_READ, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %62, %39
  %77 = load %struct.atl1c_hw*, %struct.atl1c_hw** %7, align 8
  %78 = load i32, i32* @REG_MDIO_CTRL, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %77, i32 %78, i32 %79)
  %81 = load %struct.atl1c_hw*, %struct.atl1c_hw** %7, align 8
  %82 = call i32 @atl1c_wait_mdio_idle(%struct.atl1c_hw* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %76
  store i32 -1, i32* %6, align 4
  br label %96

85:                                               ; preds = %76
  %86 = load %struct.atl1c_hw*, %struct.atl1c_hw** %7, align 8
  %87 = load i32, i32* @REG_MDIO_CTRL, align 4
  %88 = call i32 @AT_READ_REG(%struct.atl1c_hw* %86, i32 %87, i32* %12)
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @MDIO_CTRL_DATA, align 4
  %91 = call i64 @FIELD_GETX(i32 %89, i32 %90)
  %92 = load i64*, i64** %11, align 8
  store i64 %91, i64* %92, align 8
  %93 = load %struct.atl1c_hw*, %struct.atl1c_hw** %7, align 8
  %94 = load i64, i64* %13, align 8
  %95 = call i32 @atl1c_start_phy_polling(%struct.atl1c_hw* %93, i64 %94)
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %85, %84
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i32 @atl1c_stop_phy_polling(%struct.atl1c_hw*) #1

declare dso_local i32 @FIELDX(i32, i64) #1

declare dso_local i32 @AT_WRITE_REG(%struct.atl1c_hw*, i32, i32) #1

declare dso_local i32 @atl1c_wait_mdio_idle(%struct.atl1c_hw*) #1

declare dso_local i32 @AT_READ_REG(%struct.atl1c_hw*, i32, i32*) #1

declare dso_local i64 @FIELD_GETX(i32, i32) #1

declare dso_local i32 @atl1c_start_phy_polling(%struct.atl1c_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
