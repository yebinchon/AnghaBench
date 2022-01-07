; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_sd_erase_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_sd_erase_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SD_DISCARD_ARG = common dso_local global i32 0, align 4
@SD_DISCARD_TIMEOUT_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, i32, i32)* @mmc_sd_erase_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_sd_erase_timeout(%struct.mmc_card* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @SD_DISCARD_ARG, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @SD_DISCARD_TIMEOUT_MS, align 4
  store i32 %13, i32* %4, align 4
  br label %41

14:                                               ; preds = %3
  %15 = load %struct.mmc_card*, %struct.mmc_card** %5, align 8
  %16 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load %struct.mmc_card*, %struct.mmc_card** %5, align 8
  %22 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = mul i32 %24, %25
  %27 = load %struct.mmc_card*, %struct.mmc_card** %5, align 8
  %28 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add i32 %26, %30
  store i32 %31, i32* %8, align 4
  br label %35

32:                                               ; preds = %14
  %33 = load i32, i32* %7, align 4
  %34 = mul i32 250, %33
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %32, %20
  %36 = load i32, i32* %8, align 4
  %37 = icmp ult i32 %36, 1000
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1000, i32* %8, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %12
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
