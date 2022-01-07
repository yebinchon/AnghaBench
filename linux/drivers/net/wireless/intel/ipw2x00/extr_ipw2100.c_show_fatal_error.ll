; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_show_fatal_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_show_fatal_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ipw2100_priv = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"0x%08X\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@IPW2100_ERROR_QUEUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"%d. 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_fatal_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_fatal_error(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ipw2100_priv*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.ipw2100_priv* @dev_get_drvdata(%struct.device* %10)
  store %struct.ipw2100_priv* %11, %struct.ipw2100_priv** %7, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %8, align 8
  %13 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %7, align 8
  %14 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load i8*, i8** %8, align 8
  %19 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %7, align 8
  %20 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i8*, i8** %8, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %8, align 8
  br label %32

26:                                               ; preds = %3
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 (i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i8*, i8** %8, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %8, align 8
  br label %32

32:                                               ; preds = %26, %17
  store i32 1, i32* %9, align 4
  br label %33

33:                                               ; preds = %73, %32
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @IPW2100_ERROR_QUEUE, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %76

37:                                               ; preds = %33
  %38 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %7, align 8
  %39 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %7, align 8
  %42 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sub nsw i32 %43, %44
  %46 = load i32, i32* @IPW2100_ERROR_QUEUE, align 4
  %47 = srem i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %40, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %37
  br label %73

53:                                               ; preds = %37
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %7, align 8
  %57 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %7, align 8
  %60 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sub nsw i32 %61, %62
  %64 = load i32, i32* @IPW2100_ERROR_QUEUE, align 4
  %65 = srem i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %58, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, i8*, ...) @sprintf(i8* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %68)
  %70 = load i8*, i8** %8, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %8, align 8
  br label %73

73:                                               ; preds = %53, %52
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %33

76:                                               ; preds = %33
  %77 = load i8*, i8** %8, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = trunc i64 %81 to i32
  ret i32 %82
}

declare dso_local %struct.ipw2100_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
