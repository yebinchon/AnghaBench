; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_ethtool.c_sxgbe_set_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_ethtool.c_sxgbe_set_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eee = type { i32, i64 }
%struct.sxgbe_priv_data = type { i32, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @sxgbe_set_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sxgbe_set_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca %struct.sxgbe_priv_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.sxgbe_priv_data* @netdev_priv(%struct.net_device* %7)
  store %struct.sxgbe_priv_data* %8, %struct.sxgbe_priv_data** %6, align 8
  %9 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %6, align 8
  %13 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %12, i32 0, i32 1
  store i64 %11, i64* %13, align 8
  %14 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %6, align 8
  %15 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %6, align 8
  %20 = call i32 @sxgbe_disable_eee_mode(%struct.sxgbe_priv_data* %19)
  br label %39

21:                                               ; preds = %2
  %22 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %6, align 8
  %23 = call i64 @sxgbe_eee_init(%struct.sxgbe_priv_data* %22)
  %24 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %6, align 8
  %25 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %6, align 8
  %27 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %45

33:                                               ; preds = %21
  %34 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %6, align 8
  %38 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %33, %18
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %44 = call i32 @phy_ethtool_set_eee(i32 %42, %struct.ethtool_eee* %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %39, %30
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.sxgbe_priv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sxgbe_disable_eee_mode(%struct.sxgbe_priv_data*) #1

declare dso_local i64 @sxgbe_eee_init(%struct.sxgbe_priv_data*) #1

declare dso_local i32 @phy_ethtool_set_eee(i32, %struct.ethtool_eee*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
