; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7182_select_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7182_select_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7180_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ADV7180_REG_INPUT_CONTROL = common dso_local global i64 0, align 8
@ADV7180_REG_RST_CLAMP = common dso_local global i64 0, align 8
@ADV7180_REG_SHAP_FILTER_CTL_1 = common dso_local global i64 0, align 8
@ADV7180_FLAG_V2 = common dso_local global i32 0, align 4
@adv7280_lbias_settings = common dso_local global i32** null, align 8
@adv7182_lbias_settings = common dso_local global i32** null, align 8
@ADV7180_REG_CVBS_TRIM = common dso_local global i64 0, align 8
@ADV7180_REG_RES_CIR = common dso_local global i64 0, align 8
@ADV7180_REG_CLAMP_ADJ = common dso_local global i64 0, align 8
@ADV7180_REG_DIFF_MODE = common dso_local global i64 0, align 8
@ADV7180_REG_AGC_ADJ1 = common dso_local global i64 0, align 8
@ADV7180_REG_AGC_ADJ2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv7180_state*, i32)* @adv7182_select_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7182_select_input(%struct.adv7180_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adv7180_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adv7180_state* %0, %struct.adv7180_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.adv7180_state*, %struct.adv7180_state** %4, align 8
  %11 = load i64, i64* @ADV7180_REG_INPUT_CONTROL, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @adv7180_write(%struct.adv7180_state* %10, i64 %11, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %3, align 4
  br label %116

18:                                               ; preds = %2
  %19 = load %struct.adv7180_state*, %struct.adv7180_state** %4, align 8
  %20 = load i64, i64* @ADV7180_REG_RST_CLAMP, align 8
  %21 = call i32 @adv7180_write(%struct.adv7180_state* %19, i64 %20, i32 0)
  %22 = load %struct.adv7180_state*, %struct.adv7180_state** %4, align 8
  %23 = load i64, i64* @ADV7180_REG_RST_CLAMP, align 8
  %24 = call i32 @adv7180_write(%struct.adv7180_state* %22, i64 %23, i32 255)
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @adv7182_get_input_type(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %32 [
    i32 129, label %28
    i32 128, label %28
  ]

28:                                               ; preds = %18, %18
  %29 = load %struct.adv7180_state*, %struct.adv7180_state** %4, align 8
  %30 = load i64, i64* @ADV7180_REG_SHAP_FILTER_CTL_1, align 8
  %31 = call i32 @adv7180_write(%struct.adv7180_state* %29, i64 %30, i32 65)
  br label %36

32:                                               ; preds = %18
  %33 = load %struct.adv7180_state*, %struct.adv7180_state** %4, align 8
  %34 = load i64, i64* @ADV7180_REG_SHAP_FILTER_CTL_1, align 8
  %35 = call i32 @adv7180_write(%struct.adv7180_state* %33, i64 %34, i32 1)
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.adv7180_state*, %struct.adv7180_state** %4, align 8
  %38 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ADV7180_FLAG_V2, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load i32**, i32*** @adv7280_lbias_settings, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %7, align 8
  br label %57

51:                                               ; preds = %36
  %52 = load i32**, i32*** @adv7182_lbias_settings, align 8
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %7, align 8
  br label %57

57:                                               ; preds = %51, %45
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %77, %57
  %59 = load i32, i32* %8, align 4
  %60 = load i32**, i32*** @adv7182_lbias_settings, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @ARRAY_SIZE(i32* %62)
  %64 = icmp ult i32 %59, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %58
  %66 = load %struct.adv7180_state*, %struct.adv7180_state** %4, align 8
  %67 = load i64, i64* @ADV7180_REG_CVBS_TRIM, align 8
  %68 = load i32, i32* %8, align 4
  %69 = zext i32 %68 to i64
  %70 = add nsw i64 %67, %69
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @adv7180_write(%struct.adv7180_state* %66, i64 %70, i32 %75)
  br label %77

77:                                               ; preds = %65
  %78 = load i32, i32* %8, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %58

80:                                               ; preds = %58
  %81 = load i32, i32* %6, align 4
  %82 = icmp eq i32 %81, 128
  br i1 %82, label %83, label %99

83:                                               ; preds = %80
  %84 = load %struct.adv7180_state*, %struct.adv7180_state** %4, align 8
  %85 = load i64, i64* @ADV7180_REG_RES_CIR, align 8
  %86 = call i32 @adv7180_write(%struct.adv7180_state* %84, i64 %85, i32 168)
  %87 = load %struct.adv7180_state*, %struct.adv7180_state** %4, align 8
  %88 = load i64, i64* @ADV7180_REG_CLAMP_ADJ, align 8
  %89 = call i32 @adv7180_write(%struct.adv7180_state* %87, i64 %88, i32 144)
  %90 = load %struct.adv7180_state*, %struct.adv7180_state** %4, align 8
  %91 = load i64, i64* @ADV7180_REG_DIFF_MODE, align 8
  %92 = call i32 @adv7180_write(%struct.adv7180_state* %90, i64 %91, i32 176)
  %93 = load %struct.adv7180_state*, %struct.adv7180_state** %4, align 8
  %94 = load i64, i64* @ADV7180_REG_AGC_ADJ1, align 8
  %95 = call i32 @adv7180_write(%struct.adv7180_state* %93, i64 %94, i32 8)
  %96 = load %struct.adv7180_state*, %struct.adv7180_state** %4, align 8
  %97 = load i64, i64* @ADV7180_REG_AGC_ADJ2, align 8
  %98 = call i32 @adv7180_write(%struct.adv7180_state* %96, i64 %97, i32 160)
  br label %115

99:                                               ; preds = %80
  %100 = load %struct.adv7180_state*, %struct.adv7180_state** %4, align 8
  %101 = load i64, i64* @ADV7180_REG_RES_CIR, align 8
  %102 = call i32 @adv7180_write(%struct.adv7180_state* %100, i64 %101, i32 240)
  %103 = load %struct.adv7180_state*, %struct.adv7180_state** %4, align 8
  %104 = load i64, i64* @ADV7180_REG_CLAMP_ADJ, align 8
  %105 = call i32 @adv7180_write(%struct.adv7180_state* %103, i64 %104, i32 208)
  %106 = load %struct.adv7180_state*, %struct.adv7180_state** %4, align 8
  %107 = load i64, i64* @ADV7180_REG_DIFF_MODE, align 8
  %108 = call i32 @adv7180_write(%struct.adv7180_state* %106, i64 %107, i32 16)
  %109 = load %struct.adv7180_state*, %struct.adv7180_state** %4, align 8
  %110 = load i64, i64* @ADV7180_REG_AGC_ADJ1, align 8
  %111 = call i32 @adv7180_write(%struct.adv7180_state* %109, i64 %110, i32 156)
  %112 = load %struct.adv7180_state*, %struct.adv7180_state** %4, align 8
  %113 = load i64, i64* @ADV7180_REG_AGC_ADJ2, align 8
  %114 = call i32 @adv7180_write(%struct.adv7180_state* %112, i64 %113, i32 0)
  br label %115

115:                                              ; preds = %99, %83
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %16
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @adv7180_write(%struct.adv7180_state*, i64, i32) #1

declare dso_local i32 @adv7182_get_input_type(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
