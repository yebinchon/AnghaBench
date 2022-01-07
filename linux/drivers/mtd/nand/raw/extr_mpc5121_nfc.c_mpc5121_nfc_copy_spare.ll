; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mpc5121_nfc.c_mpc5121_nfc_copy_spare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mpc5121_nfc.c_mpc5121_nfc_copy_spare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32 }
%struct.nand_chip = type { i32 }
%struct.mpc5121_nfc_prv = type { i64 }

@NFC_SPARE_BUFFERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32*, i32, i32)* @mpc5121_nfc_copy_spare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc5121_nfc_copy_spare(%struct.mtd_info* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nand_chip*, align 8
  %12 = alloca %struct.mpc5121_nfc_prv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %18 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %17)
  store %struct.nand_chip* %18, %struct.nand_chip** %11, align 8
  %19 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  %20 = call %struct.mpc5121_nfc_prv* @nand_get_controller_data(%struct.nand_chip* %19)
  store %struct.mpc5121_nfc_prv* %20, %struct.mpc5121_nfc_prv** %12, align 8
  %21 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %22 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %25 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %26, 512
  %28 = sdiv i32 %23, %27
  %29 = and i32 %28, -2
  store i32 %29, i32* %15, align 4
  br label %30

30:                                               ; preds = %83, %5
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %94

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %15, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* @NFC_SPARE_BUFFERS, align 4
  %39 = sub nsw i32 %38, 1
  %40 = icmp sgt i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* @NFC_SPARE_BUFFERS, align 4
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %41, %33
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %15, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sub nsw i32 %45, %48
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %13, align 4
  %52 = sub nsw i32 %50, %51
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @min(i32 %52, i32 %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %44
  %58 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %12, align 8
  %59 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = call i64 @NFC_SPARE_AREA(i32 %61)
  %63 = add nsw i64 %60, %62
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %16, align 4
  %69 = call i32 @memcpy_toio(i64 %66, i32* %67, i32 %68)
  br label %83

70:                                               ; preds = %44
  %71 = load i32*, i32** %8, align 8
  %72 = load %struct.mpc5121_nfc_prv*, %struct.mpc5121_nfc_prv** %12, align 8
  %73 = getelementptr inbounds %struct.mpc5121_nfc_prv, %struct.mpc5121_nfc_prv* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %14, align 4
  %76 = call i64 @NFC_SPARE_AREA(i32 %75)
  %77 = add nsw i64 %74, %76
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %77, %79
  %81 = load i32, i32* %16, align 4
  %82 = call i32 @memcpy_fromio(i32* %71, i64 %80, i32 %81)
  br label %83

83:                                               ; preds = %70, %57
  %84 = load i32, i32* %16, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %8, align 8
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %9, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %9, align 4
  br label %30

94:                                               ; preds = %30
  ret void
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.mpc5121_nfc_prv* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy_toio(i64, i32*, i32) #1

declare dso_local i64 @NFC_SPARE_AREA(i32) #1

declare dso_local i32 @memcpy_fromio(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
