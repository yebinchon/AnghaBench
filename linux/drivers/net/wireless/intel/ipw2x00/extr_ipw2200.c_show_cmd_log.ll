; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_show_cmd_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_show_cmd_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ipw_priv = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i64, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"\0A%08lX%08X%08X%08X\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @show_cmd_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @show_cmd_log(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ipw_priv*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.ipw_priv* @dev_get_drvdata(%struct.device* %11)
  store %struct.ipw_priv* %12, %struct.ipw_priv** %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %14 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %135

18:                                               ; preds = %3
  %19 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %20 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  %23 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %24 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = srem i32 %22, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %10, align 8
  br label %28

28:                                               ; preds = %116, %18
  %29 = load i64, i64* %10, align 8
  %30 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %31 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = icmp ne i64 %29, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @PAGE_SIZE, align 8
  %38 = icmp slt i64 %36, %37
  br label %39

39:                                               ; preds = %35, %28
  %40 = phi i1 [ false, %28 ], [ %38, %35 ]
  br i1 %40, label %41, label %124

41:                                               ; preds = %39
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i64, i64* @PAGE_SIZE, align 8
  %46 = load i64, i64* %9, align 8
  %47 = sub nsw i64 %45, %46
  %48 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %49 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %56 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %63 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %71 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %44, i64 %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %61, i32 %69, i32 %77)
  %79 = load i64, i64* %9, align 8
  %80 = add nsw i64 %79, %78
  store i64 %80, i64* %9, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = load i64, i64* @PAGE_SIZE, align 8
  %85 = load i64, i64* %9, align 8
  %86 = sub nsw i64 %84, %85
  %87 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %88 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %87, i32 0, i32 2
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i32*
  %96 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %97 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %96, i32 0, i32 2
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i64, i64* %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @snprintk_buf(i8* %83, i64 %86, i32* %95, i32 %103)
  %105 = load i64, i64* %9, align 8
  %106 = add nsw i64 %105, %104
  store i64 %106, i64* %9, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = load i64, i64* %9, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  %110 = load i64, i64* @PAGE_SIZE, align 8
  %111 = load i64, i64* %9, align 8
  %112 = sub nsw i64 %110, %111
  %113 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %109, i64 %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %114 = load i64, i64* %9, align 8
  %115 = add nsw i64 %114, %113
  store i64 %115, i64* %9, align 8
  br label %116

116:                                              ; preds = %41
  %117 = load i64, i64* %10, align 8
  %118 = add nsw i64 %117, 1
  %119 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %120 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = srem i64 %118, %122
  store i64 %123, i64* %10, align 8
  br label %28

124:                                              ; preds = %39
  %125 = load i8*, i8** %7, align 8
  %126 = load i64, i64* %9, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  %128 = load i64, i64* @PAGE_SIZE, align 8
  %129 = load i64, i64* %9, align 8
  %130 = sub nsw i64 %128, %129
  %131 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %127, i64 %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %132 = load i64, i64* %9, align 8
  %133 = add nsw i64 %132, %131
  store i64 %133, i64* %9, align 8
  %134 = load i64, i64* %9, align 8
  store i64 %134, i64* %4, align 8
  br label %135

135:                                              ; preds = %124, %17
  %136 = load i64, i64* %4, align 8
  ret i64 %136
}

declare dso_local %struct.ipw_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i64 @snprintk_buf(i8*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
