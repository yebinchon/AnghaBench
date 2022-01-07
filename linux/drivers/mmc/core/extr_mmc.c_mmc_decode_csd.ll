; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_decode_csd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_decode_csd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, i32*, %struct.mmc_csd }
%struct.mmc_csd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"%s: unrecognised CSD structure version %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@taac_exp = common dso_local global i32* null, align 8
@taac_mant = common dso_local global i32* null, align 8
@tran_exp = common dso_local global i32* null, align 8
@tran_mant = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*)* @mmc_decode_csd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_decode_csd(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca %struct.mmc_csd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %10 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %11 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %10, i32 0, i32 2
  store %struct.mmc_csd* %11, %struct.mmc_csd** %4, align 8
  %12 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %13 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @UNSTUFF_BITS(i32* %15, i32 126, i32 2)
  %17 = load %struct.mmc_csd*, %struct.mmc_csd** %4, align 8
  %18 = getelementptr inbounds %struct.mmc_csd, %struct.mmc_csd* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.mmc_csd*, %struct.mmc_csd** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_csd, %struct.mmc_csd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %1
  %24 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %25 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @mmc_hostname(i32 %26)
  %28 = load %struct.mmc_csd*, %struct.mmc_csd** %4, align 8
  %29 = getelementptr inbounds %struct.mmc_csd, %struct.mmc_csd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %153

35:                                               ; preds = %1
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @UNSTUFF_BITS(i32* %36, i32 122, i32 4)
  %38 = load %struct.mmc_csd*, %struct.mmc_csd** %4, align 8
  %39 = getelementptr inbounds %struct.mmc_csd, %struct.mmc_csd* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @UNSTUFF_BITS(i32* %40, i32 115, i32 4)
  store i32 %41, i32* %6, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @UNSTUFF_BITS(i32* %42, i32 112, i32 3)
  store i32 %43, i32* %5, align 4
  %44 = load i32*, i32** @taac_exp, align 8
  %45 = load i32, i32* %5, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** @taac_mant, align 8
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %48, %53
  %55 = add nsw i32 %54, 9
  %56 = sdiv i32 %55, 10
  %57 = load %struct.mmc_csd*, %struct.mmc_csd** %4, align 8
  %58 = getelementptr inbounds %struct.mmc_csd, %struct.mmc_csd* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @UNSTUFF_BITS(i32* %59, i32 104, i32 8)
  %61 = mul nsw i32 %60, 100
  %62 = load %struct.mmc_csd*, %struct.mmc_csd** %4, align 8
  %63 = getelementptr inbounds %struct.mmc_csd, %struct.mmc_csd* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @UNSTUFF_BITS(i32* %64, i32 99, i32 4)
  store i32 %65, i32* %6, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @UNSTUFF_BITS(i32* %66, i32 96, i32 3)
  store i32 %67, i32* %5, align 4
  %68 = load i32*, i32** @tran_exp, align 8
  %69 = load i32, i32* %5, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** @tran_mant, align 8
  %74 = load i32, i32* %6, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %72, %77
  %79 = load %struct.mmc_csd*, %struct.mmc_csd** %4, align 8
  %80 = getelementptr inbounds %struct.mmc_csd, %struct.mmc_csd* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @UNSTUFF_BITS(i32* %81, i32 84, i32 12)
  %83 = load %struct.mmc_csd*, %struct.mmc_csd** %4, align 8
  %84 = getelementptr inbounds %struct.mmc_csd, %struct.mmc_csd* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @UNSTUFF_BITS(i32* %85, i32 47, i32 3)
  store i32 %86, i32* %5, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @UNSTUFF_BITS(i32* %87, i32 62, i32 12)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = add i32 1, %89
  %91 = load i32, i32* %5, align 4
  %92 = add i32 %91, 2
  %93 = shl i32 %90, %92
  %94 = load %struct.mmc_csd*, %struct.mmc_csd** %4, align 8
  %95 = getelementptr inbounds %struct.mmc_csd, %struct.mmc_csd* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = call i32 @UNSTUFF_BITS(i32* %96, i32 80, i32 4)
  %98 = load %struct.mmc_csd*, %struct.mmc_csd** %4, align 8
  %99 = getelementptr inbounds %struct.mmc_csd, %struct.mmc_csd* %98, i32 0, i32 7
  store i32 %97, i32* %99, align 4
  %100 = load i32*, i32** %9, align 8
  %101 = call i32 @UNSTUFF_BITS(i32* %100, i32 79, i32 1)
  %102 = load %struct.mmc_csd*, %struct.mmc_csd** %4, align 8
  %103 = getelementptr inbounds %struct.mmc_csd, %struct.mmc_csd* %102, i32 0, i32 8
  store i32 %101, i32* %103, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = call i32 @UNSTUFF_BITS(i32* %104, i32 78, i32 1)
  %106 = load %struct.mmc_csd*, %struct.mmc_csd** %4, align 8
  %107 = getelementptr inbounds %struct.mmc_csd, %struct.mmc_csd* %106, i32 0, i32 9
  store i32 %105, i32* %107, align 4
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @UNSTUFF_BITS(i32* %108, i32 77, i32 1)
  %110 = load %struct.mmc_csd*, %struct.mmc_csd** %4, align 8
  %111 = getelementptr inbounds %struct.mmc_csd, %struct.mmc_csd* %110, i32 0, i32 10
  store i32 %109, i32* %111, align 4
  %112 = load i32*, i32** %9, align 8
  %113 = call i32 @UNSTUFF_BITS(i32* %112, i32 76, i32 1)
  %114 = load %struct.mmc_csd*, %struct.mmc_csd** %4, align 8
  %115 = getelementptr inbounds %struct.mmc_csd, %struct.mmc_csd* %114, i32 0, i32 11
  store i32 %113, i32* %115, align 4
  %116 = load i32*, i32** %9, align 8
  %117 = call i32 @UNSTUFF_BITS(i32* %116, i32 26, i32 3)
  %118 = load %struct.mmc_csd*, %struct.mmc_csd** %4, align 8
  %119 = getelementptr inbounds %struct.mmc_csd, %struct.mmc_csd* %118, i32 0, i32 12
  store i32 %117, i32* %119, align 4
  %120 = load i32*, i32** %9, align 8
  %121 = call i32 @UNSTUFF_BITS(i32* %120, i32 22, i32 4)
  %122 = load %struct.mmc_csd*, %struct.mmc_csd** %4, align 8
  %123 = getelementptr inbounds %struct.mmc_csd, %struct.mmc_csd* %122, i32 0, i32 13
  store i32 %121, i32* %123, align 4
  %124 = load i32*, i32** %9, align 8
  %125 = call i32 @UNSTUFF_BITS(i32* %124, i32 21, i32 1)
  %126 = load %struct.mmc_csd*, %struct.mmc_csd** %4, align 8
  %127 = getelementptr inbounds %struct.mmc_csd, %struct.mmc_csd* %126, i32 0, i32 14
  store i32 %125, i32* %127, align 4
  %128 = load %struct.mmc_csd*, %struct.mmc_csd** %4, align 8
  %129 = getelementptr inbounds %struct.mmc_csd, %struct.mmc_csd* %128, i32 0, i32 13
  %130 = load i32, i32* %129, align 4
  %131 = icmp sge i32 %130, 9
  br i1 %131, label %132, label %152

132:                                              ; preds = %35
  %133 = load i32*, i32** %9, align 8
  %134 = call i32 @UNSTUFF_BITS(i32* %133, i32 42, i32 5)
  store i32 %134, i32* %7, align 4
  %135 = load i32*, i32** %9, align 8
  %136 = call i32 @UNSTUFF_BITS(i32* %135, i32 37, i32 5)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %7, align 4
  %138 = add i32 %137, 1
  %139 = load i32, i32* %8, align 4
  %140 = add i32 %139, 1
  %141 = mul i32 %138, %140
  %142 = load %struct.mmc_csd*, %struct.mmc_csd** %4, align 8
  %143 = getelementptr inbounds %struct.mmc_csd, %struct.mmc_csd* %142, i32 0, i32 15
  store i32 %141, i32* %143, align 4
  %144 = load %struct.mmc_csd*, %struct.mmc_csd** %4, align 8
  %145 = getelementptr inbounds %struct.mmc_csd, %struct.mmc_csd* %144, i32 0, i32 13
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %146, 9
  %148 = load %struct.mmc_csd*, %struct.mmc_csd** %4, align 8
  %149 = getelementptr inbounds %struct.mmc_csd, %struct.mmc_csd* %148, i32 0, i32 15
  %150 = load i32, i32* %149, align 4
  %151 = shl i32 %150, %147
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %132, %35
  store i32 0, i32* %2, align 4
  br label %153

153:                                              ; preds = %152, %23
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @UNSTUFF_BITS(i32*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i64) #1

declare dso_local i32 @mmc_hostname(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
