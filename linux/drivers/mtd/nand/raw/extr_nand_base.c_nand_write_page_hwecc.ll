; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_write_page_hwecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_write_page_hwecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 (%struct.nand_chip.0*, i32*, i32*)*, i32 (%struct.nand_chip.1*, i32)*, i32* }
%struct.nand_chip.0 = type opaque
%struct.nand_chip.1 = type opaque
%struct.mtd_info = type { i32 }

@NAND_ECC_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @nand_write_page_hwecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_write_page_hwecc(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %19 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %18)
  store %struct.mtd_info* %19, %struct.mtd_info** %10, align 8
  %20 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  %24 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  %28 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %29 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %15, align 4
  %32 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %33 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 6
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %16, align 8
  %36 = load i32*, i32** %7, align 8
  store i32* %36, i32** %17, align 8
  %37 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @nand_prog_page_begin_op(%struct.nand_chip* %37, i32 %38, i32 0, i32* null, i32 0)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %4
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %5, align 4
  br label %119

44:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %78, %44
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %88

48:                                               ; preds = %45
  %49 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %50 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 5
  %52 = load i32 (%struct.nand_chip.1*, i32)*, i32 (%struct.nand_chip.1*, i32)** %51, align 8
  %53 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %54 = bitcast %struct.nand_chip* %53 to %struct.nand_chip.1*
  %55 = load i32, i32* @NAND_ECC_WRITE, align 4
  %56 = call i32 %52(%struct.nand_chip.1* %54, i32 %55)
  %57 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %58 = load i32*, i32** %17, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @nand_write_data_op(%struct.nand_chip* %57, i32* %58, i32 %59, i32 0)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %48
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %5, align 4
  br label %119

65:                                               ; preds = %48
  %66 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %67 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  %69 = load i32 (%struct.nand_chip.0*, i32*, i32*)*, i32 (%struct.nand_chip.0*, i32*, i32*)** %68, align 8
  %70 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %71 = bitcast %struct.nand_chip* %70 to %struct.nand_chip.0*
  %72 = load i32*, i32** %17, align 8
  %73 = load i32*, i32** %16, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = call i32 %69(%struct.nand_chip.0* %71, i32* %72, i32* %76)
  br label %78

78:                                               ; preds = %65
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32*, i32** %17, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %17, align 8
  br label %45

88:                                               ; preds = %45
  %89 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %90 = load i32*, i32** %16, align 8
  %91 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %92 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %95 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @mtd_ooblayout_set_eccbytes(%struct.mtd_info* %89, i32* %90, i32* %93, i32 0, i32 %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %88
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %5, align 4
  br label %119

103:                                              ; preds = %88
  %104 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %105 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %106 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %109 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @nand_write_data_op(%struct.nand_chip* %104, i32* %107, i32 %110, i32 0)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %103
  %115 = load i32, i32* %13, align 4
  store i32 %115, i32* %5, align 4
  br label %119

116:                                              ; preds = %103
  %117 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %118 = call i32 @nand_prog_page_end_op(%struct.nand_chip* %117)
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %116, %114, %101, %63, %42
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_prog_page_begin_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @nand_write_data_op(%struct.nand_chip*, i32*, i32, i32) #1

declare dso_local i32 @mtd_ooblayout_set_eccbytes(%struct.mtd_info*, i32*, i32*, i32, i32) #1

declare dso_local i32 @nand_prog_page_end_op(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
