; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_block_bad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_block_bad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, i32*, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.nand_chip.0*, i32)* }
%struct.nand_chip.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32)* @nand_block_bad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_block_bad(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %12 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = ashr i32 %10, %13
  %15 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %16 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %14, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %20 = call i32 @nand_bbm_get_next_page(%struct.nand_chip* %19, i32 0)
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %72, %2
  %22 = load i32, i32* %7, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %77

24:                                               ; preds = %21
  %25 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %26 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.nand_chip.0*, i32)*, i32 (%struct.nand_chip.0*, i32)** %27, align 8
  %29 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %30 = bitcast %struct.nand_chip* %29 to %struct.nand_chip.0*
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %31, %32
  %34 = call i32 %28(%struct.nand_chip.0* %30, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %78

39:                                               ; preds = %24
  %40 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %41 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %44 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  %48 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %49 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 8
  %52 = zext i1 %51 to i32
  %53 = call i64 @likely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %39
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 255
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %8, align 4
  br label %67

59:                                               ; preds = %39
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @hweight8(i32 %60)
  %62 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %63 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %59, %55
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %78

72:                                               ; preds = %67
  %73 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  %76 = call i32 @nand_bbm_get_next_page(%struct.nand_chip* %73, i32 %75)
  store i32 %76, i32* %7, align 4
  br label %21

77:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %70, %37
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @nand_bbm_get_next_page(%struct.nand_chip*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @hweight8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
