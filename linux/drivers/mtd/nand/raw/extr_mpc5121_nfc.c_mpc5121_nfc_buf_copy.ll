; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mpc5121_nfc.c_mpc5121_nfc_buf_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mpc5121_nfc.c_mpc5121_nfc_buf_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64 }
%struct.nand_chip = type { i32 }
%struct.mpc5121_nfc_prv = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32*, i32, i32)* @mpc5121_nfc_buf_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc5121_nfc_buf_copy(%struct.mtd_info* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nand_chip*, align 8
  %10 = alloca %struct.mpc5121_nfc_prv*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %14 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %13)
  store %struct.nand_chip* %14, %struct.nand_chip** %9, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %16 = call %struct.mpc5121_nfc_prv* @nand_get_controller_data(%struct.nand_chip* %15)
  store %struct.mpc5121_nfc_prv* %16, %struct.mpc5121_nfc_prv** %10, align 8
  %17 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %10, align 8
  %18 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %11, align 8
  %20 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %10, align 8
  %21 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %4
  %25 = load i64, i64* %11, align 8
  %26 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %27 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %25, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %24, %4
  %31 = load i64, i64* %11, align 8
  %32 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %33 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %31, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %38 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %11, align 8
  %41 = sub nsw i64 %40, %39
  store i64 %41, i64* %11, align 8
  br label %42

42:                                               ; preds = %36, %30
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %10, align 8
  %46 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @mpc5121_nfc_copy_spare(%struct.mtd_info* %49, i64 %50, i32* %51, i32 %52, i32 %53)
  br label %111

55:                                               ; preds = %24
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %59 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %11, align 8
  %62 = sub nsw i64 %60, %61
  %63 = call i64 @min(i64 %57, i64 %62)
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %10, align 8
  %66 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, %64
  store i64 %68, i64* %66, align 8
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %55
  %72 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %10, align 8
  %73 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @NFC_MAIN_AREA(i32 0)
  %76 = add nsw i64 %74, %75
  %77 = load i64, i64* %11, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i32*, i32** %6, align 8
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @memcpy_toio(i64 %78, i32* %79, i64 %80)
  br label %93

82:                                               ; preds = %55
  %83 = load i32*, i32** %6, align 8
  %84 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %10, align 8
  %85 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @NFC_MAIN_AREA(i32 0)
  %88 = add nsw i64 %86, %87
  %89 = load i64, i64* %11, align 8
  %90 = add nsw i64 %88, %89
  %91 = load i64, i64* %12, align 8
  %92 = call i32 @memcpy_fromio(i32* %83, i64 %90, i64 %91)
  br label %93

93:                                               ; preds = %82, %71
  %94 = load i64, i64* %12, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp ne i64 %94, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %93
  %99 = load i64, i64* %12, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 %99
  store i32* %101, i32** %6, align 8
  %102 = load i64, i64* %12, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = sub nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %7, align 4
  %107 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %8, align 4
  call void @mpc5121_nfc_buf_copy(%struct.mtd_info* %107, i32* %108, i32 %109, i32 %110)
  br label %111

111:                                              ; preds = %42, %98, %93
  ret void
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.mpc5121_nfc_prv* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @mpc5121_nfc_copy_spare(%struct.mtd_info*, i64, i32*, i32, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @memcpy_toio(i64, i32*, i64) #1

declare dso_local i64 @NFC_MAIN_AREA(i32) #1

declare dso_local i32 @memcpy_fromio(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
