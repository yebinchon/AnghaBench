; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_csi2_phy_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_csi2_phy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cal_ctx = type { i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"ddrclkperiod_us: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"ths_term: %d (0x%02x)\0A\00", align 1
@THS_SETTLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"ths_settle: %d (0x%02x)\0A\00", align 1
@CAL_CSI2_PHY_REG0 = common dso_local global i32 0, align 4
@CAL_CSI2_PHY_REG0_HSCLOCKCONFIG_DISABLE = common dso_local global i32 0, align 4
@CAL_CSI2_PHY_REG0_HSCLOCKCONFIG_MASK = common dso_local global i32 0, align 4
@CAL_CSI2_PHY_REG0_THS_TERM_MASK = common dso_local global i32 0, align 4
@CAL_CSI2_PHY_REG0_THS_SETTLE_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"CSI2_%d_REG0 = 0x%08x\0A\00", align 1
@CAL_CSI2_PHY_REG1 = common dso_local global i32 0, align 4
@TCLK_TERM = common dso_local global i32 0, align 4
@CAL_CSI2_PHY_REG1_TCLK_TERM_MASK = common dso_local global i32 0, align 4
@CAL_CSI2_PHY_REG1_DPHY_HS_SYNC_PATTERN_MASK = common dso_local global i32 0, align 4
@TCLK_MISS = common dso_local global i32 0, align 4
@CAL_CSI2_PHY_REG1_CTRLCLK_DIV_FACTOR_MASK = common dso_local global i32 0, align 4
@TCLK_SETTLE = common dso_local global i32 0, align 4
@CAL_CSI2_PHY_REG1_TCLK_SETTLE_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"CSI2_%d_REG1 = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cal_ctx*)* @csi2_phy_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi2_phy_config(%struct.cal_ctx* %0) #0 {
  %2 = alloca %struct.cal_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cal_ctx* %0, %struct.cal_ctx** %2, align 8
  %8 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sdiv i32 %10, 2000000
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = udiv i32 1000000, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 (i32, %struct.cal_ctx*, i8*, i32, ...) @ctx_dbg(i32 1, %struct.cal_ctx* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = udiv i32 20000, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp uge i32 %19, 2
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = sub i32 %22, 2
  br label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi i32 [ %23, %21 ], [ %25, %24 ]
  store i32 %27, i32* %5, align 4
  %28 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (i32, %struct.cal_ctx*, i8*, i32, ...) @ctx_dbg(i32 1, %struct.cal_ctx* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* @THS_SETTLE, align 4
  store i32 %32, i32* %6, align 4
  %33 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (i32, %struct.cal_ctx*, i8*, i32, ...) @ctx_dbg(i32 1, %struct.cal_ctx* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %38 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CAL_CSI2_PHY_REG0, align 4
  %41 = call i32 @reg_read(i32 %39, i32 %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* @CAL_CSI2_PHY_REG0_HSCLOCKCONFIG_DISABLE, align 4
  %43 = load i32, i32* @CAL_CSI2_PHY_REG0_HSCLOCKCONFIG_MASK, align 4
  %44 = call i32 @set_field(i32* %3, i32 %42, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @CAL_CSI2_PHY_REG0_THS_TERM_MASK, align 4
  %47 = call i32 @set_field(i32* %3, i32 %45, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @CAL_CSI2_PHY_REG0_THS_SETTLE_MASK, align 4
  %50 = call i32 @set_field(i32* %3, i32 %48, i32 %49)
  %51 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %52 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %53 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 1
  %56 = load i32, i32* %3, align 4
  %57 = call i32 (i32, %struct.cal_ctx*, i8*, i32, ...) @ctx_dbg(i32 1, %struct.cal_ctx* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %59 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CAL_CSI2_PHY_REG0, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @reg_write(i32 %60, i32 %61, i32 %62)
  %64 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %65 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CAL_CSI2_PHY_REG1, align 4
  %68 = call i32 @reg_read(i32 %66, i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* @TCLK_TERM, align 4
  %70 = load i32, i32* @CAL_CSI2_PHY_REG1_TCLK_TERM_MASK, align 4
  %71 = call i32 @set_field(i32* %4, i32 %69, i32 %70)
  %72 = load i32, i32* @CAL_CSI2_PHY_REG1_DPHY_HS_SYNC_PATTERN_MASK, align 4
  %73 = call i32 @set_field(i32* %4, i32 184, i32 %72)
  %74 = load i32, i32* @TCLK_MISS, align 4
  %75 = load i32, i32* @CAL_CSI2_PHY_REG1_CTRLCLK_DIV_FACTOR_MASK, align 4
  %76 = call i32 @set_field(i32* %4, i32 %74, i32 %75)
  %77 = load i32, i32* @TCLK_SETTLE, align 4
  %78 = load i32, i32* @CAL_CSI2_PHY_REG1_TCLK_SETTLE_MASK, align 4
  %79 = call i32 @set_field(i32* %4, i32 %77, i32 %78)
  %80 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %81 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %82 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %83, 1
  %85 = load i32, i32* %4, align 4
  %86 = call i32 (i32, %struct.cal_ctx*, i8*, i32, ...) @ctx_dbg(i32 1, %struct.cal_ctx* %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %88 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @CAL_CSI2_PHY_REG1, align 4
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @reg_write(i32 %89, i32 %90, i32 %91)
  ret void
}

declare dso_local i32 @ctx_dbg(i32, %struct.cal_ctx*, i8*, i32, ...) #1

declare dso_local i32 @reg_read(i32, i32) #1

declare dso_local i32 @set_field(i32*, i32, i32) #1

declare dso_local i32 @reg_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
