; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_nway_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_nway_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i40e_netdev_priv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@I40E_AQ_LINK_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"link restart failed, err %s aq_err %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @i40e_nway_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_nway_reset(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.i40e_netdev_priv*, align 8
  %5 = alloca %struct.i40e_pf*, align 8
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.i40e_netdev_priv* %10, %struct.i40e_netdev_priv** %4, align 8
  %11 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %4, align 8
  %12 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.i40e_pf*, %struct.i40e_pf** %14, align 8
  store %struct.i40e_pf* %15, %struct.i40e_pf** %5, align 8
  %16 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %17 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %16, i32 0, i32 0
  store %struct.i40e_hw* %17, %struct.i40e_hw** %6, align 8
  %18 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %19 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @I40E_AQ_LINK_UP, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @i40e_aq_set_link_restart_an(%struct.i40e_hw* %25, i32 %26, i32* null)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %1
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @i40e_stat_str(%struct.i40e_hw* %32, i64 %33)
  %35 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %37 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @i40e_aq_str(%struct.i40e_hw* %35, i32 %39)
  %41 = call i32 @netdev_info(%struct.net_device* %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %40)
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %45

44:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %30
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @i40e_aq_set_link_restart_an(%struct.i40e_hw*, i32, i32*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @i40e_stat_str(%struct.i40e_hw*, i64) #1

declare dso_local i32 @i40e_aq_str(%struct.i40e_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
