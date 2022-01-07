; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wmi_call.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wmi_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32, i32, i8*, i32*, i32, i8*, i32 }

@.str = private unnamed_addr constant [42 x i8] c"wmi_call(0x%04x->0x%04x) timeout %d msec\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"wmi_call(0x%04x->0x%04x) completed in %d msec\0A\00", align 1
@U8_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmi_call(%struct.wil6210_priv* %0, i8* %1, i32 %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i32 %8) #0 {
  %10 = alloca %struct.wil6210_priv*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32 %8, i32* %18, align 4
  %22 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %23 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %26 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %21, align 4
  %28 = call i32 @spin_lock_irqsave(i32* %26, i32 %27)
  %29 = load i8*, i8** %15, align 8
  %30 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %31 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %30, i32 0, i32 5
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %34 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** %16, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %38 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %37, i32 0, i32 3
  store i32* %36, i32** %38, align 8
  %39 = load i8*, i8** %17, align 8
  %40 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %41 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %43 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %42, i32 0, i32 6
  %44 = call i32 @reinit_completion(i32* %43)
  %45 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %46 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %45, i32 0, i32 1
  %47 = load i32, i32* %21, align 4
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i32 %47)
  %49 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i8*, i8** %13, align 8
  %53 = load i8*, i8** %14, align 8
  %54 = call i32 @__wmi_send(%struct.wil6210_priv* %49, i8* %50, i32 %51, i8* %52, i8* %53)
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %19, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %9
  br label %85

58:                                               ; preds = %9
  %59 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %60 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %59, i32 0, i32 6
  %61 = load i32, i32* %18, align 4
  %62 = call i32 @msecs_to_jiffies(i32 %61)
  %63 = call i64 @wait_for_completion_timeout(i32* %60, i32 %62)
  store i64 %63, i64* %20, align 8
  %64 = load i64, i64* %20, align 8
  %65 = icmp eq i64 0, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %58
  %67 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = load i8*, i8** %15, align 8
  %70 = load i32, i32* %18, align 4
  %71 = call i32 @wil_err(%struct.wil6210_priv* %67, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %68, i8* %69, i32 %70)
  %72 = load i32, i32* @ETIME, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %19, align 4
  br label %84

74:                                               ; preds = %58
  %75 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = load i8*, i8** %15, align 8
  %78 = load i32, i32* %18, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %20, align 8
  %81 = call i64 @jiffies_to_msecs(i64 %80)
  %82 = sub nsw i64 %79, %81
  %83 = call i32 @wil_dbg_wmi(%struct.wil6210_priv* %75, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %76, i8* %77, i64 %82)
  br label %84

84:                                               ; preds = %74, %66
  br label %85

85:                                               ; preds = %84, %57
  %86 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %87 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %86, i32 0, i32 1
  %88 = load i32, i32* %21, align 4
  %89 = call i32 @spin_lock_irqsave(i32* %87, i32 %88)
  %90 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %91 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %90, i32 0, i32 5
  store i8* null, i8** %91, align 8
  %92 = load i32, i32* @U8_MAX, align 4
  %93 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %94 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  %95 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %96 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %95, i32 0, i32 3
  store i32* null, i32** %96, align 8
  %97 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %98 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %97, i32 0, i32 2
  store i8* null, i8** %98, align 8
  %99 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %100 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %99, i32 0, i32 1
  %101 = load i32, i32* %21, align 4
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i32 %101)
  %103 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %104 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %103, i32 0, i32 0
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load i32, i32* %19, align 4
  ret i32 %106
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @__wmi_send(%struct.wil6210_priv*, i8*, i32, i8*, i8*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @wil_dbg_wmi(%struct.wil6210_priv*, i8*, i8*, i8*, i64) #1

declare dso_local i64 @jiffies_to_msecs(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
