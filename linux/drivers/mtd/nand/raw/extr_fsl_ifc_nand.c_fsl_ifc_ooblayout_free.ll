; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsl_ifc_nand.c_fsl_ifc_ooblayout_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsl_ifc_nand.c_fsl_ifc_ooblayout_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32 }
%struct.mtd_oob_region = type { i32, i32 }
%struct.nand_chip = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ERANGE = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* @fsl_ifc_ooblayout_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_ifc_ooblayout_free(%struct.mtd_info* %0, i32 %1, %struct.mtd_oob_region* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_oob_region*, align 8
  %8 = alloca %struct.nand_chip*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mtd_oob_region* %2, %struct.mtd_oob_region** %7, align 8
  %9 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %10 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %9)
  store %struct.nand_chip* %10, %struct.nand_chip** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @ERANGE, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %68

16:                                               ; preds = %3
  %17 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 512
  br i1 %20, label %21, label %42

21:                                               ; preds = %16
  %22 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %23 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %33 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %35 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %34, i32 0, i32 1
  store i32 5, i32* %35, align 4
  br label %41

36:                                               ; preds = %28
  %37 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %38 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %37, i32 0, i32 0
  store i32 6, i32* %38, align 4
  %39 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %40 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %39, i32 0, i32 1
  store i32 2, i32* %40, align 4
  br label %41

41:                                               ; preds = %36, %31
  store i32 0, i32* %4, align 4
  br label %68

42:                                               ; preds = %21, %16
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %47 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %46, i32 0, i32 0
  store i32 2, i32* %47, align 4
  %48 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %49 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %48, i32 0, i32 1
  store i32 6, i32* %49, align 4
  br label %67

50:                                               ; preds = %42
  %51 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %52 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 8
  %56 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %57 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %59 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %62 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %60, %63
  %65 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %66 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %50, %45
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %41, %13
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
