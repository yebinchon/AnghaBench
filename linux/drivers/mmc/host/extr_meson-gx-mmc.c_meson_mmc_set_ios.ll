; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mmc_ios = type { i32, i32, i32 }
%struct.meson_host = type { i32, i32, i64 }

@.str = private unnamed_addr constant [34 x i8] c"failed to enable vqmmc regulator\0A\00", align 1
@CFG_BUS_WIDTH_1 = common dso_local global i32 0, align 4
@CFG_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@CFG_BUS_WIDTH_8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Invalid ios->bus_width: %u.  Setting to 4.\0A\00", align 1
@SD_EMMC_CFG = common dso_local global i64 0, align 8
@CFG_BUS_WIDTH_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to set clock: %d\0A,\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"SD_EMMC_CFG:  0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @meson_mmc_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_mmc_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.meson_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %10 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %11 = call %struct.meson_host* @mmc_priv(%struct.mmc_host* %10)
  store %struct.meson_host* %11, %struct.meson_host** %5, align 8
  %12 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %13 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %98 [
    i32 130, label %15
    i32 128, label %50
    i32 129, label %68
  ]

15:                                               ; preds = %2
  %16 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %17 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @IS_ERR(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %24 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %25 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mmc_regulator_set_ocr(%struct.mmc_host* %23, i32 %27, i32 0)
  br label %29

29:                                               ; preds = %22, %15
  %30 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %31 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @IS_ERR(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %29
  %37 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %38 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %43 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @regulator_disable(i32 %45)
  %47 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %48 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  br label %49

49:                                               ; preds = %41, %36, %29
  br label %98

50:                                               ; preds = %2
  %51 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %52 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @IS_ERR(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %50
  %58 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %59 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %60 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %64 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @mmc_regulator_set_ocr(%struct.mmc_host* %58, i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %57, %50
  br label %98

68:                                               ; preds = %2
  %69 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %70 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @IS_ERR(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %97, label %75

75:                                               ; preds = %68
  %76 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %77 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %97, label %80

80:                                               ; preds = %75
  %81 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %82 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @regulator_enable(i32 %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %80
  %89 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %90 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32, i8*, ...) @dev_err(i32 %91, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %96

93:                                               ; preds = %80
  %94 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %95 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %93, %88
  br label %97

97:                                               ; preds = %96, %75, %68
  br label %98

98:                                               ; preds = %2, %97, %67, %49
  %99 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %100 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  switch i32 %101, label %108 [
    i32 133, label %102
    i32 132, label %104
    i32 131, label %106
  ]

102:                                              ; preds = %98
  %103 = load i32, i32* @CFG_BUS_WIDTH_1, align 4
  store i32 %103, i32* %6, align 4
  br label %117

104:                                              ; preds = %98
  %105 = load i32, i32* @CFG_BUS_WIDTH_4, align 4
  store i32 %105, i32* %6, align 4
  br label %117

106:                                              ; preds = %98
  %107 = load i32, i32* @CFG_BUS_WIDTH_8, align 4
  store i32 %107, i32* %6, align 4
  br label %117

108:                                              ; preds = %98
  %109 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %110 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %113 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32, i8*, ...) @dev_err(i32 %111, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @CFG_BUS_WIDTH_4, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %108, %106, %104, %102
  %118 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %119 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @SD_EMMC_CFG, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @readl(i64 %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* @CFG_BUS_WIDTH_MASK, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %7, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* @CFG_BUS_WIDTH_MASK, align 4
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @FIELD_PREP(i32 %128, i32 %129)
  %131 = load i32, i32* %7, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %135 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @SD_EMMC_CFG, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @writel(i32 %133, i64 %138)
  %140 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %141 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %142 = call i32 @meson_mmc_check_resampling(%struct.meson_host* %140, %struct.mmc_ios* %141)
  %143 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %144 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %145 = call i32 @meson_mmc_prepare_ios_clock(%struct.meson_host* %143, %struct.mmc_ios* %144)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %117
  %149 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %150 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %8, align 4
  %153 = call i32 (i32, i8*, ...) @dev_err(i32 %151, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %148, %117
  %155 = load %struct.meson_host*, %struct.meson_host** %5, align 8
  %156 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %7, align 4
  %159 = call i32 @dev_dbg(i32 %157, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %158)
  ret void
}

declare dso_local %struct.meson_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @mmc_regulator_set_ocr(%struct.mmc_host*, i32, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @meson_mmc_check_resampling(%struct.meson_host*, %struct.mmc_ios*) #1

declare dso_local i32 @meson_mmc_prepare_ios_clock(%struct.meson_host*, %struct.mmc_ios*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
