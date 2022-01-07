; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_update_nic_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_update_nic_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_dev*)* @update_nic_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_nic_stats(%struct.hinic_dev* %0) #0 {
  %2 = alloca %struct.hinic_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hinic_dev* %0, %struct.hinic_dev** %2, align 8
  %5 = load %struct.hinic_dev*, %struct.hinic_dev** %2, align 8
  %6 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @hinic_hwdev_num_qps(i32 %7)
  store i32 %8, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %22, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load %struct.hinic_dev*, %struct.hinic_dev** %2, align 8
  %15 = load %struct.hinic_dev*, %struct.hinic_dev** %2, align 8
  %16 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i32 @update_rx_stats(%struct.hinic_dev* %14, i32* %20)
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %9

25:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %39, %25
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load %struct.hinic_dev*, %struct.hinic_dev** %2, align 8
  %32 = load %struct.hinic_dev*, %struct.hinic_dev** %2, align 8
  %33 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i32 @update_tx_stats(%struct.hinic_dev* %31, i32* %37)
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %26

42:                                               ; preds = %26
  ret void
}

declare dso_local i32 @hinic_hwdev_num_qps(i32) #1

declare dso_local i32 @update_rx_stats(%struct.hinic_dev*, i32*) #1

declare dso_local i32 @update_tx_stats(%struct.hinic_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
