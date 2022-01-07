; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc85xx_csr_ctrl_phy_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc85xx_csr_ctrl_phy_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MSCC_EXT_PAGE_ACCESS = common dso_local global i32 0, align 4
@MSCC_PHY_PAGE_CSR_CNTL = common dso_local global i32 0, align 4
@MSCC_EXT_PAGE_CSR_CNTL_20 = common dso_local global i32 0, align 4
@MSCC_EXT_PAGE_CSR_CNTL_19 = common dso_local global i32 0, align 4
@MSCC_PHY_CSR_CNTL_19_CMD = common dso_local global i32 0, align 4
@MSCC_PHY_CSR_CNTL_19_READ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@PROC_CMD_NCOMPLETED_TIMEOUT_MS = common dso_local global i32 0, align 4
@MSCC_EXT_PAGE_CSR_CNTL_17 = common dso_local global i32 0, align 4
@MSCC_EXT_PAGE_CSR_CNTL_18 = common dso_local global i32 0, align 4
@MSCC_PHY_PAGE_STANDARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32, i32)* @vsc85xx_csr_ctrl_phy_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc85xx_csr_ctrl_phy_read(%struct.phy_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %13 = load i32, i32* @MSCC_EXT_PAGE_ACCESS, align 4
  %14 = load i32, i32* @MSCC_PHY_PAGE_CSR_CNTL, align 4
  %15 = call i32 @phy_base_write(%struct.phy_device* %12, i32 %13, i32 %14)
  %16 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %17 = load i32, i32* @MSCC_EXT_PAGE_CSR_CNTL_20, align 4
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %18, 2
  %20 = call i32 @MSCC_PHY_CSR_CNTL_20_TARGET(i32 %19)
  %21 = call i32 @phy_base_write(%struct.phy_device* %16, i32 %17, i32 %20)
  %22 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %23 = load i32, i32* @MSCC_EXT_PAGE_CSR_CNTL_19, align 4
  %24 = load i32, i32* @MSCC_PHY_CSR_CNTL_19_CMD, align 4
  %25 = load i32, i32* @MSCC_PHY_CSR_CNTL_19_READ, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @MSCC_PHY_CSR_CNTL_19_REG_ADDR(i32 %27)
  %29 = or i32 %26, %28
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 3
  %32 = call i32 @MSCC_PHY_CSR_CNTL_19_TARGET(i32 %31)
  %33 = or i32 %29, %32
  %34 = call i32 @phy_base_write(%struct.phy_device* %22, i32 %23, i32 %33)
  %35 = load i64, i64* @jiffies, align 8
  %36 = load i32, i32* @PROC_CMD_NCOMPLETED_TIMEOUT_MS, align 4
  %37 = call i64 @msecs_to_jiffies(i32 %36)
  %38 = add i64 %35, %37
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %55, %3
  %40 = call i32 @usleep_range(i32 500, i32 1000)
  %41 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %42 = load i32, i32* @MSCC_EXT_PAGE_CSR_CNTL_19, align 4
  %43 = call i32 @phy_base_read(%struct.phy_device* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %39
  %45 = load i64, i64* @jiffies, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i64 @time_before(i64 %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @MSCC_PHY_CSR_CNTL_19_CMD, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %49, %44
  %56 = phi i1 [ false, %44 ], [ %54, %49 ]
  br i1 %56, label %39, label %57

57:                                               ; preds = %55
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @MSCC_PHY_CSR_CNTL_19_CMD, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  store i32 -1, i32* %4, align 4
  br label %78

63:                                               ; preds = %57
  %64 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %65 = load i32, i32* @MSCC_EXT_PAGE_CSR_CNTL_17, align 4
  %66 = call i32 @phy_base_read(%struct.phy_device* %64, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %68 = load i32, i32* @MSCC_EXT_PAGE_CSR_CNTL_18, align 4
  %69 = call i32 @phy_base_read(%struct.phy_device* %67, i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %71 = load i32, i32* @MSCC_EXT_PAGE_ACCESS, align 4
  %72 = load i32, i32* @MSCC_PHY_PAGE_STANDARD, align 4
  %73 = call i32 @phy_base_write(%struct.phy_device* %70, i32 %71, i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = shl i32 %74, 16
  %76 = load i32, i32* %10, align 4
  %77 = or i32 %75, %76
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %63, %62
  %79 = load i32, i32* %4, align 4
  ret i32 %79
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
