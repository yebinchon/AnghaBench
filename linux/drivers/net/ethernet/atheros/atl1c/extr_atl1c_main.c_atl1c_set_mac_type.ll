; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_set_mac_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_set_mac_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_hw = type { i32, i32 }

@athr_l2c = common dso_local global i32 0, align 4
@athr_l1c = common dso_local global i32 0, align 4
@athr_l2c_b = common dso_local global i32 0, align 4
@athr_l2c_b2 = common dso_local global i32 0, align 4
@athr_l1d = common dso_local global i32 0, align 4
@athr_l1d_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1c_hw*)* @atl1c_set_mac_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1c_set_mac_type(%struct.atl1c_hw* %0) #0 {
  %2 = alloca %struct.atl1c_hw*, align 8
  store %struct.atl1c_hw* %0, %struct.atl1c_hw** %2, align 8
  %3 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %4 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %30 [
    i32 128, label %6
    i32 129, label %10
    i32 131, label %14
    i32 130, label %18
    i32 133, label %22
    i32 132, label %26
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @athr_l2c, align 4
  %8 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %9 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  br label %31

10:                                               ; preds = %1
  %11 = load i32, i32* @athr_l1c, align 4
  %12 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %13 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  br label %31

14:                                               ; preds = %1
  %15 = load i32, i32* @athr_l2c_b, align 4
  %16 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %17 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  br label %31

18:                                               ; preds = %1
  %19 = load i32, i32* @athr_l2c_b2, align 4
  %20 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %21 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  br label %31

22:                                               ; preds = %1
  %23 = load i32, i32* @athr_l1d, align 4
  %24 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %25 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %31

26:                                               ; preds = %1
  %27 = load i32, i32* @athr_l1d_2, align 4
  %28 = load %struct.atl1c_hw*, %struct.atl1c_hw** %2, align 8
  %29 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %31

30:                                               ; preds = %1
  br label %31

31:                                               ; preds = %30, %26, %22, %18, %14, %10, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
