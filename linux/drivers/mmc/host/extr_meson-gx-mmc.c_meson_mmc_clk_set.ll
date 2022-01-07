; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_clk_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_clk_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_host = type { i32, i64, i32, i32, i64, %struct.mmc_host* }
%struct.mmc_host = type { i32 }

@SD_EMMC_CFG = common dso_local global i64 0, align 8
@CFG_STOP_CLOCK = common dso_local global i32 0, align 4
@CFG_DDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Unable to set cfg_div_clk to %lu. ret=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"clk rate: %u Hz\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"requested rate was %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_host*, i64, i32)* @meson_mmc_clk_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_mmc_clk_set(%struct.meson_host* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.meson_host*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmc_host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.meson_host* %0, %struct.meson_host** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %12 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %11, i32 0, i32 5
  %13 = load %struct.mmc_host*, %struct.mmc_host** %12, align 8
  store %struct.mmc_host* %13, %struct.mmc_host** %8, align 8
  %14 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %15 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %21 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %137

26:                                               ; preds = %19, %3
  %27 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %28 = call i32 @meson_mmc_clk_gate(%struct.meson_host* %27)
  %29 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %30 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %32 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %137

36:                                               ; preds = %26
  %37 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %38 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SD_EMMC_CFG, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @readl(i64 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* @CFG_STOP_CLOCK, align 4
  %44 = load i32, i32* %10, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %48 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SD_EMMC_CFG, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 %46, i64 %51)
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %36
  %56 = load i64, i64* %6, align 8
  %57 = shl i64 %56, 1
  store i64 %57, i64* %6, align 8
  %58 = load i32, i32* @CFG_DDR, align 4
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  br label %66

61:                                               ; preds = %36
  %62 = load i32, i32* @CFG_DDR, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %10, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %61, %55
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %69 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SD_EMMC_CFG, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 %67, i64 %72)
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %76 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %78 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @clk_set_rate(i32 %79, i64 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %66
  %85 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %86 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @dev_err(i32 %87, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %88, i32 %89)
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %4, align 4
  br label %137

92:                                               ; preds = %66
  %93 = load i64, i64* %6, align 8
  %94 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %95 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %97 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @clk_get_rate(i32 %98)
  %100 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %101 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %92
  %105 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %106 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = lshr i64 %107, 1
  store i64 %108, i64* %106, align 8
  %109 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %110 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = ashr i32 %111, 1
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %104, %92
  %114 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %115 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %118 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = call i32 @dev_dbg(i32 %116, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %120)
  %122 = load i64, i64* %6, align 8
  %123 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %124 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = icmp ne i64 %122, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %113
  %129 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %130 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i64, i64* %6, align 8
  %133 = call i32 @dev_dbg(i32 %131, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %132)
  br label %134

134:                                              ; preds = %128, %113
  %135 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %136 = call i32 @meson_mmc_clk_ungate(%struct.meson_host* %135)
  store i32 0, i32* %4, align 4
  br label %137

137:                                              ; preds = %134, %84, %35, %25
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @meson_mmc_clk_gate(%struct.meson_host*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @meson_mmc_clk_ungate(%struct.meson_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
