; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ethtool.c_cpsw_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ethtool.c_cpsw_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cpsw_common = type { i32, i32 }

@CPSW_STATS_COMMON_LEN = common dso_local global i32 0, align 4
@CPSW_STATS_CH_LEN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpsw_get_sset_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpsw_common*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.cpsw_common* @ndev_to_cpsw(%struct.net_device* %7)
  store %struct.cpsw_common* %8, %struct.cpsw_common** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %22 [
    i32 128, label %10
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @CPSW_STATS_COMMON_LEN, align 4
  %12 = load %struct.cpsw_common*, %struct.cpsw_common** %6, align 8
  %13 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.cpsw_common*, %struct.cpsw_common** %6, align 8
  %16 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %14, %17
  %19 = load i32, i32* @CPSW_STATS_CH_LEN, align 4
  %20 = mul nsw i32 %18, %19
  %21 = add nsw i32 %11, %20
  store i32 %21, i32* %3, align 4
  br label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %22, %10
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.cpsw_common* @ndev_to_cpsw(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
