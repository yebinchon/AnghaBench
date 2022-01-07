; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_intel-spi.c_intel_spi_is_protected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_intel-spi.c_intel_spi_is_protected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_spi = type { i32, i64 }

@PR_WPE = common dso_local global i32 0, align 4
@PR_RPE = common dso_local global i32 0, align 4
@PR_LIMIT_MASK = common dso_local global i32 0, align 4
@PR_LIMIT_SHIFT = common dso_local global i32 0, align 4
@PR_BASE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_spi*, i32, i32)* @intel_spi_is_protected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_spi_is_protected(%struct.intel_spi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_spi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_spi* %0, %struct.intel_spi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %51, %3
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.intel_spi*, %struct.intel_spi** %5, align 8
  %15 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %54

18:                                               ; preds = %12
  %19 = load %struct.intel_spi*, %struct.intel_spi** %5, align 8
  %20 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @PR(i32 %22)
  %24 = add nsw i64 %21, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @PR_WPE, align 4
  %28 = load i32, i32* @PR_RPE, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %18
  br label %51

33:                                               ; preds = %18
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @PR_LIMIT_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @PR_LIMIT_SHIFT, align 4
  %38 = lshr i32 %36, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @PR_BASE_MASK, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp uge i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %33
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ule i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %55

50:                                               ; preds = %45, %33
  br label %51

51:                                               ; preds = %50, %32
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %12

54:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %49
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @PR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
