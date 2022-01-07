; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2659.c_ov2659_pll_calc_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2659.c_ov2659_pll_calc_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8* }
%struct.TYPE_5__ = type { i64, i8* }
%struct.ov2659 = type { i32, %struct.TYPE_4__, %struct.i2c_client*, %struct.ov2659_platform_data* }
%struct.TYPE_4__ = type { i8*, i8*, i8* }
%struct.i2c_client = type { i32 }
%struct.ov2659_platform_data = type { i32 }

@ctrl1 = common dso_local global %struct.TYPE_6__* null, align 8
@ctrl3 = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [68 x i8] c"Actual reg config: ctrl1_reg: %02x ctrl2_reg: %02x ctrl3_reg: %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ov2659*)* @ov2659_pll_calc_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov2659_pll_calc_params(%struct.ov2659* %0) #0 {
  %2 = alloca %struct.ov2659*, align 8
  %3 = alloca %struct.ov2659_platform_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ov2659* %0, %struct.ov2659** %2, align 8
  %17 = load %struct.ov2659*, %struct.ov2659** %2, align 8
  %18 = getelementptr inbounds %struct.ov2659, %struct.ov2659* %17, i32 0, i32 3
  %19 = load %struct.ov2659_platform_data*, %struct.ov2659_platform_data** %18, align 8
  store %struct.ov2659_platform_data* %19, %struct.ov2659_platform_data** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %20 = load %struct.ov2659*, %struct.ov2659** %2, align 8
  %21 = getelementptr inbounds %struct.ov2659, %struct.ov2659* %20, i32 0, i32 2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %21, align 8
  store %struct.i2c_client* %22, %struct.i2c_client** %7, align 8
  %23 = load %struct.ov2659_platform_data*, %struct.ov2659_platform_data** %3, align 8
  %24 = getelementptr inbounds %struct.ov2659_platform_data, %struct.ov2659_platform_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %26

26:                                               ; preds = %111, %1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl1, align 8
  %28 = load i32, i32* %15, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %114

34:                                               ; preds = %26
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl1, align 8
  %36 = load i32, i32* %15, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %10, align 4
  store i32 0, i32* %16, align 4
  br label %42

42:                                               ; preds = %107, %34
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctrl3, align 8
  %44 = load i32, i32* %16, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %110

50:                                               ; preds = %42
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctrl3, align 8
  %52 = load i32, i32* %16, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %9, align 4
  store i32 1, i32* %11, align 4
  br label %58

58:                                               ; preds = %103, %50
  %59 = load i32, i32* %11, align 4
  %60 = icmp sle i32 %59, 63
  br i1 %60, label %61, label %106

61:                                               ; preds = %58
  %62 = load %struct.ov2659*, %struct.ov2659** %2, align 8
  %63 = getelementptr inbounds %struct.ov2659, %struct.ov2659* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %14, align 4
  %67 = mul nsw i32 %66, %65
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %14, align 4
  %70 = sdiv i32 %69, %68
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %14, align 4
  %73 = sdiv i32 %72, %71
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %8, align 4
  %76 = sub i32 %74, %75
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @abs(i32 %77) #3
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %85, label %82

82:                                               ; preds = %61
  %83 = load i32, i32* %12, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %102

85:                                               ; preds = %82, %61
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %12, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl1, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %4, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  store i8* %95, i8** %5, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctrl3, align 8
  %97 = load i32, i32* %16, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %6, align 8
  br label %102

102:                                              ; preds = %85, %82
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %58

106:                                              ; preds = %58
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %16, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %16, align 4
  br label %42

110:                                              ; preds = %42
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %15, align 4
  br label %26

114:                                              ; preds = %26
  %115 = load i8*, i8** %4, align 8
  %116 = load %struct.ov2659*, %struct.ov2659** %2, align 8
  %117 = getelementptr inbounds %struct.ov2659, %struct.ov2659* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  store i8* %115, i8** %118, align 8
  %119 = load i8*, i8** %5, align 8
  %120 = load %struct.ov2659*, %struct.ov2659** %2, align 8
  %121 = getelementptr inbounds %struct.ov2659, %struct.ov2659* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  store i8* %119, i8** %122, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = load %struct.ov2659*, %struct.ov2659** %2, align 8
  %125 = getelementptr inbounds %struct.ov2659, %struct.ov2659* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  store i8* %123, i8** %126, align 8
  %127 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %128 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %127, i32 0, i32 0
  %129 = load i8*, i8** %4, align 8
  %130 = load i8*, i8** %5, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = call i32 @dev_dbg(i32* %128, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i8* %129, i8* %130, i8* %131)
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
