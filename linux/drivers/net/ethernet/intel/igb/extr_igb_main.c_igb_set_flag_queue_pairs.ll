; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_set_flag_queue_pairs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_set_flag_queue_pairs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IGB_FLAG_QUEUE_PAIRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igb_set_flag_queue_pairs(%struct.igb_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_hw*, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %6, i32 0, i32 2
  store %struct.e1000_hw* %7, %struct.e1000_hw** %5, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %14 [
    i32 134, label %12
    i32 130, label %12
    i32 133, label %13
    i32 132, label %13
    i32 129, label %13
    i32 128, label %13
    i32 131, label %13
  ]

12:                                               ; preds = %2, %2
  br label %35

13:                                               ; preds = %2, %2, %2, %2, %2
  br label %14

14:                                               ; preds = %2, %13
  %15 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = sdiv i32 %18, 2
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load i32, i32* @IGB_FLAG_QUEUE_PAIRS, align 4
  %23 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %34

27:                                               ; preds = %14
  %28 = load i32, i32* @IGB_FLAG_QUEUE_PAIRS, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %27, %21
  br label %35

35:                                               ; preds = %34, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
