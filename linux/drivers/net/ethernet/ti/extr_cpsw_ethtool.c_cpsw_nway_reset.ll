; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ethtool.c_cpsw_nway_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ethtool.c_cpsw_nway_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cpsw_priv = type { %struct.cpsw_common* }
%struct.cpsw_common = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpsw_nway_reset(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.cpsw_priv*, align 8
  %5 = alloca %struct.cpsw_common*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.cpsw_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.cpsw_priv* %8, %struct.cpsw_priv** %4, align 8
  %9 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %10 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %9, i32 0, i32 0
  %11 = load %struct.cpsw_common*, %struct.cpsw_common** %10, align 8
  store %struct.cpsw_common* %11, %struct.cpsw_common** %5, align 8
  %12 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %13 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %14 = call i32 @cpsw_slave_index(%struct.cpsw_common* %12, %struct.cpsw_priv* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %16 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %26 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @genphy_restart_aneg(i64 %32)
  store i32 %33, i32* %2, align 4
  br label %37

34:                                               ; preds = %1
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %24
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.cpsw_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpsw_slave_index(%struct.cpsw_common*, %struct.cpsw_priv*) #1

declare dso_local i32 @genphy_restart_aneg(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
