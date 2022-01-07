; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc85xx_csr_ctrl_phy_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc85xx_csr_ctrl_phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MSCC_EXT_PAGE_ACCESS = common dso_local global i32 0, align 4
@MSCC_PHY_PAGE_CSR_CNTL = common dso_local global i32 0, align 4
@MSCC_EXT_PAGE_CSR_CNTL_20 = common dso_local global i32 0, align 4
@MSCC_EXT_PAGE_CSR_CNTL_17 = common dso_local global i32 0, align 4
@MSCC_EXT_PAGE_CSR_CNTL_18 = common dso_local global i32 0, align 4
@MSCC_EXT_PAGE_CSR_CNTL_19 = common dso_local global i32 0, align 4
@MSCC_PHY_CSR_CNTL_19_CMD = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@PROC_CMD_NCOMPLETED_TIMEOUT_MS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@MSCC_PHY_PAGE_STANDARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32, i32, i32)* @vsc85xx_csr_ctrl_phy_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc85xx_csr_ctrl_phy_write(%struct.phy_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.phy_device* %0, %struct.phy_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %12 = load i32, i32* @MSCC_EXT_PAGE_ACCESS, align 4
  %13 = load i32, i32* @MSCC_PHY_PAGE_CSR_CNTL, align 4
  %14 = call i32 @phy_base_write(%struct.phy_device* %11, i32 %12, i32 %13)
  %15 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %16 = load i32, i32* @MSCC_EXT_PAGE_CSR_CNTL_20, align 4
  %17 = load i32, i32* %7, align 4
  %18 = ashr i32 %17, 2
  %19 = call i32 @MSCC_PHY_CSR_CNTL_20_TARGET(i32 %18)
  %20 = call i32 @phy_base_write(%struct.phy_device* %15, i32 %16, i32 %19)
  %21 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %22 = load i32, i32* @MSCC_EXT_PAGE_CSR_CNTL_17, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @phy_base_write(%struct.phy_device* %21, i32 %22, i32 %23)
  %25 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %26 = load i32, i32* @MSCC_EXT_PAGE_CSR_CNTL_18, align 4
  %27 = load i32, i32* %9, align 4
  %28 = ashr i32 %27, 16
  %29 = call i32 @phy_base_write(%struct.phy_device* %25, i32 %26, i32 %28)
  %30 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %31 = load i32, i32* @MSCC_EXT_PAGE_CSR_CNTL_19, align 4
  %32 = load i32, i32* @MSCC_PHY_CSR_CNTL_19_CMD, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @MSCC_PHY_CSR_CNTL_19_REG_ADDR(i32 %33)
  %35 = or i32 %32, %34
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 3
  %38 = call i32 @MSCC_PHY_CSR_CNTL_19_TARGET(i32 %37)
  %39 = or i32 %35, %38
  %40 = call i32 @phy_base_write(%struct.phy_device* %30, i32 %31, i32 %39)
  %41 = load i64, i64* @jiffies, align 8
  %42 = load i32, i32* @PROC_CMD_NCOMPLETED_TIMEOUT_MS, align 4
  %43 = call i64 @msecs_to_jiffies(i32 %42)
  %44 = add i64 %41, %43
  store i64 %44, i64* %10, align 8
  br label %45

45:                                               ; preds = %61, %4
  %46 = call i32 @usleep_range(i32 500, i32 1000)
  %47 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %48 = load i32, i32* @MSCC_EXT_PAGE_CSR_CNTL_19, align 4
  %49 = call i32 @phy_base_read(%struct.phy_device* %47, i32 %48)
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %45
  %51 = load i64, i64* @jiffies, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i64 @time_before(i64 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @MSCC_PHY_CSR_CNTL_19_CMD, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br label %61

61:                                               ; preds = %55, %50
  %62 = phi i1 [ false, %50 ], [ %60, %55 ]
  br i1 %62, label %45, label %63

63:                                               ; preds = %61
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @MSCC_PHY_CSR_CNTL_19_CMD, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @ETIMEDOUT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %76

71:                                               ; preds = %63
  %72 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %73 = load i32, i32* @MSCC_EXT_PAGE_ACCESS, align 4
  %74 = load i32, i32* @MSCC_PHY_PAGE_STANDARD, align 4
  %75 = call i32 @phy_base_write(%struct.phy_device* %72, i32 %73, i32 %74)
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %71, %68
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @phy_base_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @MSCC_PHY_CSR_CNTL_20_TARGET(i32) #1

declare dso_local i32 @MSCC_PHY_CSR_CNTL_19_REG_ADDR(i32) #1

declare dso_local i32 @MSCC_PHY_CSR_CNTL_19_TARGET(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @phy_base_read(%struct.phy_device*, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
