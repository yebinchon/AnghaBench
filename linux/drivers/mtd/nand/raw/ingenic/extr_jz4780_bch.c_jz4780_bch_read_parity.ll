; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_jz4780_bch.c_jz4780_bch_read_parity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_jz4780_bch.c_jz4780_bch_read_parity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ingenic_ecc = type { i32 }

@BCH_BHPAR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ingenic_ecc*, i8*, i64)* @jz4780_bch_read_parity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4780_bch_read_parity(%struct.ingenic_ecc* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.ingenic_ecc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ingenic_ecc* %0, %struct.ingenic_ecc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = udiv i64 %13, 4
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = urem i64 %15, 4
  store i64 %16, i64* %8, align 8
  store i32 0, i32* %12, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %9, align 8
  br label %19

19:                                               ; preds = %23, %3
  %20 = load i64, i64* %7, align 8
  %21 = add i64 %20, -1
  store i64 %21, i64* %7, align 8
  %22 = icmp ne i64 %20, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %4, align 8
  %25 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BCH_BHPAR0, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* %12, align 4
  %30 = add nsw i32 %28, %29
  %31 = call i8* @readl(i32 %30)
  %32 = ptrtoint i8* %31 to i32
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 %36, 4
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %12, align 4
  br label %19

39:                                               ; preds = %19
  %40 = load i32*, i32** %9, align 8
  store i32* %40, i32** %10, align 8
  %41 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %4, align 8
  %42 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @BCH_BHPAR0, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %45, %46
  %48 = call i8* @readl(i32 %47)
  %49 = ptrtoint i8* %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = load i64, i64* %8, align 8
  switch i64 %50, label %68 [
    i64 3, label %51
    i64 2, label %57
    i64 1, label %63
  ]

51:                                               ; preds = %39
  %52 = load i32, i32* %11, align 4
  %53 = ashr i32 %52, 16
  %54 = and i32 %53, 255
  %55 = load i32*, i32** %10, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %39, %51
  %58 = load i32, i32* %11, align 4
  %59 = ashr i32 %58, 8
  %60 = and i32 %59, 255
  %61 = load i32*, i32** %10, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %39, %57
  %64 = load i32, i32* %11, align 4
  %65 = and i32 %64, 255
  %66 = load i32*, i32** %10, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %39, %63
  ret void
}

declare dso_local i8* @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
