; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_erase_group_aligned.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_erase_group_aligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_erase_group_aligned(%struct.mmc_card* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.mmc_card*, %struct.mmc_card** %5, align 8
  %9 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %29

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.mmc_card*, %struct.mmc_card** %5, align 8
  %16 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = urem i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.mmc_card*, %struct.mmc_card** %5, align 8
  %23 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = urem i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %13
  store i32 0, i32* %4, align 4
  br label %29

28:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %27, %12
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
