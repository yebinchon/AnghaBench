; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dev_priv = type { %struct.dev_info* }
%struct.dev_info = type { %struct.ksz_hw }
%struct.ksz_hw = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @netdev_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_get_sset_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dev_priv*, align 8
  %7 = alloca %struct.dev_info*, align 8
  %8 = alloca %struct.ksz_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.dev_priv* %10, %struct.dev_priv** %6, align 8
  %11 = load %struct.dev_priv*, %struct.dev_priv** %6, align 8
  %12 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %11, i32 0, i32 0
  %13 = load %struct.dev_info*, %struct.dev_info** %12, align 8
  store %struct.dev_info* %13, %struct.dev_info** %7, align 8
  %14 = load %struct.dev_info*, %struct.dev_info** %7, align 8
  %15 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %14, i32 0, i32 0
  store %struct.ksz_hw* %15, %struct.ksz_hw** %8, align 8
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %21 [
    i32 128, label %17
  ]

17:                                               ; preds = %2
  %18 = load %struct.ksz_hw*, %struct.ksz_hw** %8, align 8
  %19 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %17
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
