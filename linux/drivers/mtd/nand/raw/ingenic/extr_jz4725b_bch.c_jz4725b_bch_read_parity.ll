; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_jz4725b_bch.c_jz4725b_bch_read_parity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_jz4725b_bch.c_jz4725b_bch_read_parity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ingenic_ecc = type { i32 }

@BCH_BHPAR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ingenic_ecc*, i32*, i64)* @jz4725b_bch_read_parity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4725b_bch_read_parity(%struct.ingenic_ecc* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.ingenic_ecc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ingenic_ecc* %0, %struct.ingenic_ecc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = udiv i64 %13, 4
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = urem i64 %15, 4
  store i64 %16, i64* %8, align 8
  store i32 0, i32* %12, align 4
  %17 = load i32*, i32** %5, align 8
  store i32* %17, i32** %9, align 8
  br label %18

18:                                               ; preds = %22, %3
  %19 = load i64, i64* %7, align 8
  %20 = add i64 %19, -1
  store i64 %20, i64* %7, align 8
  %21 = icmp ne i64 %19, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %4, align 8
  %24 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BCH_BHPAR0, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* %12, align 4
  %29 = add nsw i32 %27, %28
  %30 = call i8* @readl_relaxed(i32 %29)
  %31 = ptrtoint i8* %30 to i32
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 %35, 4
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %12, align 4
  br label %18

38:                                               ; preds = %18
  %39 = load i32*, i32** %9, align 8
  store i32* %39, i32** %10, align 8
  %40 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %4, align 8
  %41 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @BCH_BHPAR0, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %44, %45
  %47 = call i8* @readl_relaxed(i32 %46)
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %11, align 4
  %49 = load i64, i64* %8, align 8
  switch i64 %49, label %67 [
    i64 3, label %50
    i64 2, label %56
    i64 1, label %62
  ]

50:                                               ; preds = %38
  %51 = load i32, i32* %11, align 4
  %52 = ashr i32 %51, 16
  %53 = and i32 %52, 255
  %54 = load i32*, i32** %10, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %38, %50
  %57 = load i32, i32* %11, align 4
  %58 = ashr i32 %57, 8
  %59 = and i32 %58, 255
  %60 = load i32*, i32** %10, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %38, %56
  %63 = load i32, i32* %11, align 4
  %64 = and i32 %63, 255
  %65 = load i32*, i32** %10, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %38, %62
  ret void
}

declare dso_local i8* @readl_relaxed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
