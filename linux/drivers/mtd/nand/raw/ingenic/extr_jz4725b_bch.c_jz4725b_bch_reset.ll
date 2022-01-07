; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_jz4725b_bch.c_jz4725b_bch_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_jz4725b_bch.c_jz4725b_bch_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ingenic_ecc = type { i64 }
%struct.ingenic_ecc_params = type { i32, i32, i32 }

@BCH_BHINT = common dso_local global i64 0, align 8
@BCH_BHCR_BCHE = common dso_local global i32 0, align 4
@BCH_BHCR_BSEL = common dso_local global i32 0, align 4
@BCH_BHCR_ENCE = common dso_local global i32 0, align 4
@BCH_BHCR_INIT = common dso_local global i32 0, align 4
@BCH_BHCNT_ENC_COUNT_MASK = common dso_local global i32 0, align 4
@BCH_BHCNT_ENC_COUNT_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BCH_BHCNT_DEC_COUNT_MASK = common dso_local global i32 0, align 4
@BCH_BHCNT_DEC_COUNT_SHIFT = common dso_local global i32 0, align 4
@BCH_BHCNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ingenic_ecc*, %struct.ingenic_ecc_params*, i32)* @jz4725b_bch_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4725b_bch_reset(%struct.ingenic_ecc* %0, %struct.ingenic_ecc_params* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ingenic_ecc*, align 8
  %6 = alloca %struct.ingenic_ecc_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ingenic_ecc* %0, %struct.ingenic_ecc** %5, align 8
  store %struct.ingenic_ecc_params* %1, %struct.ingenic_ecc_params** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %11 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BCH_BHINT, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  %16 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %17 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BCH_BHINT, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 %15, i64 %20)
  %22 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %23 = call i32 @jz4725b_bch_config_clear(%struct.ingenic_ecc* %22, i32 31)
  %24 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %25 = load i32, i32* @BCH_BHCR_BCHE, align 4
  %26 = call i32 @jz4725b_bch_config_set(%struct.ingenic_ecc* %24, i32 %25)
  %27 = load %struct.ingenic_ecc_params*, %struct.ingenic_ecc_params** %6, align 8
  %28 = getelementptr inbounds %struct.ingenic_ecc_params, %struct.ingenic_ecc_params* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 8
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %33 = load i32, i32* @BCH_BHCR_BSEL, align 4
  %34 = call i32 @jz4725b_bch_config_set(%struct.ingenic_ecc* %32, i32 %33)
  br label %39

35:                                               ; preds = %3
  %36 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %37 = load i32, i32* @BCH_BHCR_BSEL, align 4
  %38 = call i32 @jz4725b_bch_config_clear(%struct.ingenic_ecc* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %44 = load i32, i32* @BCH_BHCR_ENCE, align 4
  %45 = call i32 @jz4725b_bch_config_set(%struct.ingenic_ecc* %43, i32 %44)
  br label %50

46:                                               ; preds = %39
  %47 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %48 = load i32, i32* @BCH_BHCR_ENCE, align 4
  %49 = call i32 @jz4725b_bch_config_clear(%struct.ingenic_ecc* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %52 = load i32, i32* @BCH_BHCR_INIT, align 4
  %53 = call i32 @jz4725b_bch_config_set(%struct.ingenic_ecc* %51, i32 %52)
  %54 = load i32, i32* @BCH_BHCNT_ENC_COUNT_MASK, align 4
  %55 = load i32, i32* @BCH_BHCNT_ENC_COUNT_SHIFT, align 4
  %56 = ashr i32 %54, %55
  store i32 %56, i32* %9, align 4
  %57 = load %struct.ingenic_ecc_params*, %struct.ingenic_ecc_params** %6, align 8
  %58 = getelementptr inbounds %struct.ingenic_ecc_params, %struct.ingenic_ecc_params* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %105

65:                                               ; preds = %50
  %66 = load i32, i32* @BCH_BHCNT_DEC_COUNT_MASK, align 4
  %67 = load i32, i32* @BCH_BHCNT_DEC_COUNT_SHIFT, align 4
  %68 = ashr i32 %66, %67
  store i32 %68, i32* %9, align 4
  %69 = load %struct.ingenic_ecc_params*, %struct.ingenic_ecc_params** %6, align 8
  %70 = getelementptr inbounds %struct.ingenic_ecc_params, %struct.ingenic_ecc_params* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ingenic_ecc_params*, %struct.ingenic_ecc_params** %6, align 8
  %73 = getelementptr inbounds %struct.ingenic_ecc_params, %struct.ingenic_ecc_params* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %71, %74
  %76 = load i32, i32* %9, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %65
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %105

81:                                               ; preds = %65
  %82 = load %struct.ingenic_ecc_params*, %struct.ingenic_ecc_params** %6, align 8
  %83 = getelementptr inbounds %struct.ingenic_ecc_params, %struct.ingenic_ecc_params* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @BCH_BHCNT_ENC_COUNT_SHIFT, align 4
  %86 = shl i32 %84, %85
  store i32 %86, i32* %8, align 4
  %87 = load %struct.ingenic_ecc_params*, %struct.ingenic_ecc_params** %6, align 8
  %88 = getelementptr inbounds %struct.ingenic_ecc_params, %struct.ingenic_ecc_params* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ingenic_ecc_params*, %struct.ingenic_ecc_params** %6, align 8
  %91 = getelementptr inbounds %struct.ingenic_ecc_params, %struct.ingenic_ecc_params* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %89, %92
  %94 = load i32, i32* @BCH_BHCNT_DEC_COUNT_SHIFT, align 4
  %95 = shl i32 %93, %94
  %96 = load i32, i32* %8, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %100 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @BCH_BHCNT, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @writel(i32 %98, i64 %103)
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %81, %78, %62
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @jz4725b_bch_config_clear(%struct.ingenic_ecc*, i32) #1

declare dso_local i32 @jz4725b_bch_config_set(%struct.ingenic_ecc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
