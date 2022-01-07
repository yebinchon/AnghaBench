; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-k3.c_dw_mci_hs_set_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-k3.c_dw_mci_hs_set_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.dw_mci = type { %struct.k3_priv* }
%struct.k3_priv = type { i32 }

@hs_timing_cfg = common dso_local global %struct.TYPE_2__** null, align 8
@USE_DLY_MIN_SMPL = common dso_local global i32 0, align 4
@USE_DLY_MAX_SMPL = common dso_local global i32 0, align 4
@ENABLE_SHIFT_MIN_SMPL = common dso_local global i32 0, align 4
@ENABLE_SHIFT_MAX_SMPL = common dso_local global i32 0, align 4
@GPIO = common dso_local global i32 0, align 4
@UHS_REG_EXT_SAMPLE_PHASE_MASK = common dso_local global i32 0, align 4
@UHS_REG_EXT_SAMPLE_DLY_MASK = common dso_local global i32 0, align 4
@UHS_REG_EXT_SAMPLE_DRVPHASE_MASK = common dso_local global i32 0, align 4
@UHS_REG_EXT = common dso_local global i32 0, align 4
@ENABLE_SHIFT = common dso_local global i32 0, align 4
@GPIO_CLK_DIV_MASK = common dso_local global i32 0, align 4
@GENCLK_DIV = common dso_local global i32 0, align 4
@GPIO_USE_SAMPLE_DLY_MASK = common dso_local global i32 0, align 4
@GPIO_CLK_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mci*, i32, i32)* @dw_mci_hs_set_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mci_hs_set_timing(%struct.dw_mci* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dw_mci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.k3_priv*, align 8
  store %struct.dw_mci* %0, %struct.dw_mci** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %15 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %14, i32 0, i32 0
  %16 = load %struct.k3_priv*, %struct.k3_priv** %15, align 8
  store %struct.k3_priv* %16, %struct.k3_priv** %13, align 8
  %17 = load %struct.k3_priv*, %struct.k3_priv** %13, align 8
  %18 = getelementptr inbounds %struct.k3_priv, %struct.k3_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @hs_timing_cfg, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @hs_timing_cfg, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %65

42:                                               ; preds = %3
  %43 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @hs_timing_cfg, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %43, i64 %45
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @hs_timing_cfg, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %53, i64 %55
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %52, %62
  %64 = sdiv i32 %63, 2
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %42, %3
  %66 = load i32, i32* %5, align 4
  switch i32 %66, label %87 [
    i32 129, label %67
    i32 128, label %77
  ]

67:                                               ; preds = %65
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @USE_DLY_MIN_SMPL, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @USE_DLY_MAX_SMPL, align 4
  %74 = icmp sle i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 1, i32* %9, align 4
  br label %76

76:                                               ; preds = %75, %71, %67
  br label %77

77:                                               ; preds = %65, %76
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @ENABLE_SHIFT_MIN_SMPL, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @ENABLE_SHIFT_MAX_SMPL, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 1, i32* %10, align 4
  br label %86

86:                                               ; preds = %85, %81, %77
  br label %87

87:                                               ; preds = %65, %86
  %88 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %89 = load i32, i32* @GPIO, align 4
  %90 = call i32 @mci_writel(%struct.dw_mci* %88, i32 %89, i32 0)
  %91 = call i32 @usleep_range(i32 5, i32 10)
  %92 = load i32, i32* @UHS_REG_EXT_SAMPLE_PHASE_MASK, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @FIELD_PREP(i32 %92, i32 %93)
  %95 = load i32, i32* @UHS_REG_EXT_SAMPLE_DLY_MASK, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @FIELD_PREP(i32 %95, i32 %96)
  %98 = or i32 %94, %97
  %99 = load i32, i32* @UHS_REG_EXT_SAMPLE_DRVPHASE_MASK, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @FIELD_PREP(i32 %99, i32 %100)
  %102 = or i32 %98, %101
  store i32 %102, i32* %11, align 4
  %103 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %104 = load i32, i32* @UHS_REG_EXT, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @mci_writel(%struct.dw_mci* %103, i32 %104, i32 %105)
  %107 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %108 = load i32, i32* @ENABLE_SHIFT, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @mci_writel(%struct.dw_mci* %107, i32 %108, i32 %109)
  %111 = load i32, i32* @GPIO_CLK_DIV_MASK, align 4
  %112 = load i32, i32* @GENCLK_DIV, align 4
  %113 = call i32 @FIELD_PREP(i32 %111, i32 %112)
  %114 = load i32, i32* @GPIO_USE_SAMPLE_DLY_MASK, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @FIELD_PREP(i32 %114, i32 %115)
  %117 = or i32 %113, %116
  store i32 %117, i32* %11, align 4
  %118 = load %struct.dw_mci*, %struct.dw_mci** %4, align 8
  %119 = load i32, i32* @GPIO, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* @GPIO_CLK_ENABLE, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @mci_writel(%struct.dw_mci* %118, i32 %119, i32 %122)
  %124 = call i32 @usleep_range(i32 1000, i32 2000)
  ret void
}

declare dso_local i32 @mci_writel(%struct.dw_mci*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
