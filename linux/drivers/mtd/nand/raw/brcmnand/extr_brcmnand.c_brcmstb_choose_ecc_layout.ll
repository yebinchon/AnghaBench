; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmstb_choose_ecc_layout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmstb_choose_ecc_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmnand_host = type { %struct.TYPE_3__*, i32, %struct.TYPE_4__, %struct.brcmnand_cfg }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.nand_ecc_ctrl }
%struct.nand_ecc_ctrl = type { i32 }
%struct.brcmnand_cfg = type { i32, i32, i32, i32 }
%struct.mtd_info = type { i32 }

@brcmnand_hamming_ooblayout_ops = common dso_local global i32 0, align 4
@brcmnand_bch_sp_ooblayout_ops = common dso_local global i32 0, align 4
@brcmnand_bch_lp_ooblayout_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"error: ECC too large for OOB (ECC bytes %d, spare sector %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmnand_host*)* @brcmstb_choose_ecc_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_choose_ecc_layout(%struct.brcmnand_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmnand_host*, align 8
  %4 = alloca %struct.brcmnand_cfg*, align 8
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.nand_ecc_ctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.brcmnand_host* %0, %struct.brcmnand_host** %3, align 8
  %10 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %11 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %10, i32 0, i32 3
  store %struct.brcmnand_cfg* %11, %struct.brcmnand_cfg** %4, align 8
  %12 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %13 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %12, i32 0, i32 2
  %14 = call %struct.mtd_info* @nand_to_mtd(%struct.TYPE_4__* %13)
  store %struct.mtd_info* %14, %struct.mtd_info** %5, align 8
  %15 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %16 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.nand_ecc_ctrl* %17, %struct.nand_ecc_ctrl** %6, align 8
  %18 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %4, align 8
  %19 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %4, align 8
  %22 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %4, align 8
  %25 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %23, %26
  store i32 %27, i32* %8, align 4
  %28 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %4, align 8
  %29 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %4, align 8
  %32 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 512, %33
  %35 = sdiv i32 %30, %34
  store i32 %35, i32* %9, align 4
  %36 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %4, align 8
  %37 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %1
  %41 = load i32, i32* %7, align 4
  %42 = shl i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %40, %1
  %44 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %45 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %4, align 8
  %48 = call i64 @is_hamming_ecc(i32 %46, %struct.brcmnand_cfg* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load i32, i32* %9, align 4
  %52 = mul nsw i32 3, %51
  %53 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %54 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %56 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %55, i32* @brcmnand_hamming_ooblayout_ops)
  store i32 0, i32* %2, align 4
  br label %92

57:                                               ; preds = %43
  %58 = load i32, i32* %7, align 4
  %59 = mul i32 %58, 14
  %60 = call i32 @DIV_ROUND_UP(i32 %59, i32 8)
  %61 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %62 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %4, align 8
  %64 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 512
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %69 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %68, i32* @brcmnand_bch_sp_ooblayout_ops)
  br label %73

70:                                               ; preds = %57
  %71 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %72 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %71, i32* @brcmnand_bch_lp_ooblayout_ops)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %75 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %73
  %80 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %81 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %6, align 8
  %85 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @dev_err(i32* %83, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %92

91:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %79, %50
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.TYPE_4__*) #1

declare dso_local i64 @is_hamming_ecc(i32, %struct.brcmnand_cfg*) #1

declare dso_local i32 @mtd_set_ooblayout(%struct.mtd_info*, i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
