; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_bch_ooblayout_free_sp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_bch_ooblayout_free_sp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.mtd_oob_region = type { i32, i32 }
%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.brcmnand_host = type { %struct.brcmnand_cfg }
%struct.brcmnand_cfg = type { i32, i32 }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* @brcmnand_bch_ooblayout_free_sp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmnand_bch_ooblayout_free_sp(%struct.mtd_info* %0, i32 %1, %struct.mtd_oob_region* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_oob_region*, align 8
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca %struct.brcmnand_host*, align 8
  %10 = alloca %struct.brcmnand_cfg*, align 8
  %11 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mtd_oob_region* %2, %struct.mtd_oob_region** %7, align 8
  %12 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %13 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %12)
  store %struct.nand_chip* %13, %struct.nand_chip** %8, align 8
  %14 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %15 = call %struct.brcmnand_host* @nand_get_controller_data(%struct.nand_chip* %14)
  store %struct.brcmnand_host* %15, %struct.brcmnand_host** %9, align 8
  %16 = load %struct.brcmnand_host*, %struct.brcmnand_host** %9, align 8
  %17 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %16, i32 0, i32 0
  store %struct.brcmnand_cfg* %17, %struct.brcmnand_cfg** %10, align 8
  %18 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %10, align 8
  %19 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.brcmnand_cfg*, %struct.brcmnand_cfg** %10, align 8
  %22 = getelementptr inbounds %struct.brcmnand_cfg, %struct.brcmnand_cfg* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %20, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %46, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %30 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %28, %32
  %34 = icmp slt i32 %33, 6
  br i1 %34, label %46, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %41 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %39, %43
  %45 = icmp eq i32 %44, 6
  br i1 %45, label %46, label %49

46:                                               ; preds = %38, %27, %3
  %47 = load i32, i32* @ERANGE, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %70

49:                                               ; preds = %38, %35
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %54 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %53, i32 0, i32 0
  store i32 0, i32* %54, align 4
  %55 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %56 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %55, i32 0, i32 1
  store i32 5, i32* %56, align 4
  br label %69

57:                                               ; preds = %49
  %58 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %59 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %58, i32 0, i32 0
  store i32 6, i32* %59, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %62 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %60, %64
  %66 = sub nsw i32 %65, 6
  %67 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %68 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %57, %52
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %46
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.brcmnand_host* @nand_get_controller_data(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
