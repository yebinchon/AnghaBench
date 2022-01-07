; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-auxadc.c_wm831x_auxadc_read_polled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-auxadc.c_wm831x_auxadc_read_polled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x = type { i32, i32 }

@WM831X_AUXADC_CONTROL = common dso_local global i32 0, align 4
@WM831X_AUX_ENA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to enable AUXADC: %d\0A\00", align 1
@WM831X_AUXADC_SOURCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to set AUXADC source: %d\0A\00", align 1
@WM831X_AUX_CVT_ENA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to start AUXADC: %d\0A\00", align 1
@WM831X_INTERRUPT_STATUS_1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"ISR 1 read failed: %d\0A\00", align 1
@WM831X_AUXADC_DATA_EINT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"AUXADC conversion timeout\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@WM831X_AUXADC_DATA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to read AUXADC data: %d\0A\00", align 1
@WM831X_AUX_DATA_SRC_MASK = common dso_local global i32 0, align 4
@WM831X_AUX_DATA_SRC_SHIFT = common dso_local global i32 0, align 4
@WM831X_AUX_CAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Data from source %d not %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM831X_AUX_DATA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm831x*, i32)* @wm831x_auxadc_read_polled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_auxadc_read_polled(%struct.wm831x* %0, i32 %1) #0 {
  %3 = alloca %struct.wm831x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wm831x* %0, %struct.wm831x** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %9 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %12 = load i32, i32* @WM831X_AUXADC_CONTROL, align 4
  %13 = load i32, i32* @WM831X_AUX_ENA, align 4
  %14 = load i32, i32* @WM831X_AUX_ENA, align 4
  %15 = call i32 @wm831x_set_bits(%struct.wm831x* %11, i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %20 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i32, i8*, ...) @dev_err(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %133

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %27 = load i32, i32* @WM831X_AUXADC_SOURCE, align 4
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 1, %28
  %30 = call i32 @wm831x_reg_write(%struct.wm831x* %26, i32 %27, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %35 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (i32, i8*, ...) @dev_err(i32 %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %133

39:                                               ; preds = %24
  %40 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %41 = load i32, i32* @WM831X_AUXADC_CONTROL, align 4
  %42 = load i32, i32* @WM831X_AUX_CVT_ENA, align 4
  %43 = load i32, i32* @WM831X_AUX_CVT_ENA, align 4
  %44 = call i32 @wm831x_set_bits(%struct.wm831x* %40, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %49 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 (i32, i8*, ...) @dev_err(i32 %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %128

53:                                               ; preds = %39
  store i32 5, i32* %7, align 4
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %87

57:                                               ; preds = %54
  %58 = call i32 @msleep(i32 1)
  %59 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %60 = load i32, i32* @WM831X_INTERRUPT_STATUS_1, align 4
  %61 = call i32 @wm831x_reg_read(%struct.wm831x* %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %66 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 (i32, i8*, ...) @dev_err(i32 %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %128

70:                                               ; preds = %57
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @WM831X_AUXADC_DATA_EINT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %77 = load i32, i32* @WM831X_INTERRUPT_STATUS_1, align 4
  %78 = load i32, i32* @WM831X_AUXADC_DATA_EINT, align 4
  %79 = call i32 @wm831x_reg_write(%struct.wm831x* %76, i32 %77, i32 %78)
  br label %87

80:                                               ; preds = %70
  %81 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %82 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i8*, ...) @dev_err(i32 %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %85 = load i32, i32* @EBUSY, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %128

87:                                               ; preds = %75, %54
  %88 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %89 = load i32, i32* @WM831X_AUXADC_DATA, align 4
  %90 = call i32 @wm831x_reg_read(%struct.wm831x* %88, i32 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %95 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 (i32, i8*, ...) @dev_err(i32 %96, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %97)
  br label %128

99:                                               ; preds = %87
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @WM831X_AUX_DATA_SRC_MASK, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* @WM831X_AUX_DATA_SRC_SHIFT, align 4
  %104 = ashr i32 %102, %103
  %105 = sub nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp eq i32 %106, 14
  br i1 %107, label %108, label %110

108:                                              ; preds = %99
  %109 = load i32, i32* @WM831X_AUX_CAL, align 4
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %108, %99
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %116 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %4, align 4
  %120 = call i32 (i32, i8*, ...) @dev_err(i32 %117, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %118, i32 %119)
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %5, align 4
  br label %127

123:                                              ; preds = %110
  %124 = load i32, i32* @WM831X_AUX_DATA_MASK, align 4
  %125 = load i32, i32* %5, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %123, %114
  br label %128

128:                                              ; preds = %127, %93, %80, %64, %47
  %129 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %130 = load i32, i32* @WM831X_AUXADC_CONTROL, align 4
  %131 = load i32, i32* @WM831X_AUX_ENA, align 4
  %132 = call i32 @wm831x_set_bits(%struct.wm831x* %129, i32 %130, i32 %131, i32 0)
  br label %133

133:                                              ; preds = %128, %33, %18
  %134 = load %struct.wm831x*, %struct.wm831x** %3, align 8
  %135 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %134, i32 0, i32 0
  %136 = call i32 @mutex_unlock(i32* %135)
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @wm831x_reg_write(%struct.wm831x*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @wm831x_reg_read(%struct.wm831x*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
