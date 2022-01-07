; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_execute_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_execute_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.mmc_host* }
%struct.mmc_host = type { %struct.TYPE_3__*, %struct.TYPE_4__*, i64 }
%struct.TYPE_3__ = type { i32 (%struct.mmc_host*, i32)* }
%struct.TYPE_4__ = type { i32 (%struct.mmc_host*)* }

@MMC_SEND_TUNING_BLOCK_HS200 = common dso_local global i32 0, align 4
@MMC_SEND_TUNING_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: tuning execution failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_execute_tuning(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %7 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %8 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %7, i32 0, i32 0
  %9 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  store %struct.mmc_host* %9, %struct.mmc_host** %4, align 8
  %10 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32 (%struct.mmc_host*, i32)*, i32 (%struct.mmc_host*, i32)** %13, align 8
  %15 = icmp ne i32 (%struct.mmc_host*, i32)* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

17:                                               ; preds = %1
  %18 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %19 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %24 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %26, align 8
  %28 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %29 = call i32 %27(%struct.mmc_host* %28)
  br label %30

30:                                               ; preds = %22, %17
  %31 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %32 = call i64 @mmc_card_mmc(%struct.mmc_card* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @MMC_SEND_TUNING_BLOCK_HS200, align 4
  store i32 %35, i32* %5, align 4
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @MMC_SEND_TUNING_BLOCK, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %40 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32 (%struct.mmc_host*, i32)*, i32 (%struct.mmc_host*, i32)** %42, align 8
  %44 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 %43(%struct.mmc_host* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %51 = call i32 @mmc_hostname(%struct.mmc_host* %50)
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  br label %57

54:                                               ; preds = %38
  %55 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %56 = call i32 @mmc_retune_enable(%struct.mmc_host* %55)
  br label %57

57:                                               ; preds = %54, %49
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %16
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i64 @mmc_card_mmc(%struct.mmc_card*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @mmc_retune_enable(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
