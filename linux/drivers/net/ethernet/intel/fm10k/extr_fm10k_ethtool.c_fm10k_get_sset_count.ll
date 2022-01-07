; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_ethtool.c_fm10k_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_ethtool.c_fm10k_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fm10k_intfc = type { %struct.fm10k_hw }
%struct.fm10k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@FM10K_STATIC_STATS_LEN = common dso_local global i32 0, align 4
@FM10K_TEST_LEN = common dso_local global i32 0, align 4
@FM10K_QUEUE_STATS_LEN = common dso_local global i32 0, align 4
@fm10k_mac_vf = common dso_local global i32 0, align 4
@FM10K_PF_STATS_LEN = common dso_local global i32 0, align 4
@FM10K_PRV_FLAG_LEN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @fm10k_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_get_sset_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fm10k_intfc*, align 8
  %7 = alloca %struct.fm10k_hw*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.fm10k_intfc* @netdev_priv(%struct.net_device* %9)
  store %struct.fm10k_intfc* %10, %struct.fm10k_intfc** %6, align 8
  %11 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %6, align 8
  %12 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %11, i32 0, i32 0
  store %struct.fm10k_hw* %12, %struct.fm10k_hw** %7, align 8
  %13 = load i32, i32* @FM10K_STATIC_STATS_LEN, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %41 [
    i32 128, label %15
    i32 129, label %17
    i32 130, label %39
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @FM10K_TEST_LEN, align 4
  store i32 %16, i32* %3, align 4
  br label %44

17:                                               ; preds = %2
  %18 = load %struct.fm10k_hw*, %struct.fm10k_hw** %7, align 8
  %19 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 2
  %23 = load i32, i32* @FM10K_QUEUE_STATS_LEN, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %8, align 4
  %27 = load %struct.fm10k_hw*, %struct.fm10k_hw** %7, align 8
  %28 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @fm10k_mac_vf, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %17
  %34 = load i32, i32* @FM10K_PF_STATS_LEN, align 4
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %33, %17
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %44

39:                                               ; preds = %2
  %40 = load i32, i32* @FM10K_PRV_FLAG_LEN, align 4
  store i32 %40, i32* %3, align 4
  br label %44

41:                                               ; preds = %2
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %39, %37, %15
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.fm10k_intfc* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
