; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_jz4780_bch.c_jz4780_bch_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_jz4780_bch.c_jz4780_bch_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ingenic_ecc = type { i64 }

@BCH_BHDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ingenic_ecc*, i8*, i64)* @jz4780_bch_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4780_bch_write_data(%struct.ingenic_ecc* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.ingenic_ecc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.ingenic_ecc* %0, %struct.ingenic_ecc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = udiv i64 %11, 4
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = urem i64 %13, 4
  store i64 %14, i64* %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %9, align 8
  br label %17

17:                                               ; preds = %21, %3
  %18 = load i64, i64* %7, align 8
  %19 = add i64 %18, -1
  store i64 %19, i64* %7, align 8
  %20 = icmp ne i64 %18, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i32*, i32** %9, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %9, align 8
  %24 = load i32, i32* %22, align 4
  %25 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %4, align 8
  %26 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BCH_BHDR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %24, i64 %29)
  br label %17

31:                                               ; preds = %17
  %32 = load i32*, i32** %9, align 8
  store i32* %32, i32** %10, align 8
  br label %33

33:                                               ; preds = %37, %31
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %8, align 8
  %36 = icmp ne i64 %34, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i32*, i32** %10, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %10, align 8
  %40 = load i32, i32* %38, align 4
  %41 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %4, align 8
  %42 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @BCH_BHDR, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writeb(i32 %40, i64 %45)
  br label %33

47:                                               ; preds = %33
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
