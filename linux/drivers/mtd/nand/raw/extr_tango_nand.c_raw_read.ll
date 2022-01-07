; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tango_nand.c_raw_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tango_nand.c_raw_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mtd_info = type { i32 }

@BBM_SIZE = common dso_local global i32 0, align 4
@METADATA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32*, i32*)* @raw_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw_read(%struct.nand_chip* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %15 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %14)
  store %struct.mtd_info* %15, %struct.mtd_info** %7, align 8
  %16 = load i32*, i32** %6, align 8
  store i32* %16, i32** %8, align 8
  %17 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load i32, i32* @BBM_SIZE, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32* %35, i32** %6, align 8
  br label %36

36:                                               ; preds = %31, %3
  %37 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %38 = load i32, i32* @METADATA_SIZE, align 4
  %39 = call i32 @aux_read(%struct.nand_chip* %37, i32** %6, i32 %38, i32* %12)
  br label %40

40:                                               ; preds = %44, %36
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @aux_read(%struct.nand_chip* %45, i32** %5, i32 %46, i32* %12)
  %48 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @aux_read(%struct.nand_chip* %48, i32** %6, i32 %49, i32* %12)
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %12, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %13, align 4
  br label %40

54:                                               ; preds = %40
  %55 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @aux_read(%struct.nand_chip* %55, i32** %5, i32 %56, i32* %12)
  %58 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %59 = load i32, i32* @BBM_SIZE, align 4
  %60 = call i32 @aux_read(%struct.nand_chip* %58, i32** %8, i32 %59, i32* %12)
  %61 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %13, align 4
  %64 = sub nsw i32 %62, %63
  %65 = call i32 @aux_read(%struct.nand_chip* %61, i32** %5, i32 %64, i32* %12)
  %66 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @aux_read(%struct.nand_chip* %66, i32** %6, i32 %67, i32* %12)
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @aux_read(%struct.nand_chip*, i32**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
