; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_write_page_swecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_write_page_swecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 (%struct.nand_chip.0*, i32*, i32, i32)*, i32, i32 (%struct.nand_chip.1*, i32*, i32*)*, i32* }
%struct.nand_chip.0 = type opaque
%struct.nand_chip.1 = type opaque
%struct.mtd_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @nand_write_page_swecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_write_page_swecc(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  %24 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  %28 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %29 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %15, align 4
  %32 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %33 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 6
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %16, align 8
  %36 = load i32*, i32** %7, align 8
  store i32* %36, i32** %17, align 8
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %53, %4
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %37
  %41 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %42 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 5
  %44 = load i32 (%struct.nand_chip.1*, i32*, i32*)*, i32 (%struct.nand_chip.1*, i32*, i32*)** %43, align 8
  %45 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %46 = bitcast %struct.nand_chip* %45 to %struct.nand_chip.1*
  %47 = load i32*, i32** %17, align 8
  %48 = load i32*, i32** %16, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 %44(%struct.nand_chip.1* %46, i32* %47, i32* %51)
  br label %53

53:                                               ; preds = %40
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32*, i32** %17, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %17, align 8
  br label %37

63:                                               ; preds = %37
  %64 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %65 = load i32*, i32** %16, align 8
  %66 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %67 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %70 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @mtd_ooblayout_set_eccbytes(%struct.mtd_info* %64, i32* %65, i32 %68, i32 0, i32 %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %63
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %5, align 4
  br label %88

78:                                               ; preds = %63
  %79 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %80 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  %82 = load i32 (%struct.nand_chip.0*, i32*, i32, i32)*, i32 (%struct.nand_chip.0*, i32*, i32, i32)** %81, align 8
  %83 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %84 = bitcast %struct.nand_chip* %83 to %struct.nand_chip.0*
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 %82(%struct.nand_chip.0* %84, i32* %85, i32 1, i32 %86)
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %78, %76
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @mtd_ooblayout_set_eccbytes(%struct.mtd_info*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
