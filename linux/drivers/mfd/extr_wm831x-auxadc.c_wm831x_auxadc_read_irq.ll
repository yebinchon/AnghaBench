; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-auxadc.c_wm831x_auxadc_read_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-auxadc.c_wm831x_auxadc_read_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x = type { i32, i32, i32, i32 }
%struct.wm831x_auxadc_req = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@WM831X_AUXADC_CONTROL = common dso_local global i32 0, align 4
@WM831X_AUX_ENA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to enable AUXADC: %d\0A\00", align 1
@WM831X_AUXADC_SOURCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to set AUXADC source: %d\0A\00", align 1
@WM831X_AUX_CVT_ENA = common dso_local global i32 0, align 4
@WM831X_AUX_RATE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to start AUXADC: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm831x*, i32)* @wm831x_auxadc_read_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_auxadc_read_irq(%struct.wm831x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wm831x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm831x_auxadc_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wm831x* %0, %struct.wm831x** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.wm831x_auxadc_req* @kzalloc(i32 16, i32 %9)
  store %struct.wm831x_auxadc_req* %10, %struct.wm831x_auxadc_req** %6, align 8
  %11 = load %struct.wm831x_auxadc_req*, %struct.wm831x_auxadc_req** %6, align 8
  %12 = icmp ne %struct.wm831x_auxadc_req* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %135

16:                                               ; preds = %2
  %17 = load %struct.wm831x_auxadc_req*, %struct.wm831x_auxadc_req** %6, align 8
  %18 = getelementptr inbounds %struct.wm831x_auxadc_req, %struct.wm831x_auxadc_req* %17, i32 0, i32 3
  %19 = call i32 @init_completion(i32* %18)
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.wm831x_auxadc_req*, %struct.wm831x_auxadc_req** %6, align 8
  %22 = getelementptr inbounds %struct.wm831x_auxadc_req, %struct.wm831x_auxadc_req* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @ETIMEDOUT, align 4
  %24 = sub nsw i32 0, %23
  %25 = load %struct.wm831x_auxadc_req*, %struct.wm831x_auxadc_req** %6, align 8
  %26 = getelementptr inbounds %struct.wm831x_auxadc_req, %struct.wm831x_auxadc_req* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %28 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.wm831x_auxadc_req*, %struct.wm831x_auxadc_req** %6, align 8
  %31 = getelementptr inbounds %struct.wm831x_auxadc_req, %struct.wm831x_auxadc_req* %30, i32 0, i32 2
  %32 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %33 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %32, i32 0, i32 3
  %34 = call i32 @list_add(i32* %31, i32* %33)
  %35 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %36 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %16
  %44 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %45 = load i32, i32* @WM831X_AUXADC_CONTROL, align 4
  %46 = load i32, i32* @WM831X_AUX_ENA, align 4
  %47 = load i32, i32* @WM831X_AUX_ENA, align 4
  %48 = call i32 @wm831x_set_bits(%struct.wm831x* %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %53 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %128

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57, %16
  %59 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %60 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = shl i32 1, %62
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %89, label %66

66:                                               ; preds = %58
  %67 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %68 = load i32, i32* @WM831X_AUXADC_SOURCE, align 4
  %69 = load i32, i32* %5, align 4
  %70 = shl i32 1, %69
  %71 = load i32, i32* %5, align 4
  %72 = shl i32 1, %71
  %73 = call i32 @wm831x_set_bits(%struct.wm831x* %67, i32 %68, i32 %70, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %66
  %77 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %78 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %128

82:                                               ; preds = %66
  %83 = load i32, i32* %5, align 4
  %84 = shl i32 1, %83
  %85 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %86 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %82, %58
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %89
  %93 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %94 = load i32, i32* @WM831X_AUXADC_CONTROL, align 4
  %95 = load i32, i32* @WM831X_AUX_CVT_ENA, align 4
  %96 = load i32, i32* @WM831X_AUX_RATE_MASK, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @WM831X_AUX_CVT_ENA, align 4
  %99 = load i32, i32* @WM831X_AUX_RATE_MASK, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @wm831x_set_bits(%struct.wm831x* %93, i32 %94, i32 %97, i32 %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %92
  %105 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %106 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @dev_err(i32 %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  br label %128

110:                                              ; preds = %92
  br label %111

111:                                              ; preds = %110, %89
  %112 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %113 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %112, i32 0, i32 1
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = load %struct.wm831x_auxadc_req*, %struct.wm831x_auxadc_req** %6, align 8
  %116 = getelementptr inbounds %struct.wm831x_auxadc_req, %struct.wm831x_auxadc_req* %115, i32 0, i32 3
  %117 = call i32 @msecs_to_jiffies(i32 500)
  %118 = call i32 @wait_for_completion_timeout(i32* %116, i32 %117)
  %119 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %120 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %119, i32 0, i32 1
  %121 = call i32 @mutex_lock(i32* %120)
  %122 = load %struct.wm831x_auxadc_req*, %struct.wm831x_auxadc_req** %6, align 8
  %123 = getelementptr inbounds %struct.wm831x_auxadc_req, %struct.wm831x_auxadc_req* %122, i32 0, i32 2
  %124 = call i32 @list_del(i32* %123)
  %125 = load %struct.wm831x_auxadc_req*, %struct.wm831x_auxadc_req** %6, align 8
  %126 = getelementptr inbounds %struct.wm831x_auxadc_req, %struct.wm831x_auxadc_req* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %111, %104, %76, %51
  %129 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %130 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %129, i32 0, i32 1
  %131 = call i32 @mutex_unlock(i32* %130)
  %132 = load %struct.wm831x_auxadc_req*, %struct.wm831x_auxadc_req** %6, align 8
  %133 = call i32 @kfree(%struct.wm831x_auxadc_req* %132)
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %128, %13
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.wm831x_auxadc_req* @kzalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.wm831x_auxadc_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
