; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec-g12a.c_meson_ao_cec_g12a_dualdiv_clk_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec-g12a.c_meson_ao_cec_g12a_dualdiv_clk_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.meson_ao_cec_g12a_dualdiv_clk = type { i32 }

@CECB_CLK_CNTL_REG0 = common dso_local global i32 0, align 4
@CECB_CLK_CNTL_BYPASS_EN = common dso_local global i32 0, align 4
@CECB_CLK_CNTL_DUAL_EN = common dso_local global i32 0, align 4
@CECB_CLK_CNTL_N1 = common dso_local global i32 0, align 4
@CECB_CLK_CNTL_N2 = common dso_local global i32 0, align 4
@CECB_CLK_CNTL_M1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @meson_ao_cec_g12a_dualdiv_clk_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @meson_ao_cec_g12a_dualdiv_clk_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.meson_ao_cec_g12a_dualdiv_clk*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %17 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %18 = call %struct.meson_ao_cec_g12a_dualdiv_clk* @hw_to_meson_ao_cec_g12a_dualdiv_clk(%struct.clk_hw* %17)
  store %struct.meson_ao_cec_g12a_dualdiv_clk* %18, %struct.meson_ao_cec_g12a_dualdiv_clk** %6, align 8
  %19 = load %struct.meson_ao_cec_g12a_dualdiv_clk*, %struct.meson_ao_cec_g12a_dualdiv_clk** %6, align 8
  %20 = getelementptr inbounds %struct.meson_ao_cec_g12a_dualdiv_clk, %struct.meson_ao_cec_g12a_dualdiv_clk* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CECB_CLK_CNTL_REG0, align 4
  %23 = call i32 @regmap_read(i32 %21, i32 %22, i32* %8)
  %24 = load %struct.meson_ao_cec_g12a_dualdiv_clk*, %struct.meson_ao_cec_g12a_dualdiv_clk** %6, align 8
  %25 = getelementptr inbounds %struct.meson_ao_cec_g12a_dualdiv_clk, %struct.meson_ao_cec_g12a_dualdiv_clk* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CECB_CLK_CNTL_REG0, align 4
  %28 = call i32 @regmap_read(i32 %26, i32 %27, i32* %9)
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @CECB_CLK_CNTL_BYPASS_EN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i64, i64* %5, align 8
  store i64 %34, i64* %3, align 8
  br label %96

35:                                               ; preds = %2
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @CECB_CLK_CNTL_DUAL_EN, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %87

40:                                               ; preds = %35
  %41 = load i32, i32* @CECB_CLK_CNTL_N1, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @FIELD_GET(i32 %41, i32 %42)
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %7, align 8
  %46 = load i32, i32* @CECB_CLK_CNTL_N2, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @FIELD_GET(i32 %46, i32 %47)
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %10, align 8
  %51 = load i32, i32* @CECB_CLK_CNTL_M1, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @FIELD_GET(i32 %51, i32 %52)
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %11, align 8
  %56 = load i32, i32* @CECB_CLK_CNTL_M1, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @FIELD_GET(i32 %56, i32 %57)
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i64 @DIV_ROUND_CLOSEST(i64 %61, i64 %62)
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i64 @DIV_ROUND_CLOSEST(i64 %64, i64 %65)
  store i64 %66, i64* %14, align 8
  %67 = load i64, i64* %11, align 8
  %68 = mul i64 100000000, %67
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %12, align 8
  %72 = add i64 %70, %71
  %73 = mul i64 %69, %72
  %74 = call i64 @DIV_ROUND_CLOSEST(i64 %68, i64 %73)
  store i64 %74, i64* %15, align 8
  %75 = load i64, i64* %12, align 8
  %76 = mul i64 100000000, %75
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* %12, align 8
  %80 = add i64 %78, %79
  %81 = mul i64 %77, %80
  %82 = call i64 @DIV_ROUND_CLOSEST(i64 %76, i64 %81)
  store i64 %82, i64* %16, align 8
  %83 = load i64, i64* %15, align 8
  %84 = load i64, i64* %16, align 8
  %85 = add i64 %83, %84
  %86 = call i64 @DIV_ROUND_UP(i32 100000000, i64 %85)
  store i64 %86, i64* %3, align 8
  br label %96

87:                                               ; preds = %35
  %88 = load i32, i32* @CECB_CLK_CNTL_N1, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @FIELD_GET(i32 %88, i32 %89)
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %7, align 8
  %93 = load i64, i64* %5, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i64 @DIV_ROUND_CLOSEST(i64 %93, i64 %94)
  store i64 %95, i64* %3, align 8
  br label %96

96:                                               ; preds = %87, %40, %33
  %97 = load i64, i64* %3, align 8
  ret i64 %97
}

declare dso_local %struct.meson_ao_cec_g12a_dualdiv_clk* @hw_to_meson_ao_cec_g12a_dualdiv_clk(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i64) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
