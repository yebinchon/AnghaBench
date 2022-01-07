; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_mmc_decode_cid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_mmc_decode_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8*, i8*, i8**, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_decode_cid(%struct.mmc_card* %0) #0 {
  %2 = alloca %struct.mmc_card*, align 8
  %3 = alloca i32*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %2, align 8
  %4 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %5 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i8* @UNSTUFF_BITS(i32* %7, i32 120, i32 8)
  %9 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %10 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 7
  store i8* %8, i8** %11, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i8* @UNSTUFF_BITS(i32* %12, i32 104, i32 16)
  %14 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %15 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 6
  store i8* %13, i8** %16, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i8* @UNSTUFF_BITS(i32* %17, i32 96, i32 8)
  %19 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %20 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 5
  %22 = load i8**, i8*** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  store i8* %18, i8** %23, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i8* @UNSTUFF_BITS(i32* %24, i32 88, i32 8)
  %26 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %27 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 5
  %29 = load i8**, i8*** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  store i8* %25, i8** %30, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = call i8* @UNSTUFF_BITS(i32* %31, i32 80, i32 8)
  %33 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %34 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 5
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 2
  store i8* %32, i8** %37, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = call i8* @UNSTUFF_BITS(i32* %38, i32 72, i32 8)
  %40 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %41 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 5
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 3
  store i8* %39, i8** %44, align 8
  %45 = load i32*, i32** %3, align 8
  %46 = call i8* @UNSTUFF_BITS(i32* %45, i32 64, i32 8)
  %47 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %48 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 5
  %50 = load i8**, i8*** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 4
  store i8* %46, i8** %51, align 8
  %52 = load i32*, i32** %3, align 8
  %53 = call i8* @UNSTUFF_BITS(i32* %52, i32 60, i32 4)
  %54 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %55 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 4
  store i8* %53, i8** %56, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = call i8* @UNSTUFF_BITS(i32* %57, i32 56, i32 4)
  %59 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %60 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  store i8* %58, i8** %61, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = call i8* @UNSTUFF_BITS(i32* %62, i32 24, i32 32)
  %64 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %65 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  store i8* %63, i8** %66, align 8
  %67 = load i32*, i32** %3, align 8
  %68 = call i8* @UNSTUFF_BITS(i32* %67, i32 12, i32 8)
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %71 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load i32*, i32** %3, align 8
  %74 = call i8* @UNSTUFF_BITS(i32* %73, i32 8, i32 4)
  %75 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %76 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i8* %74, i8** %77, align 8
  %78 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %79 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 2000
  store i32 %82, i32* %80, align 8
  ret void
}

declare dso_local i8* @UNSTUFF_BITS(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
