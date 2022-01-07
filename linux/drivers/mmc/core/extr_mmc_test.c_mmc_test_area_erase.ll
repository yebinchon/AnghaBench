; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_area_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_area_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { i32, %struct.mmc_test_area }
%struct.mmc_test_area = type { i32, i32 }

@MMC_ERASE_ARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*)* @mmc_test_area_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_area_erase(%struct.mmc_test_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_test_card*, align 8
  %4 = alloca %struct.mmc_test_area*, align 8
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %3, align 8
  %5 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %6 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %5, i32 0, i32 1
  store %struct.mmc_test_area* %6, %struct.mmc_test_area** %4, align 8
  %7 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %8 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @mmc_can_erase(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

13:                                               ; preds = %1
  %14 = load %struct.mmc_test_card*, %struct.mmc_test_card** %3, align 8
  %15 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mmc_test_area*, %struct.mmc_test_area** %4, align 8
  %18 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mmc_test_area*, %struct.mmc_test_area** %4, align 8
  %21 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 9
  %24 = load i32, i32* @MMC_ERASE_ARG, align 4
  %25 = call i32 @mmc_erase(i32 %16, i32 %19, i32 %23, i32 %24)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %13, %12
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @mmc_can_erase(i32) #1

declare dso_local i32 @mmc_erase(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
