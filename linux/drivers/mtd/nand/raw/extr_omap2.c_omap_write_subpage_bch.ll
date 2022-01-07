; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_write_subpage_bch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_write_subpage_bch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.nand_chip.0*, i32*, i32)* }
%struct.nand_chip.0 = type opaque
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32*, i32 (%struct.nand_chip.1*, i32)* }
%struct.nand_chip.1 = type opaque
%struct.mtd_info = type { i32, i32 }

@NAND_ECC_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, i32, i32*, i32, i32)* @omap_write_subpage_bch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_write_subpage_bch(%struct.nand_chip* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mtd_info*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %23 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %24 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %23)
  store %struct.mtd_info* %24, %struct.mtd_info** %14, align 8
  %25 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %26 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %15, align 8
  %29 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %30 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %16, align 4
  %33 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %34 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %17, align 4
  %37 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %38 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %16, align 4
  %43 = sdiv i32 %41, %42
  store i32 %43, i32* %19, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %44, %45
  %47 = sub nsw i32 %46, 1
  %48 = load i32, i32* %16, align 4
  %49 = sdiv i32 %47, %48
  store i32 %49, i32* %20, align 4
  store i32 0, i32* %22, align 4
  %50 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @nand_prog_page_begin_op(%struct.nand_chip* %50, i32 %51, i32 0, i32* null, i32 0)
  %53 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %54 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 5
  %56 = load i32 (%struct.nand_chip.1*, i32)*, i32 (%struct.nand_chip.1*, i32)** %55, align 8
  %57 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %58 = bitcast %struct.nand_chip* %57 to %struct.nand_chip.1*
  %59 = load i32, i32* @NAND_ECC_WRITE, align 4
  %60 = call i32 %56(%struct.nand_chip.1* %58, i32 %59)
  %61 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %62 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32 (%struct.nand_chip.0*, i32*, i32)*, i32 (%struct.nand_chip.0*, i32*, i32)** %63, align 8
  %65 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %66 = bitcast %struct.nand_chip* %65 to %struct.nand_chip.0*
  %67 = load i32*, i32** %11, align 8
  %68 = load %struct.mtd_info*, %struct.mtd_info** %14, align 8
  %69 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 %64(%struct.nand_chip.0* %66, i32* %67, i32 %70)
  store i32 0, i32* %21, align 4
  br label %72

72:                                               ; preds = %108, %6
  %73 = load i32, i32* %21, align 4
  %74 = load i32, i32* %18, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %111

76:                                               ; preds = %72
  %77 = load i32, i32* %21, align 4
  %78 = load i32, i32* %19, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %21, align 4
  %82 = load i32, i32* %20, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80, %76
  %85 = load i32*, i32** %15, align 8
  %86 = load i32, i32* %17, align 4
  %87 = call i32 @memset(i32* %85, i32 255, i32 %86)
  br label %94

88:                                               ; preds = %80
  %89 = load %struct.mtd_info*, %struct.mtd_info** %14, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = load i32*, i32** %15, align 8
  %92 = load i32, i32* %21, align 4
  %93 = call i32 @_omap_calculate_ecc_bch(%struct.mtd_info* %89, i32* %90, i32* %91, i32 %92)
  store i32 %93, i32* %22, align 4
  br label %94

94:                                               ; preds = %88, %84
  %95 = load i32, i32* %22, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* %22, align 4
  store i32 %98, i32* %7, align 4
  br label %146

99:                                               ; preds = %94
  %100 = load i32, i32* %16, align 4
  %101 = load i32*, i32** %11, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32* %103, i32** %11, align 8
  %104 = load i32, i32* %17, align 4
  %105 = load i32*, i32** %15, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %15, align 8
  br label %108

108:                                              ; preds = %99
  %109 = load i32, i32* %21, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %21, align 4
  br label %72

111:                                              ; preds = %72
  %112 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %113 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  store i32* %115, i32** %15, align 8
  %116 = load %struct.mtd_info*, %struct.mtd_info** %14, align 8
  %117 = load i32*, i32** %15, align 8
  %118 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %119 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %122 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @mtd_ooblayout_set_eccbytes(%struct.mtd_info* %116, i32* %117, i32* %120, i32 0, i32 %124)
  store i32 %125, i32* %22, align 4
  %126 = load i32, i32* %22, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %111
  %129 = load i32, i32* %22, align 4
  store i32 %129, i32* %7, align 4
  br label %146

130:                                              ; preds = %111
  %131 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %132 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32 (%struct.nand_chip.0*, i32*, i32)*, i32 (%struct.nand_chip.0*, i32*, i32)** %133, align 8
  %135 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %136 = bitcast %struct.nand_chip* %135 to %struct.nand_chip.0*
  %137 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %138 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.mtd_info*, %struct.mtd_info** %14, align 8
  %141 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 %134(%struct.nand_chip.0* %136, i32* %139, i32 %142)
  %144 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %145 = call i32 @nand_prog_page_end_op(%struct.nand_chip* %144)
  store i32 %145, i32* %7, align 4
  br label %146

146:                                              ; preds = %130, %128, %97
  %147 = load i32, i32* %7, align 4
  ret i32 %147
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @nand_prog_page_begin_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @_omap_calculate_ecc_bch(%struct.mtd_info*, i32*, i32*, i32) #1

declare dso_local i32 @mtd_ooblayout_set_eccbytes(%struct.mtd_info*, i32*, i32*, i32, i32) #1

declare dso_local i32 @nand_prog_page_end_op(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
