; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nfc_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nfc_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_nfc = type { i8*, i8*, i8*, i32, i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get core clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to get device clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"failed to get TX clk\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"failed to get RX clk\0A\00", align 1
@CLK_SELECT_NAND = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"failed to enable core clock\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"failed to enable device clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"failed to enable TX clock\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"failed to enable RX clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_nfc*)* @meson_nfc_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_nfc_clk_init(%struct.meson_nfc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.meson_nfc*, align 8
  %4 = alloca i32, align 4
  store %struct.meson_nfc* %0, %struct.meson_nfc** %3, align 8
  %5 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %6 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call i8* @devm_clk_get(i32 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %10 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %9, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %12 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @IS_ERR(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %18 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %22 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @PTR_ERR(i8* %23)
  store i32 %24, i32* %2, align 4
  br label %168

25:                                               ; preds = %1
  %26 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %27 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i8* @devm_clk_get(i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %31 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %33 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @IS_ERR(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %25
  %38 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %39 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %42 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %43 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @PTR_ERR(i8* %44)
  store i32 %45, i32* %2, align 4
  br label %168

46:                                               ; preds = %25
  %47 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %48 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @devm_clk_get(i32 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %51 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %52 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %54 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @IS_ERR(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %46
  %59 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %60 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %63 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %64 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @PTR_ERR(i8* %65)
  store i32 %66, i32* %2, align 4
  br label %168

67:                                               ; preds = %46
  %68 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %69 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i8* @devm_clk_get(i32 %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %72 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %73 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  %74 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %75 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %74, i32 0, i32 4
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @IS_ERR(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %67
  %80 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %81 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %84 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %85 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %84, i32 0, i32 4
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @PTR_ERR(i8* %86)
  store i32 %87, i32* %2, align 4
  br label %168

88:                                               ; preds = %67
  %89 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %90 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @CLK_SELECT_NAND, align 4
  %93 = load i32, i32* @CLK_SELECT_NAND, align 4
  %94 = call i32 @regmap_update_bits(i32 %91, i32 0, i32 %92, i32 %93)
  %95 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %96 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @clk_prepare_enable(i8* %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %88
  %102 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %103 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @dev_err(i32 %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %106 = load i32, i32* %4, align 4
  store i32 %106, i32* %2, align 4
  br label %168

107:                                              ; preds = %88
  %108 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %109 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @clk_prepare_enable(i8* %110)
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %116 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @dev_err(i32 %117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %162

119:                                              ; preds = %107
  %120 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %121 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @clk_prepare_enable(i8* %122)
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %4, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %119
  %127 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %128 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @dev_err(i32 %129, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %157

131:                                              ; preds = %119
  %132 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %133 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %132, i32 0, i32 4
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @clk_prepare_enable(i8* %134)
  store i32 %135, i32* %4, align 4
  %136 = load i32, i32* %4, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %131
  %139 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %140 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @dev_err(i32 %141, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  br label %152

143:                                              ; preds = %131
  %144 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %145 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @clk_set_rate(i8* %146, i32 24000000)
  store i32 %147, i32* %4, align 4
  %148 = load i32, i32* %4, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  br label %152

151:                                              ; preds = %143
  store i32 0, i32* %2, align 4
  br label %168

152:                                              ; preds = %150, %138
  %153 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %154 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %153, i32 0, i32 2
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @clk_disable_unprepare(i8* %155)
  br label %157

157:                                              ; preds = %152, %126
  %158 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %159 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @clk_disable_unprepare(i8* %160)
  br label %162

162:                                              ; preds = %157, %114
  %163 = load %struct.meson_nfc*, %struct.meson_nfc** %3, align 8
  %164 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @clk_disable_unprepare(i8* %165)
  %167 = load i32, i32* %4, align 4
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %162, %151, %101, %79, %58, %37, %16
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i8* @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @clk_set_rate(i8*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
