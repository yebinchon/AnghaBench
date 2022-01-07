; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_cs_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_cs_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmnand_controller = type { i32, i64*, i64*, i64* }

@BRCMNAND_CS0_BASE = common dso_local global i64 0, align 8
@BRCMNAND_CS1_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.brcmnand_controller*, i32, i32)* @brcmnand_cs_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @brcmnand_cs_offset(%struct.brcmnand_controller* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.brcmnand_controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.brcmnand_controller* %0, %struct.brcmnand_controller** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %12 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %11, i32 0, i32 3
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @BRCMNAND_CS0_BASE, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %18 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %17, i32 0, i32 3
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @BRCMNAND_CS1_BASE, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %3
  %26 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %27 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %26, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %32 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %10, align 8
  br label %46

38:                                               ; preds = %25, %3
  %39 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %40 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %10, align 8
  br label %46

46:                                               ; preds = %38, %30
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %46
  %50 = load i64, i64* %9, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load i64, i64* %9, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sub nsw i32 %54, 1
  %56 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %57 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %55, %58
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %53, %60
  %62 = load i64, i64* %10, align 8
  %63 = add nsw i64 %61, %62
  store i64 %63, i64* %4, align 8
  br label %75

64:                                               ; preds = %49, %46
  %65 = load i64, i64* %8, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %5, align 8
  %68 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 %66, %69
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %65, %71
  %73 = load i64, i64* %10, align 8
  %74 = add nsw i64 %72, %73
  store i64 %74, i64* %4, align 8
  br label %75

75:                                               ; preds = %64, %52
  %76 = load i64, i64* %4, align 8
  ret i64 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
