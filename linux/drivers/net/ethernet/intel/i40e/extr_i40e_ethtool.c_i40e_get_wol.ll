; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i8*, i8* }
%struct.i40e_netdev_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i64, %struct.i40e_hw }
%struct.i40e_hw = type { i32, i32 }

@I40E_SR_NVM_WAKE_ON_LAN = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_wolinfo*)* @i40e_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_get_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.i40e_netdev_priv*, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.i40e_netdev_priv* %10, %struct.i40e_netdev_priv** %5, align 8
  %11 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %5, align 8
  %12 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.i40e_pf*, %struct.i40e_pf** %14, align 8
  store %struct.i40e_pf* %15, %struct.i40e_pf** %6, align 8
  %16 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %17 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %16, i32 0, i32 1
  store %struct.i40e_hw* %17, %struct.i40e_hw** %7, align 8
  %18 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %19 = load i32, i32* @I40E_SR_NVM_WAKE_ON_LAN, align 4
  %20 = call i32 @i40e_read_nvm_word(%struct.i40e_hw* %18, i32 %19, i32* %8)
  %21 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %22 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @BIT(i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %2
  %29 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %30 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %38

33:                                               ; preds = %28, %2
  %34 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %35 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %34, i32 0, i32 1
  store i8* null, i8** %35, align 8
  %36 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %37 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %36, i32 0, i32 0
  store i8* null, i8** %37, align 8
  br label %53

38:                                               ; preds = %28
  %39 = load i8*, i8** @WAKE_MAGIC, align 8
  %40 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %43 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i8*, i8** @WAKE_MAGIC, align 8
  br label %49

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i8* [ %47, %46 ], [ null, %48 ]
  %51 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %52 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %49, %33
  ret void
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @i40e_read_nvm_word(%struct.i40e_hw*, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
