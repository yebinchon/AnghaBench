; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-s3c.c_sdhci_s3c_consider_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-s3c.c_sdhci_s3c_consider_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_s3c = type { i64*, %struct.TYPE_2__*, i64, %struct.clk** }
%struct.TYPE_2__ = type { i32 }
%struct.clk = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"clk %d: rate %ld, min rate %lu > wanted %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"clk %d: rate %ld, want %d, got %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_s3c*, i32, i32)* @sdhci_s3c_consider_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_s3c_consider_clock(%struct.sdhci_s3c* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_s3c*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.clk*, align 8
  %10 = alloca i32, align 4
  store %struct.sdhci_s3c* %0, %struct.sdhci_s3c** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %5, align 8
  %12 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %11, i32 0, i32 3
  %13 = load %struct.clk**, %struct.clk*** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.clk*, %struct.clk** %13, i64 %15
  %17 = load %struct.clk*, %struct.clk** %16, align 8
  store %struct.clk* %17, %struct.clk** %9, align 8
  %18 = load %struct.clk*, %struct.clk** %9, align 8
  %19 = call i64 @IS_ERR(%struct.clk* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @UINT_MAX, align 4
  store i32 %22, i32* %4, align 4
  br label %99

23:                                               ; preds = %3
  %24 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %5, align 8
  %25 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.clk*, %struct.clk** %9, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @clk_round_rate(%struct.clk* %29, i32 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = load i64, i64* %8, align 8
  %35 = sub i64 %33, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %4, align 4
  br label %99

37:                                               ; preds = %23
  %38 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %5, align 8
  %39 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %8, align 8
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %58, %37
  %46 = load i32, i32* %10, align 4
  %47 = icmp sle i32 %46, 8
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load i64, i64* %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = lshr i64 %49, %51
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = icmp ule i64 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %61

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %45

61:                                               ; preds = %56, %45
  %62 = load i32, i32* %10, align 4
  %63 = icmp sgt i32 %62, 8
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %5, align 8
  %66 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %6, align 4
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %8, align 8
  %72 = udiv i64 %71, 256
  %73 = trunc i64 %72 to i32
  %74 = load i32, i32* %7, align 4
  %75 = zext i32 %74 to i64
  %76 = call i32 @dev_dbg(i32* %68, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %69, i64 %70, i32 %73, i64 %75)
  %77 = load i32, i32* @UINT_MAX, align 4
  store i32 %77, i32* %4, align 4
  br label %99

78:                                               ; preds = %61
  %79 = load %struct.sdhci_s3c*, %struct.sdhci_s3c** %5, align 8
  %80 = getelementptr inbounds %struct.sdhci_s3c, %struct.sdhci_s3c* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %6, align 4
  %84 = load i64, i64* %8, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i64, i64* %8, align 8
  %87 = load i32, i32* %10, align 4
  %88 = zext i32 %87 to i64
  %89 = lshr i64 %86, %88
  %90 = call i32 @dev_dbg(i32* %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %83, i64 %84, i32 %85, i64 %89)
  %91 = load i32, i32* %7, align 4
  %92 = zext i32 %91 to i64
  %93 = load i64, i64* %8, align 8
  %94 = load i32, i32* %10, align 4
  %95 = zext i32 %94 to i64
  %96 = lshr i64 %93, %95
  %97 = sub i64 %92, %96
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %78, %64, %28, %21
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i64 @clk_round_rate(%struct.clk*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
