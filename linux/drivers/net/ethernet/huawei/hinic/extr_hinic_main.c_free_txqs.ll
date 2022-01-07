; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_free_txqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_free_txqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { i32*, %struct.net_device*, i32 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_dev*)* @free_txqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_txqs(%struct.hinic_dev* %0) #0 {
  %2 = alloca %struct.hinic_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  store %struct.hinic_dev* %0, %struct.hinic_dev** %2, align 8
  %6 = load %struct.hinic_dev*, %struct.hinic_dev** %2, align 8
  %7 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @hinic_hwdev_num_qps(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.hinic_dev*, %struct.hinic_dev** %2, align 8
  %11 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %10, i32 0, i32 1
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.hinic_dev*, %struct.hinic_dev** %2, align 8
  %14 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %43

18:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %31, %18
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load %struct.hinic_dev*, %struct.hinic_dev** %2, align 8
  %25 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = call i32 @hinic_clean_txq(i32* %29)
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %19

34:                                               ; preds = %19
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load %struct.hinic_dev*, %struct.hinic_dev** %2, align 8
  %38 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @devm_kfree(i32* %36, i32* %39)
  %41 = load %struct.hinic_dev*, %struct.hinic_dev** %2, align 8
  %42 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %34, %17
  ret void
}

declare dso_local i32 @hinic_hwdev_num_qps(i32) #1

declare dso_local i32 @hinic_clean_txq(i32*) #1

declare dso_local i32 @devm_kfree(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
