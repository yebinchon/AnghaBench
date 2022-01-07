; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_5706_serdes_has_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_5706_serdes_has_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32 }

@BNX2_PHY_FLAG_NO_PARALLEL = common dso_local global i32 0, align 4
@MII_BNX2_MISC_SHADOW = common dso_local global i32 0, align 4
@MISC_SHDW_MODE_CTL = common dso_local global i32 0, align 4
@MISC_SHDW_MODE_CTL_SIG_DET = common dso_local global i32 0, align 4
@MISC_SHDW_AN_DBG = common dso_local global i32 0, align 4
@MISC_SHDW_AN_DBG_NOSYNC = common dso_local global i32 0, align 4
@MISC_SHDW_AN_DBG_RUDI_INVALID = common dso_local global i32 0, align 4
@MII_BNX2_DSP_ADDRESS = common dso_local global i32 0, align 4
@MII_EXPAND_REG1 = common dso_local global i32 0, align 4
@MII_BNX2_DSP_RW_PORT = common dso_local global i32 0, align 4
@MII_EXPAND_REG1_RUDI_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_5706_serdes_has_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_5706_serdes_has_link(%struct.bnx2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  %7 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %8 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @BNX2_PHY_FLAG_NO_PARALLEL, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

14:                                               ; preds = %1
  %15 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %16 = load i32, i32* @MII_BNX2_MISC_SHADOW, align 4
  %17 = load i32, i32* @MISC_SHDW_MODE_CTL, align 4
  %18 = call i32 @bnx2_write_phy(%struct.bnx2* %15, i32 %16, i32 %17)
  %19 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %20 = load i32, i32* @MII_BNX2_MISC_SHADOW, align 4
  %21 = call i32 @bnx2_read_phy(%struct.bnx2* %19, i32 %20, i32* %4)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MISC_SHDW_MODE_CTL_SIG_DET, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %62

27:                                               ; preds = %14
  %28 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %29 = load i32, i32* @MII_BNX2_MISC_SHADOW, align 4
  %30 = load i32, i32* @MISC_SHDW_AN_DBG, align 4
  %31 = call i32 @bnx2_write_phy(%struct.bnx2* %28, i32 %29, i32 %30)
  %32 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %33 = load i32, i32* @MII_BNX2_MISC_SHADOW, align 4
  %34 = call i32 @bnx2_read_phy(%struct.bnx2* %32, i32 %33, i32* %5)
  %35 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %36 = load i32, i32* @MII_BNX2_MISC_SHADOW, align 4
  %37 = call i32 @bnx2_read_phy(%struct.bnx2* %35, i32 %36, i32* %5)
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MISC_SHDW_AN_DBG_NOSYNC, align 4
  %40 = load i32, i32* @MISC_SHDW_AN_DBG_RUDI_INVALID, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %62

45:                                               ; preds = %27
  %46 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %47 = load i32, i32* @MII_BNX2_DSP_ADDRESS, align 4
  %48 = load i32, i32* @MII_EXPAND_REG1, align 4
  %49 = call i32 @bnx2_write_phy(%struct.bnx2* %46, i32 %47, i32 %48)
  %50 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %51 = load i32, i32* @MII_BNX2_DSP_RW_PORT, align 4
  %52 = call i32 @bnx2_read_phy(%struct.bnx2* %50, i32 %51, i32* %6)
  %53 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %54 = load i32, i32* @MII_BNX2_DSP_RW_PORT, align 4
  %55 = call i32 @bnx2_read_phy(%struct.bnx2* %53, i32 %54, i32* %6)
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @MII_EXPAND_REG1_RUDI_C, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %62

61:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %60, %44, %26, %13
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @bnx2_write_phy(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @bnx2_read_phy(%struct.bnx2*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
