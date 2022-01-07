; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_pmc.c_wil_pmc_llseek.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_pmc.c_wil_pmc_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, %struct.wil6210_priv* }
%struct.wil6210_priv = type { %struct.pmc_ctx }
%struct.pmc_ctx = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [30 x i8] c"error, pmc is not allocated!\0A\00", align 1
@EPERM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wil_pmc_llseek(%struct.file* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.wil6210_priv*, align 8
  %10 = alloca %struct.pmc_ctx*, align 8
  %11 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 1
  %14 = load %struct.wil6210_priv*, %struct.wil6210_priv** %13, align 8
  store %struct.wil6210_priv* %14, %struct.wil6210_priv** %9, align 8
  %15 = load %struct.wil6210_priv*, %struct.wil6210_priv** %9, align 8
  %16 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %15, i32 0, i32 0
  store %struct.pmc_ctx* %16, %struct.pmc_ctx** %10, align 8
  %17 = load %struct.pmc_ctx*, %struct.pmc_ctx** %10, align 8
  %18 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %17, i32 0, i32 3
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.pmc_ctx*, %struct.pmc_ctx** %10, align 8
  %21 = call i32 @wil_is_pmc_allocated(%struct.pmc_ctx* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %3
  %24 = load %struct.wil6210_priv*, %struct.wil6210_priv** %9, align 8
  %25 = call i32 @wil_err(%struct.wil6210_priv* %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %26 = load i64, i64* @EPERM, align 8
  %27 = sub i64 0, %26
  %28 = load %struct.pmc_ctx*, %struct.pmc_ctx** %10, align 8
  %29 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.pmc_ctx*, %struct.pmc_ctx** %10, align 8
  %31 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %30, i32 0, i32 3
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i64, i64* @EPERM, align 8
  %34 = sub i64 0, %33
  store i64 %34, i64* %4, align 8
  br label %78

35:                                               ; preds = %3
  %36 = load %struct.pmc_ctx*, %struct.pmc_ctx** %10, align 8
  %37 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.pmc_ctx*, %struct.pmc_ctx** %10, align 8
  %40 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = mul i64 %38, %41
  store i64 %42, i64* %11, align 8
  %43 = load i32, i32* %7, align 4
  switch i32 %43, label %54 [
    i32 0, label %44
    i32 1, label %46
    i32 2, label %52
  ]

44:                                               ; preds = %35
  %45 = load i64, i64* %6, align 8
  store i64 %45, i64* %8, align 8
  br label %57

46:                                               ; preds = %35
  %47 = load %struct.file*, %struct.file** %5, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = add i64 %49, %50
  store i64 %51, i64* %8, align 8
  br label %57

52:                                               ; preds = %35
  %53 = load i64, i64* %11, align 8
  store i64 %53, i64* %8, align 8
  br label %57

54:                                               ; preds = %35
  %55 = load i64, i64* @EINVAL, align 8
  %56 = sub i64 0, %55
  store i64 %56, i64* %8, align 8
  br label %73

57:                                               ; preds = %52, %46, %44
  %58 = load i64, i64* %8, align 8
  %59 = icmp ult i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i64, i64* @EINVAL, align 8
  %62 = sub i64 0, %61
  store i64 %62, i64* %8, align 8
  br label %73

63:                                               ; preds = %57
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %11, align 8
  %66 = icmp ugt i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i64, i64* %11, align 8
  store i64 %68, i64* %8, align 8
  br label %69

69:                                               ; preds = %67, %63
  %70 = load i64, i64* %8, align 8
  %71 = load %struct.file*, %struct.file** %5, align 8
  %72 = getelementptr inbounds %struct.file, %struct.file* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %69, %60, %54
  %74 = load %struct.pmc_ctx*, %struct.pmc_ctx** %10, align 8
  %75 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %74, i32 0, i32 3
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i64, i64* %8, align 8
  store i64 %77, i64* %4, align 8
  br label %78

78:                                               ; preds = %73, %23
  %79 = load i64, i64* %4, align 8
  ret i64 %79
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wil_is_pmc_allocated(%struct.pmc_ctx*) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
