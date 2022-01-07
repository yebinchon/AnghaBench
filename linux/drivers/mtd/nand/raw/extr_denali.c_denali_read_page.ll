; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_read_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.denali_controller = type { i32 }
%struct.mtd_info = type { i32 }

@EBADMSG = common dso_local global i32 0, align 4
@DENALI_CAP_HW_ECC_FIXUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @denali_read_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @denali_read_page(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.denali_controller*, align 8
  %11 = alloca %struct.mtd_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %16 = call %struct.denali_controller* @to_denali_controller(%struct.nand_chip* %15)
  store %struct.denali_controller* %16, %struct.denali_controller** %10, align 8
  %17 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %18 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %17)
  store %struct.mtd_info* %18, %struct.mtd_info** %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %22 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @denali_page_xfer(%struct.nand_chip* %19, i32* %20, i32 %23, i32 %24, i32 0)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* @EBADMSG, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %5, align 4
  br label %79

35:                                               ; preds = %28, %4
  %36 = load %struct.denali_controller*, %struct.denali_controller** %10, align 8
  %37 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DENALI_CAP_HW_ECC_FIXUP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %44 = call i32 @denali_hw_ecc_fixup(%struct.nand_chip* %43, i64* %12)
  store i32 %44, i32* %13, align 4
  br label %55

45:                                               ; preds = %35
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* @EBADMSG, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @denali_sw_ecc_fixup(%struct.nand_chip* %51, i64* %12, i32* %52)
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %50, %45
  br label %55

55:                                               ; preds = %54, %42
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %5, align 4
  br label %79

60:                                               ; preds = %55
  %61 = load i64, i64* %12, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @denali_read_oob(%struct.nand_chip* %64, i32 %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %5, align 4
  br label %79

71:                                               ; preds = %63
  %72 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @denali_check_erased_page(%struct.nand_chip* %72, i32* %73, i64 %74, i32 %75)
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %71, %60
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %77, %69, %58, %33
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local %struct.denali_controller* @to_denali_controller(%struct.nand_chip*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @denali_page_xfer(%struct.nand_chip*, i32*, i32, i32, i32) #1

declare dso_local i32 @denali_hw_ecc_fixup(%struct.nand_chip*, i64*) #1

declare dso_local i32 @denali_sw_ecc_fixup(%struct.nand_chip*, i64*, i32*) #1

declare dso_local i32 @denali_read_oob(%struct.nand_chip*, i32) #1

declare dso_local i32 @denali_check_erased_page(%struct.nand_chip*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
