; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsl_ifc_nand.c_fsl_ifc_read_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsl_ifc_nand.c_fsl_ifc_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_ifc_nand_ctrl = type { i32 }
%struct.nand_chip = type { i32 }
%struct.mtd_info = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fsl_ifc_mtd = type { %struct.fsl_ifc_ctrl* }
%struct.fsl_ifc_ctrl = type { i32 }

@ifc_nand_ctrl = common dso_local global %struct.fsl_ifc_nand_ctrl* null, align 8
@IFC_NAND_EVTER_STAT_ECCER = common dso_local global i32 0, align 4
@IFC_NAND_EVTER_STAT_OPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @fsl_ifc_read_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_ifc_read_page(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca %struct.fsl_ifc_mtd*, align 8
  %12 = alloca %struct.fsl_ifc_ctrl*, align 8
  %13 = alloca %struct.fsl_ifc_nand_ctrl*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %15 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %14)
  store %struct.mtd_info* %15, %struct.mtd_info** %10, align 8
  %16 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %17 = call %struct.fsl_ifc_mtd* @nand_get_controller_data(%struct.nand_chip* %16)
  store %struct.fsl_ifc_mtd* %17, %struct.fsl_ifc_mtd** %11, align 8
  %18 = load %struct.fsl_ifc_mtd*, %struct.fsl_ifc_mtd** %11, align 8
  %19 = getelementptr inbounds %struct.fsl_ifc_mtd, %struct.fsl_ifc_mtd* %18, i32 0, i32 0
  %20 = load %struct.fsl_ifc_ctrl*, %struct.fsl_ifc_ctrl** %19, align 8
  store %struct.fsl_ifc_ctrl* %20, %struct.fsl_ifc_ctrl** %12, align 8
  %21 = load %struct.fsl_ifc_nand_ctrl*, %struct.fsl_ifc_nand_ctrl** @ifc_nand_ctrl, align 8
  store %struct.fsl_ifc_nand_ctrl* %21, %struct.fsl_ifc_nand_ctrl** %13, align 8
  %22 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %26 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nand_read_page_op(%struct.nand_chip* %22, i32 %23, i32 0, i32* %24, i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %4
  %32 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %33 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %34 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %37 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @fsl_ifc_read_buf(%struct.nand_chip* %32, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %31, %4
  %41 = load %struct.fsl_ifc_ctrl*, %struct.fsl_ifc_ctrl** %12, align 8
  %42 = getelementptr inbounds %struct.fsl_ifc_ctrl, %struct.fsl_ifc_ctrl* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IFC_NAND_EVTER_STAT_ECCER, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %40
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %47
  %51 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %52 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %53 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %56 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @fsl_ifc_read_buf(%struct.nand_chip* %51, i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %50, %47
  %60 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @check_erased_page(%struct.nand_chip* %60, i32* %61)
  store i32 %62, i32* %5, align 4
  br label %79

63:                                               ; preds = %40
  %64 = load %struct.fsl_ifc_ctrl*, %struct.fsl_ifc_ctrl** %12, align 8
  %65 = getelementptr inbounds %struct.fsl_ifc_ctrl, %struct.fsl_ifc_ctrl* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IFC_NAND_EVTER_STAT_OPC, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %71 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %69, %63
  %76 = load %struct.fsl_ifc_nand_ctrl*, %struct.fsl_ifc_nand_ctrl** %13, align 8
  %77 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, %struct.fsl_ifc_nand_ctrl* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %75, %59
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.fsl_ifc_mtd* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @nand_read_page_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @fsl_ifc_read_buf(%struct.nand_chip*, i32, i32) #1

declare dso_local i32 @check_erased_page(%struct.nand_chip*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
