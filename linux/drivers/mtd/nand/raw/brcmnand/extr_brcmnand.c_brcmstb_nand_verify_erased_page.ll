; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmstb_nand_verify_erased_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmstb_nand_verify_erased_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.nand_chip = type { i32, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32, i32 (%struct.nand_chip.0*, i8*, i32, i32)*, i32, i32 }
%struct.nand_chip.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_chip*, i8*, i32)* @brcmstb_nand_verify_erased_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_nand_verify_erased_page(%struct.mtd_info* %0, %struct.nand_chip* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %18 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %22 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = ashr i32 %20, %23
  store i32 %24, i32* %14, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %29 = call i8* @nand_get_data_buf(%struct.nand_chip* %28)
  store i8* %29, i8** %8, align 8
  br label %30

30:                                               ; preds = %27, %4
  %31 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %32 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %35 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sdiv i32 %33, %37
  store i32 %38, i32* %11, align 4
  %39 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %40 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32 (%struct.nand_chip.0*, i8*, i32, i32)*, i32 (%struct.nand_chip.0*, i8*, i32, i32)** %41, align 8
  %43 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %44 = bitcast %struct.nand_chip* %43 to %struct.nand_chip.0*
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %14, align 4
  %47 = call i32 %42(%struct.nand_chip.0* %44, i8* %45, i32 1, i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %30
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %5, align 4
  br label %99

52:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %90, %52
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %56 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %60, label %97

60:                                               ; preds = %53
  %61 = load i8*, i8** %8, align 8
  %62 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %63 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr i8, i8* %61, i64 %68
  store i8* %69, i8** %16, align 8
  %70 = load i8*, i8** %16, align 8
  %71 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %72 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %78 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @nand_check_erased_ecc_chunk(i8* %70, i32 %74, i8* %75, i32 %76, i32* null, i32 0, i32 %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %60
  %85 = load i32, i32* %15, align 4
  store i32 %85, i32* %5, align 4
  br label %99

86:                                               ; preds = %60
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @max(i32 %87, i32 %88)
  store i32 %89, i32* %13, align 4
  br label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i8*, i8** %12, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr i8, i8* %94, i64 %95
  store i8* %96, i8** %12, align 8
  br label %53

97:                                               ; preds = %53
  %98 = load i32, i32* %13, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %97, %84, %50
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i8* @nand_get_data_buf(%struct.nand_chip*) #1

declare dso_local i32 @nand_check_erased_ecc_chunk(i8*, i32, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
