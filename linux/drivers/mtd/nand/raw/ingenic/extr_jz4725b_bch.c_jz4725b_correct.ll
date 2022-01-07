; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_jz4725b_bch.c_jz4725b_correct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_jz4725b_bch.c_jz4725b_correct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ingenic_ecc = type { i32, i64, i32 }
%struct.ingenic_ecc_params = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Unable to init BCH with given parameters\0A\00", align 1
@BCH_BHINT_DECF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"timed out while correcting data\0A\00", align 1
@BCH_BHINT_ALL_F = common dso_local global i32 0, align 4
@BCH_BHINT_ALL_0 = common dso_local global i32 0, align 4
@BCH_BHINT_UNCOR = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@BCH_BHINT_ERRC_MASK = common dso_local global i32 0, align 4
@BCH_BHINT_ERRC_SHIFT = common dso_local global i32 0, align 4
@BCH_BHERR_INDEX1_MASK = common dso_local global i32 0, align 4
@BCH_BHERR_INDEX1_SHIFT = common dso_local global i32 0, align 4
@BCH_BHERR0 = common dso_local global i64 0, align 8
@BCH_BHERR_INDEX0_MASK = common dso_local global i32 0, align 4
@BCH_BHERR_INDEX0_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ingenic_ecc*, %struct.ingenic_ecc_params*, i32*, i32*)* @jz4725b_correct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4725b_correct(%struct.ingenic_ecc* %0, %struct.ingenic_ecc_params* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ingenic_ecc*, align 8
  %6 = alloca %struct.ingenic_ecc_params*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ingenic_ecc* %0, %struct.ingenic_ecc** %5, align 8
  store %struct.ingenic_ecc_params* %1, %struct.ingenic_ecc_params** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %15 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %18 = load %struct.ingenic_ecc_params*, %struct.ingenic_ecc_params** %6, align 8
  %19 = call i32 @jz4725b_bch_reset(%struct.ingenic_ecc* %17, %struct.ingenic_ecc_params* %18, i32 0)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %24 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %117

27:                                               ; preds = %4
  %28 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.ingenic_ecc_params*, %struct.ingenic_ecc_params** %6, align 8
  %31 = getelementptr inbounds %struct.ingenic_ecc_params, %struct.ingenic_ecc_params* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @jz4725b_bch_write_data(%struct.ingenic_ecc* %28, i32* %29, i32 %32)
  %34 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load %struct.ingenic_ecc_params*, %struct.ingenic_ecc_params** %6, align 8
  %37 = getelementptr inbounds %struct.ingenic_ecc_params, %struct.ingenic_ecc_params* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @jz4725b_bch_write_data(%struct.ingenic_ecc* %34, i32* %35, i32 %38)
  %40 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %41 = load i32, i32* @BCH_BHINT_DECF, align 4
  %42 = call i32 @jz4725b_bch_wait_complete(%struct.ingenic_ecc* %40, i32 %41, i32* %9)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %27
  %46 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %47 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %117

50:                                               ; preds = %27
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @BCH_BHINT_ALL_F, align 4
  %53 = load i32, i32* @BCH_BHINT_ALL_0, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 0, i32* %13, align 4
  br label %117

58:                                               ; preds = %50
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @BCH_BHINT_UNCOR, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @EBADMSG, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %13, align 4
  br label %117

66:                                               ; preds = %58
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @BCH_BHINT_ERRC_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @BCH_BHINT_ERRC_SHIFT, align 4
  %71 = ashr i32 %69, %70
  store i32 %71, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %113, %66
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %116

76:                                               ; preds = %72
  %77 = load i32, i32* %12, align 4
  %78 = and i32 %77, 1
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @BCH_BHERR_INDEX1_MASK, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* @BCH_BHERR_INDEX1_SHIFT, align 4
  %85 = ashr i32 %83, %84
  store i32 %85, i32* %11, align 4
  br label %102

86:                                               ; preds = %76
  %87 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %88 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @BCH_BHERR0, align 8
  %91 = add nsw i64 %89, %90
  %92 = load i32, i32* %12, align 4
  %93 = mul i32 %92, 4
  %94 = zext i32 %93 to i64
  %95 = add nsw i64 %91, %94
  %96 = call i32 @readl(i64 %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @BCH_BHERR_INDEX0_MASK, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* @BCH_BHERR_INDEX0_SHIFT, align 4
  %101 = ashr i32 %99, %100
  store i32 %101, i32* %11, align 4
  br label %102

102:                                              ; preds = %86, %80
  %103 = load i32, i32* %11, align 4
  %104 = and i32 %103, 7
  %105 = call i32 @BIT(i32 %104)
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %11, align 4
  %108 = ashr i32 %107, 3
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = xor i32 %111, %105
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %102
  %114 = load i32, i32* %12, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %72

116:                                              ; preds = %72
  br label %117

117:                                              ; preds = %116, %63, %57, %45, %22
  %118 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %119 = call i32 @jz4725b_bch_disable(%struct.ingenic_ecc* %118)
  %120 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %121 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %120, i32 0, i32 0
  %122 = call i32 @mutex_unlock(i32* %121)
  %123 = load i32, i32* %13, align 4
  ret i32 %123
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @jz4725b_bch_reset(%struct.ingenic_ecc*, %struct.ingenic_ecc_params*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @jz4725b_bch_write_data(%struct.ingenic_ecc*, i32*, i32) #1

declare dso_local i32 @jz4725b_bch_wait_complete(%struct.ingenic_ecc*, i32, i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @jz4725b_bch_disable(%struct.ingenic_ecc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
