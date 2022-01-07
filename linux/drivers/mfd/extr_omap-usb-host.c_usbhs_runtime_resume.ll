; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_omap-usb-host.c_usbhs_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_omap-usb-host.c_usbhs_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.usbhs_hcd_omap = type { i32, i32*, i32*, i32*, i32, %struct.usbhs_omap_platform_data* }
%struct.usbhs_omap_platform_data = type { i32* }

@.str = private unnamed_addr constant [22 x i8] c"usbhs_runtime_resume\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Can't enable port %d hsic60m clk:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Can't enable port %d hsic480m clk:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Can't enable port %d clk : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @usbhs_runtime_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhs_runtime_resume(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.usbhs_hcd_omap*, align 8
  %4 = alloca %struct.usbhs_omap_platform_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.usbhs_hcd_omap* @dev_get_drvdata(%struct.device* %7)
  store %struct.usbhs_hcd_omap* %8, %struct.usbhs_hcd_omap** %3, align 8
  %9 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %10 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %9, i32 0, i32 5
  %11 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %10, align 8
  store %struct.usbhs_omap_platform_data* %11, %struct.usbhs_omap_platform_data** %4, align 8
  %12 = load %struct.device*, %struct.device** %2, align 8
  %13 = call i32 @dev_dbg(%struct.device* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %4, align 8
  %15 = call i32 @omap_tll_enable(%struct.usbhs_omap_platform_data* %14)
  %16 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %17 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @IS_ERR(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %23 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @clk_prepare_enable(i32 %24)
  br label %26

26:                                               ; preds = %21, %1
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %126, %26
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %30 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %129

33:                                               ; preds = %27
  %34 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %4, align 8
  %35 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %124 [
    i32 129, label %41
    i32 128, label %96
  ]

41:                                               ; preds = %33
  %42 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %43 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @IS_ERR(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %41
  %52 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %53 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @clk_prepare_enable(i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %51
  %63 = load %struct.device*, %struct.device** %2, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %51
  br label %68

68:                                               ; preds = %67, %41
  %69 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %70 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @IS_ERR(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %95, label %78

78:                                               ; preds = %68
  %79 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %80 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @clk_prepare_enable(i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %78
  %90 = load %struct.device*, %struct.device** %2, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @dev_err(%struct.device* %90, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %78
  br label %95

95:                                               ; preds = %94, %68
  br label %96

96:                                               ; preds = %33, %95
  %97 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %98 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @IS_ERR(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %123, label %106

106:                                              ; preds = %96
  %107 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %108 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @clk_prepare_enable(i32 %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %106
  %118 = load %struct.device*, %struct.device** %2, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @dev_err(%struct.device* %118, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %117, %106
  br label %123

123:                                              ; preds = %122, %96
  br label %125

124:                                              ; preds = %33
  br label %125

125:                                              ; preds = %124, %123
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %5, align 4
  br label %27

129:                                              ; preds = %27
  ret i32 0
}

declare dso_local %struct.usbhs_hcd_omap* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @omap_tll_enable(%struct.usbhs_omap_platform_data*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
