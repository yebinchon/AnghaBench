; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tango_nand.c_check_erased_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tango_nand.c_check_erased_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.mtd_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@BBM_SIZE = common dso_local global i32 0, align 4
@METADATA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*)* @check_erased_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_erased_page(%struct.nand_chip* %0, i32* %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %15 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %14)
  store %struct.mtd_info* %15, %struct.mtd_info** %5, align 8
  %16 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %17 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @BBM_SIZE, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32* %21, i32** %6, align 8
  %22 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %23 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @BBM_SIZE, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* @METADATA_SIZE, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32* %30, i32** %7, align 8
  %31 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %8, align 4
  %35 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %36 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %92, %2
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %42 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %95

46:                                               ; preds = %39
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @METADATA_SIZE, align 4
  br label %52

52:                                               ; preds = %50, %49
  %53 = phi i32 [ 0, %49 ], [ %51, %50 ]
  store i32 %53, i32* %12, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %61 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @nand_check_erased_ecc_chunk(i32* %54, i32 %55, i32* %56, i32 %57, i32* %58, i32 %59, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %52
  %68 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %69 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %80

73:                                               ; preds = %52
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %76 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, %74
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %73, %67
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @max(i32 %81, i32 %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32*, i32** %4, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %4, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32* %91, i32** %7, align 8
  br label %92

92:                                               ; preds = %80
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  br label %39

95:                                               ; preds = %39
  %96 = load i32, i32* %13, align 4
  ret i32 %96
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_check_erased_ecc_chunk(i32*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
