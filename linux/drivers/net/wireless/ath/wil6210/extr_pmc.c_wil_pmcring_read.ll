; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_pmc.c_wil_pmcring_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_pmc.c_wil_pmcring_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.wil6210_priv* }
%struct.wil6210_priv = type { %struct.pmc_ctx }
%struct.pmc_ctx = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"error, pmc is not allocated!\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"pmcring_read: size %zu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wil_pmcring_read(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wil6210_priv*, align 8
  %7 = alloca %struct.pmc_ctx*, align 8
  %8 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  store %struct.wil6210_priv* %11, %struct.wil6210_priv** %6, align 8
  %12 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %13 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %12, i32 0, i32 0
  store %struct.pmc_ctx* %13, %struct.pmc_ctx** %7, align 8
  %14 = load %struct.pmc_ctx*, %struct.pmc_ctx** %7, align 8
  %15 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  store i64 %18, i64* %8, align 8
  %19 = load %struct.pmc_ctx*, %struct.pmc_ctx** %7, align 8
  %20 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %19, i32 0, i32 2
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.pmc_ctx*, %struct.pmc_ctx** %7, align 8
  %23 = call i32 @wil_is_pmc_allocated(%struct.pmc_ctx* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %2
  %26 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %27 = call i32 @wil_err(%struct.wil6210_priv* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EPERM, align 4
  %29 = sub nsw i32 0, %28
  %30 = load %struct.pmc_ctx*, %struct.pmc_ctx** %7, align 8
  %31 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.pmc_ctx*, %struct.pmc_ctx** %7, align 8
  %33 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %32, i32 0, i32 2
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* @EPERM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %50

37:                                               ; preds = %2
  %38 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %42 = load %struct.pmc_ctx*, %struct.pmc_ctx** %7, align 8
  %43 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @seq_write(%struct.seq_file* %41, i32 %44, i64 %45)
  %47 = load %struct.pmc_ctx*, %struct.pmc_ctx** %7, align 8
  %48 = getelementptr inbounds %struct.pmc_ctx, %struct.pmc_ctx* %47, i32 0, i32 2
  %49 = call i32 @mutex_unlock(i32* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %37, %25
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wil_is_pmc_allocated(%struct.pmc_ctx*) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, i64) #1

declare dso_local i32 @seq_write(%struct.seq_file*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
