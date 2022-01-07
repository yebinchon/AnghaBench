; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_jz4780_bch.c_jz4780_correct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_jz4780_bch.c_jz4780_correct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ingenic_ecc = type { i32, i64, i32 }
%struct.ingenic_ecc_params = type { i32, i32 }

@BCH_BHINT_DECF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"timed out while correcting data\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@BCH_BHINT_UNCOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"uncorrectable ECC error\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@BCH_BHINT_ERR = common dso_local global i32 0, align 4
@BCH_BHINT_ERRC_MASK = common dso_local global i32 0, align 4
@BCH_BHINT_ERRC_SHIFT = common dso_local global i32 0, align 4
@BCH_BHINT_TERRC_MASK = common dso_local global i32 0, align 4
@BCH_BHINT_TERRC_SHIFT = common dso_local global i32 0, align 4
@BCH_BHERR0 = common dso_local global i64 0, align 8
@BCH_BHERR_MASK_MASK = common dso_local global i32 0, align 4
@BCH_BHERR_MASK_SHIFT = common dso_local global i32 0, align 4
@BCH_BHERR_INDEX_MASK = common dso_local global i32 0, align 4
@BCH_BHERR_INDEX_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ingenic_ecc*, %struct.ingenic_ecc_params*, i32*, i32*)* @jz4780_correct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_correct(%struct.ingenic_ecc* %0, %struct.ingenic_ecc_params* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ingenic_ecc*, align 8
  %6 = alloca %struct.ingenic_ecc_params*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ingenic_ecc* %0, %struct.ingenic_ecc** %5, align 8
  store %struct.ingenic_ecc_params* %1, %struct.ingenic_ecc_params** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %16 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %19 = load %struct.ingenic_ecc_params*, %struct.ingenic_ecc_params** %6, align 8
  %20 = call i32 @jz4780_bch_reset(%struct.ingenic_ecc* %18, %struct.ingenic_ecc_params* %19, i32 0)
  %21 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.ingenic_ecc_params*, %struct.ingenic_ecc_params** %6, align 8
  %24 = getelementptr inbounds %struct.ingenic_ecc_params, %struct.ingenic_ecc_params* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @jz4780_bch_write_data(%struct.ingenic_ecc* %21, i32* %22, i32 %25)
  %27 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.ingenic_ecc_params*, %struct.ingenic_ecc_params** %6, align 8
  %30 = getelementptr inbounds %struct.ingenic_ecc_params, %struct.ingenic_ecc_params* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @jz4780_bch_write_data(%struct.ingenic_ecc* %27, i32* %28, i32 %31)
  %33 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %34 = load i32, i32* @BCH_BHINT_DECF, align 4
  %35 = call i32 @jz4780_bch_wait_complete(%struct.ingenic_ecc* %33, i32 %34, i32* %9)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %4
  %38 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %39 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ETIMEDOUT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %13, align 4
  br label %122

44:                                               ; preds = %4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @BCH_BHINT_UNCOR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %51 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_warn(i32 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @EBADMSG, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %13, align 4
  br label %122

56:                                               ; preds = %44
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @BCH_BHINT_ERR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %120

61:                                               ; preds = %56
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @BCH_BHINT_ERRC_MASK, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @BCH_BHINT_ERRC_SHIFT, align 4
  %66 = ashr i32 %64, %65
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @BCH_BHINT_TERRC_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @BCH_BHINT_TERRC_SHIFT, align 4
  %71 = ashr i32 %69, %70
  store i32 %71, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %116, %61
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %119

76:                                               ; preds = %72
  %77 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %78 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @BCH_BHERR0, align 8
  %81 = add nsw i64 %79, %80
  %82 = load i32, i32* %12, align 4
  %83 = mul nsw i32 %82, 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %81, %84
  %86 = call i32 @readl(i64 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @BCH_BHERR_MASK_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* @BCH_BHERR_MASK_SHIFT, align 4
  %91 = ashr i32 %89, %90
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @BCH_BHERR_INDEX_MASK, align 4
  %94 = and i32 %92, %93
  %95 = load i32, i32* @BCH_BHERR_INDEX_SHIFT, align 4
  %96 = ashr i32 %94, %95
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %11, align 4
  %100 = mul nsw i32 %99, 2
  %101 = add nsw i32 %100, 0
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = xor i32 %104, %97
  store i32 %105, i32* %103, align 4
  %106 = load i32, i32* %10, align 4
  %107 = ashr i32 %106, 8
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %11, align 4
  %110 = mul nsw i32 %109, 2
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %108, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = xor i32 %114, %107
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %76
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %72

119:                                              ; preds = %72
  br label %121

120:                                              ; preds = %56
  store i32 0, i32* %13, align 4
  br label %121

121:                                              ; preds = %120, %119
  br label %122

122:                                              ; preds = %121, %49, %37
  %123 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %124 = call i32 @jz4780_bch_disable(%struct.ingenic_ecc* %123)
  %125 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %126 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %125, i32 0, i32 0
  %127 = call i32 @mutex_unlock(i32* %126)
  %128 = load i32, i32* %13, align 4
  ret i32 %128
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @jz4780_bch_reset(%struct.ingenic_ecc*, %struct.ingenic_ecc_params*, i32) #1

declare dso_local i32 @jz4780_bch_write_data(%struct.ingenic_ecc*, i32*, i32) #1

declare dso_local i32 @jz4780_bch_wait_complete(%struct.ingenic_ecc*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @jz4780_bch_disable(%struct.ingenic_ecc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
