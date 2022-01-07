; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_phy_power_bug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_phy_power_bug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32 }

@TG3_PHYFLG_MII_SERDES = common dso_local global i32 0, align 4
@TG3_PHYFLG_PHY_SERDES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*)* @tg3_phy_power_bug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_phy_power_bug(%struct.tg3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tg3*, align 8
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  %4 = load %struct.tg3*, %struct.tg3** %3, align 8
  %5 = call i32 @tg3_asic_rev(%struct.tg3* %4)
  switch i32 %5, label %37 [
    i32 133, label %6
    i32 132, label %6
    i32 128, label %7
    i32 131, label %16
    i32 130, label %23
    i32 129, label %23
  ]

6:                                                ; preds = %1, %1
  store i32 1, i32* %2, align 4
  br label %38

7:                                                ; preds = %1
  %8 = load %struct.tg3*, %struct.tg3** %3, align 8
  %9 = getelementptr inbounds %struct.tg3, %struct.tg3* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @TG3_PHYFLG_MII_SERDES, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %38

15:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %38

16:                                               ; preds = %1
  %17 = load %struct.tg3*, %struct.tg3** %3, align 8
  %18 = getelementptr inbounds %struct.tg3, %struct.tg3* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %38

22:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %38

23:                                               ; preds = %1, %1
  %24 = load %struct.tg3*, %struct.tg3** %3, align 8
  %25 = getelementptr inbounds %struct.tg3, %struct.tg3* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TG3_PHYFLG_PHY_SERDES, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.tg3*, %struct.tg3** %3, align 8
  %32 = getelementptr inbounds %struct.tg3, %struct.tg3* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %38

36:                                               ; preds = %30, %23
  store i32 0, i32* %2, align 4
  br label %38

37:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %36, %35, %22, %21, %15, %14, %6
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @tg3_asic_rev(%struct.tg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
