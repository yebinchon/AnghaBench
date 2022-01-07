; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsl_elbc_nand.c_fsl_elbc_ooblayout_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsl_elbc_nand.c_fsl_elbc_ooblayout_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32 }
%struct.mtd_oob_region = type { i32, i32 }
%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fsl_elbc_mtd = type { i32 }

@ERANGE = common dso_local global i32 0, align 4
@FMR_ECCM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* @fsl_elbc_ooblayout_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_elbc_ooblayout_free(%struct.mtd_info* %0, i32 %1, %struct.mtd_oob_region* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_oob_region*, align 8
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca %struct.fsl_elbc_mtd*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mtd_oob_region* %2, %struct.mtd_oob_region** %7, align 8
  %10 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %11 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %10)
  store %struct.nand_chip* %11, %struct.nand_chip** %8, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %13 = call %struct.fsl_elbc_mtd* @nand_get_controller_data(%struct.nand_chip* %12)
  store %struct.fsl_elbc_mtd* %13, %struct.fsl_elbc_mtd** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %16 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %14, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @ERANGE, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %84

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %49, label %26

26:                                               ; preds = %23
  %27 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %28 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %30 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 512
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %35 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %33, %26
  %39 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %9, align 8
  %40 = getelementptr inbounds %struct.fsl_elbc_mtd, %struct.fsl_elbc_mtd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @FMR_ECCM, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 7, i32 5
  %47 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %48 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %83

49:                                               ; preds = %23
  %50 = load i32, i32* %6, align 4
  %51 = mul nsw i32 16, %50
  %52 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %9, align 8
  %53 = getelementptr inbounds %struct.fsl_elbc_mtd, %struct.fsl_elbc_mtd* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @FMR_ECCM, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 5, i32 7
  %60 = sub nsw i32 %51, %59
  %61 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %62 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %65 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %63, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %49
  %70 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %71 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %70, i32 0, i32 1
  store i32 13, i32* %71, align 4
  br label %82

72:                                               ; preds = %49
  %73 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %74 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %77 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %75, %78
  %80 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %81 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %72, %69
  br label %83

83:                                               ; preds = %82, %38
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %20
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.fsl_elbc_mtd* @nand_get_controller_data(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
