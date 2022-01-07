; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-dwc-qos-eth.c_tegra_eqos_fix_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-dwc-qos-eth.c_tegra_eqos_fix_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_eqos = type { i32, i32, i64 }

@.str = private unnamed_addr constant [18 x i8] c"invalid speed %u\0A\00", align 1
@SDMEMCOMPPADCTRL = common dso_local global i64 0, align 8
@SDMEMCOMPPADCTRL_PAD_E_INPUT_OR_E_PWRD = common dso_local global i32 0, align 4
@AUTO_CAL_CONFIG = common dso_local global i64 0, align 8
@AUTO_CAL_CONFIG_START = common dso_local global i32 0, align 4
@AUTO_CAL_CONFIG_ENABLE = common dso_local global i32 0, align 4
@AUTO_CAL_STATUS = common dso_local global i64 0, align 8
@AUTO_CAL_STATUS_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"calibration did not start\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"calibration didn't finish\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to set TX rate: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @tegra_eqos_fix_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_eqos_fix_speed(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_eqos*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.tegra_eqos*
  store %struct.tegra_eqos* %11, %struct.tegra_eqos** %5, align 8
  store i64 125000000, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %16 [
    i32 128, label %13
    i32 129, label %14
    i32 130, label %15
  ]

13:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  store i64 125000000, i64* %6, align 8
  br label %22

14:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  store i64 25000000, i64* %6, align 8
  br label %22

15:                                               ; preds = %2
  store i64 2500000, i64* %6, align 8
  br label %22

16:                                               ; preds = %2
  %17 = load %struct.tegra_eqos*, %struct.tegra_eqos** %5, align 8
  %18 = getelementptr inbounds %struct.tegra_eqos, %struct.tegra_eqos* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 (i32, i8*, ...) @dev_err(i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %16, %15, %14, %13
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %117

25:                                               ; preds = %22
  %26 = load %struct.tegra_eqos*, %struct.tegra_eqos** %5, align 8
  %27 = getelementptr inbounds %struct.tegra_eqos, %struct.tegra_eqos* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SDMEMCOMPPADCTRL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl(i64 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @SDMEMCOMPPADCTRL_PAD_E_INPUT_OR_E_PWRD, align 4
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.tegra_eqos*, %struct.tegra_eqos** %5, align 8
  %37 = getelementptr inbounds %struct.tegra_eqos, %struct.tegra_eqos* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SDMEMCOMPPADCTRL, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = call i32 @udelay(i32 1)
  %43 = load %struct.tegra_eqos*, %struct.tegra_eqos** %5, align 8
  %44 = getelementptr inbounds %struct.tegra_eqos, %struct.tegra_eqos* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @AUTO_CAL_CONFIG, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @readl(i64 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* @AUTO_CAL_CONFIG_START, align 4
  %50 = load i32, i32* @AUTO_CAL_CONFIG_ENABLE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.tegra_eqos*, %struct.tegra_eqos** %5, align 8
  %56 = getelementptr inbounds %struct.tegra_eqos, %struct.tegra_eqos* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AUTO_CAL_CONFIG, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  %61 = load %struct.tegra_eqos*, %struct.tegra_eqos** %5, align 8
  %62 = getelementptr inbounds %struct.tegra_eqos, %struct.tegra_eqos* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @AUTO_CAL_STATUS, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @AUTO_CAL_STATUS_ACTIVE, align 4
  %69 = and i32 %67, %68
  %70 = call i32 @readl_poll_timeout_atomic(i64 %65, i32 %66, i32 %69, i32 1, i32 10)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %25
  %74 = load %struct.tegra_eqos*, %struct.tegra_eqos** %5, align 8
  %75 = getelementptr inbounds %struct.tegra_eqos, %struct.tegra_eqos* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i32, i8*, ...) @dev_err(i32 %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %99

78:                                               ; preds = %25
  %79 = load %struct.tegra_eqos*, %struct.tegra_eqos** %5, align 8
  %80 = getelementptr inbounds %struct.tegra_eqos, %struct.tegra_eqos* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @AUTO_CAL_STATUS, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @AUTO_CAL_STATUS_ACTIVE, align 4
  %87 = and i32 %85, %86
  %88 = icmp eq i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @readl_poll_timeout_atomic(i64 %83, i32 %84, i32 %89, i32 20, i32 200)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %78
  %94 = load %struct.tegra_eqos*, %struct.tegra_eqos** %5, align 8
  %95 = getelementptr inbounds %struct.tegra_eqos, %struct.tegra_eqos* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (i32, i8*, ...) @dev_err(i32 %96, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %99

98:                                               ; preds = %78
  br label %99

99:                                               ; preds = %98, %93, %73
  %100 = load %struct.tegra_eqos*, %struct.tegra_eqos** %5, align 8
  %101 = getelementptr inbounds %struct.tegra_eqos, %struct.tegra_eqos* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @SDMEMCOMPPADCTRL, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @readl(i64 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* @SDMEMCOMPPADCTRL_PAD_E_INPUT_OR_E_PWRD, align 4
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %8, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.tegra_eqos*, %struct.tegra_eqos** %5, align 8
  %112 = getelementptr inbounds %struct.tegra_eqos, %struct.tegra_eqos* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @SDMEMCOMPPADCTRL, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @writel(i32 %110, i64 %115)
  br label %135

117:                                              ; preds = %22
  %118 = load %struct.tegra_eqos*, %struct.tegra_eqos** %5, align 8
  %119 = getelementptr inbounds %struct.tegra_eqos, %struct.tegra_eqos* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @AUTO_CAL_CONFIG, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @readl(i64 %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* @AUTO_CAL_CONFIG_ENABLE, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %8, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load %struct.tegra_eqos*, %struct.tegra_eqos** %5, align 8
  %130 = getelementptr inbounds %struct.tegra_eqos, %struct.tegra_eqos* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @AUTO_CAL_CONFIG, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @writel(i32 %128, i64 %133)
  br label %135

135:                                              ; preds = %117, %99
  %136 = load %struct.tegra_eqos*, %struct.tegra_eqos** %5, align 8
  %137 = getelementptr inbounds %struct.tegra_eqos, %struct.tegra_eqos* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i64, i64* %6, align 8
  %140 = call i32 @clk_set_rate(i32 %138, i64 %139)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %135
  %144 = load %struct.tegra_eqos*, %struct.tegra_eqos** %5, align 8
  %145 = getelementptr inbounds %struct.tegra_eqos, %struct.tegra_eqos* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = call i32 (i32, i8*, ...) @dev_err(i32 %146, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %143, %135
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @readl_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
