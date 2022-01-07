; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_block_markbad_lowlevel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_block_markbad_lowlevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i64, i64 }
%struct.mtd_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.erase_info = type { i64, i32 }

@NAND_BBT_NO_OOB_BBM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32)* @nand_block_markbad_lowlevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_block_markbad_lowlevel(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.erase_info, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %11 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %10)
  store %struct.mtd_info* %11, %struct.mtd_info** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @NAND_BBT_NO_OOB_BBM, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %41, label %18

18:                                               ; preds = %2
  %19 = call i32 @memset(%struct.erase_info* %9, i32 0, i32 16)
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %9, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %23 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = shl i64 1, %24
  %26 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %9, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %28 = call i32 @nand_erase_nand(%struct.nand_chip* %27, %struct.erase_info* %9, i32 0)
  %29 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %30 = call i32 @nand_get_device(%struct.nand_chip* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %18
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %66

35:                                               ; preds = %18
  %36 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @nand_markbad_bbm(%struct.nand_chip* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %40 = call i32 @nand_release_device(%struct.nand_chip* %39)
  br label %41

41:                                               ; preds = %35, %2
  %42 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %43 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @nand_markbad_bbt(%struct.nand_chip* %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %52, %46
  br label %55

55:                                               ; preds = %54, %41
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %60 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %55
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %33
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @memset(%struct.erase_info*, i32, i32) #1

declare dso_local i32 @nand_erase_nand(%struct.nand_chip*, %struct.erase_info*, i32) #1

declare dso_local i32 @nand_get_device(%struct.nand_chip*) #1

declare dso_local i32 @nand_markbad_bbm(%struct.nand_chip*, i32) #1

declare dso_local i32 @nand_release_device(%struct.nand_chip*) #1

declare dso_local i32 @nand_markbad_bbt(%struct.nand_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
