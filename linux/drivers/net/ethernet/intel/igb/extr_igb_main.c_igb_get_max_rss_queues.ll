; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_get_max_rss_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_get_max_rss_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IGB_MAX_RX_QUEUES_I211 = common dso_local global i32 0, align 4
@IGB_MAX_RX_QUEUES_82575 = common dso_local global i32 0, align 4
@IGB_MAX_RX_QUEUES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_get_max_rss_queues(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %5 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %5, i32 0, i32 1
  store %struct.e1000_hw* %6, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %30 [
    i32 130, label %11
    i32 134, label %13
    i32 131, label %13
    i32 129, label %15
    i32 133, label %22
    i32 132, label %29
    i32 128, label %29
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @IGB_MAX_RX_QUEUES_I211, align 4
  store i32 %12, i32* %4, align 4
  br label %32

13:                                               ; preds = %1, %1
  %14 = load i32, i32* @IGB_MAX_RX_QUEUES_82575, align 4
  store i32 %14, i32* %4, align 4
  br label %32

15:                                               ; preds = %1
  %16 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %32

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %1, %21
  %23 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 2, i32* %4, align 4
  br label %32

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %1, %1, %28
  br label %30

30:                                               ; preds = %1, %29
  %31 = load i32, i32* @IGB_MAX_RX_QUEUES, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %27, %20, %13, %11
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
