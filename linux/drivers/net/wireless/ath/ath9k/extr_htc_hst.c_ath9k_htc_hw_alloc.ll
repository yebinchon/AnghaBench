; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_ath9k_htc_hw_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_ath9k_htc_hw_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32, %struct.htc_endpoint*, %struct.device*, i8*, %struct.ath9k_htc_hif*, i32, i32 }
%struct.htc_endpoint = type { i32, i32 }
%struct.ath9k_htc_hif = type { i32, i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENDPOINT0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.htc_target* @ath9k_htc_hw_alloc(i8* %0, %struct.ath9k_htc_hif* %1, %struct.device* %2) #0 {
  %4 = alloca %struct.htc_target*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ath9k_htc_hif*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.htc_endpoint*, align 8
  %9 = alloca %struct.htc_target*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.ath9k_htc_hif* %1, %struct.ath9k_htc_hif** %6, align 8
  store %struct.device* %2, %struct.device** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.htc_target* @kzalloc(i32 48, i32 %10)
  store %struct.htc_target* %11, %struct.htc_target** %9, align 8
  %12 = load %struct.htc_target*, %struct.htc_target** %9, align 8
  %13 = icmp ne %struct.htc_target* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.htc_target* null, %struct.htc_target** %4, align 8
  br label %50

15:                                               ; preds = %3
  %16 = load %struct.htc_target*, %struct.htc_target** %9, align 8
  %17 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %16, i32 0, i32 6
  %18 = call i32 @init_completion(i32* %17)
  %19 = load %struct.htc_target*, %struct.htc_target** %9, align 8
  %20 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %19, i32 0, i32 5
  %21 = call i32 @init_completion(i32* %20)
  %22 = load %struct.ath9k_htc_hif*, %struct.ath9k_htc_hif** %6, align 8
  %23 = load %struct.htc_target*, %struct.htc_target** %9, align 8
  %24 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %23, i32 0, i32 4
  store %struct.ath9k_htc_hif* %22, %struct.ath9k_htc_hif** %24, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.htc_target*, %struct.htc_target** %9, align 8
  %27 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load %struct.device*, %struct.device** %7, align 8
  %29 = load %struct.htc_target*, %struct.htc_target** %9, align 8
  %30 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %29, i32 0, i32 2
  store %struct.device* %28, %struct.device** %30, align 8
  %31 = load %struct.htc_target*, %struct.htc_target** %9, align 8
  %32 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %31, i32 0, i32 1
  %33 = load %struct.htc_endpoint*, %struct.htc_endpoint** %32, align 8
  %34 = load i64, i64* @ENDPOINT0, align 8
  %35 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %33, i64 %34
  store %struct.htc_endpoint* %35, %struct.htc_endpoint** %8, align 8
  %36 = load %struct.ath9k_htc_hif*, %struct.ath9k_htc_hif** %6, align 8
  %37 = getelementptr inbounds %struct.ath9k_htc_hif, %struct.ath9k_htc_hif* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.htc_endpoint*, %struct.htc_endpoint** %8, align 8
  %40 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ath9k_htc_hif*, %struct.ath9k_htc_hif** %6, align 8
  %42 = getelementptr inbounds %struct.ath9k_htc_hif, %struct.ath9k_htc_hif* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.htc_endpoint*, %struct.htc_endpoint** %8, align 8
  %45 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.htc_target*, %struct.htc_target** %9, align 8
  %47 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %46, i32 0, i32 0
  %48 = call i32 @atomic_set(i32* %47, i32 0)
  %49 = load %struct.htc_target*, %struct.htc_target** %9, align 8
  store %struct.htc_target* %49, %struct.htc_target** %4, align 8
  br label %50

50:                                               ; preds = %15, %14
  %51 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  ret %struct.htc_target* %51
}

declare dso_local %struct.htc_target* @kzalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
