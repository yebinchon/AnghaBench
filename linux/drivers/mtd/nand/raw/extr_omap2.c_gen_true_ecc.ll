; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_gen_true_ecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_gen_true_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @gen_true_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_true_ecc(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 %9, 16
  %11 = or i32 %6, %10
  %12 = load i32*, i32** %2, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 240
  %16 = shl i32 %15, 20
  %17 = or i32 %11, %16
  %18 = load i32*, i32** %2, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 15
  %22 = shl i32 %21, 8
  %23 = or i32 %17, %22
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @P64o(i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @P64e(i32 %26)
  %28 = or i32 %25, %27
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @P32o(i32 %29)
  %31 = or i32 %28, %30
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @P32e(i32 %32)
  %34 = or i32 %31, %33
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @P16o(i32 %35)
  %37 = or i32 %34, %36
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @P16e(i32 %38)
  %40 = or i32 %37, %39
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @P8o(i32 %41)
  %43 = or i32 %40, %42
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @P8e(i32 %44)
  %46 = or i32 %43, %45
  %47 = xor i32 %46, -1
  %48 = load i32*, i32** %2, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @P1024o(i32 %50)
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @P1024e(i32 %52)
  %54 = or i32 %51, %53
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @P512o(i32 %55)
  %57 = or i32 %54, %56
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @P512e(i32 %58)
  %60 = or i32 %57, %59
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @P256o(i32 %61)
  %63 = or i32 %60, %62
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @P256e(i32 %64)
  %66 = or i32 %63, %65
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @P128o(i32 %67)
  %69 = or i32 %66, %68
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @P128e(i32 %70)
  %72 = or i32 %69, %71
  %73 = xor i32 %72, -1
  %74 = load i32*, i32** %2, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @P4o(i32 %76)
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @P4e(i32 %78)
  %80 = or i32 %77, %79
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @P2o(i32 %81)
  %83 = or i32 %80, %82
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @P2e(i32 %84)
  %86 = or i32 %83, %85
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @P1o(i32 %87)
  %89 = or i32 %86, %88
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @P1e(i32 %90)
  %92 = or i32 %89, %91
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @P2048o(i32 %93)
  %95 = or i32 %92, %94
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @P2048e(i32 %96)
  %98 = or i32 %95, %97
  %99 = xor i32 %98, -1
  %100 = load i32*, i32** %2, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  store i32 %99, i32* %101, align 4
  ret void
}

declare dso_local i32 @P64o(i32) #1

declare dso_local i32 @P64e(i32) #1

declare dso_local i32 @P32o(i32) #1

declare dso_local i32 @P32e(i32) #1

declare dso_local i32 @P16o(i32) #1

declare dso_local i32 @P16e(i32) #1

declare dso_local i32 @P8o(i32) #1

declare dso_local i32 @P8e(i32) #1

declare dso_local i32 @P1024o(i32) #1

declare dso_local i32 @P1024e(i32) #1

declare dso_local i32 @P512o(i32) #1

declare dso_local i32 @P512e(i32) #1

declare dso_local i32 @P256o(i32) #1

declare dso_local i32 @P256e(i32) #1

declare dso_local i32 @P128o(i32) #1

declare dso_local i32 @P128e(i32) #1

declare dso_local i32 @P4o(i32) #1

declare dso_local i32 @P4e(i32) #1

declare dso_local i32 @P2o(i32) #1

declare dso_local i32 @P2e(i32) #1

declare dso_local i32 @P1o(i32) #1

declare dso_local i32 @P1e(i32) #1

declare dso_local i32 @P2048o(i32) #1

declare dso_local i32 @P2048e(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
