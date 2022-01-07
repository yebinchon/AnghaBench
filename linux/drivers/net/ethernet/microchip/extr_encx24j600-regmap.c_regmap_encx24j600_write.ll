; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600-regmap.c_regmap_encx24j600_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600-regmap.c_regmap_encx24j600_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @regmap_encx24j600_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regmap_encx24j600_write(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %8, align 8
  %17 = load i64, i64* %7, align 8
  %18 = add i64 %17, -1
  store i64 %18, i64* %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp sgt i32 %19, 160
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @regmap_encx24j600_spi_write(i8* %22, i32 %23, i32* %24, i64 %25)
  store i32 %26, i32* %4, align 4
  br label %39

27:                                               ; preds = %3
  %28 = load i64, i64* %7, align 8
  %29 = icmp ugt i64 %28, 2
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %39

33:                                               ; preds = %27
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @regmap_encx24j600_sfr_write(i8* %34, i32 %35, i32* %36, i64 %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %33, %30, %21
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @regmap_encx24j600_spi_write(i8*, i32, i32*, i64) #1

declare dso_local i32 @regmap_encx24j600_sfr_write(i8*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
