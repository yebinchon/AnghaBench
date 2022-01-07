; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_set_fec_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_set_fec_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_fecparam = type { i32 }
%struct.i40e_netdev_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_4__*, %struct.i40e_hw }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_hw = type { i64 }

@I40E_DEV_ID_25G_SFP28 = common dso_local global i64 0, align 8
@I40E_DEV_ID_25G_B = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@I40E_AQ_SET_FEC_AUTO = common dso_local global i32 0, align 4
@I40E_AQ_SET_FEC_REQUEST_RS = common dso_local global i32 0, align 4
@I40E_AQ_SET_FEC_ABILITY_RS = common dso_local global i32 0, align 4
@I40E_AQ_SET_FEC_REQUEST_KR = common dso_local global i32 0, align 4
@I40E_AQ_SET_FEC_ABILITY_KR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unsupported FEC mode: %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_fecparam*)* @i40e_set_fec_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_set_fec_param(%struct.net_device* %0, %struct.ethtool_fecparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_fecparam*, align 8
  %5 = alloca %struct.i40e_netdev_priv*, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_fecparam* %1, %struct.ethtool_fecparam** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.i40e_netdev_priv* %11, %struct.i40e_netdev_priv** %5, align 8
  %12 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %5, align 8
  %13 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.i40e_pf*, %struct.i40e_pf** %15, align 8
  store %struct.i40e_pf* %16, %struct.i40e_pf** %6, align 8
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %18 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %17, i32 0, i32 1
  store %struct.i40e_hw* %18, %struct.i40e_hw** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %20 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @I40E_DEV_ID_25G_SFP28, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %26 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @I40E_DEV_ID_25G_B, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EPERM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %63

33:                                               ; preds = %24, %2
  %34 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %4, align 8
  %35 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %48 [
    i32 132, label %37
    i32 128, label %39
    i32 131, label %43
    i32 129, label %47
    i32 130, label %47
  ]

37:                                               ; preds = %33
  %38 = load i32, i32* @I40E_AQ_SET_FEC_AUTO, align 4
  store i32 %38, i32* %8, align 4
  br label %59

39:                                               ; preds = %33
  %40 = load i32, i32* @I40E_AQ_SET_FEC_REQUEST_RS, align 4
  %41 = load i32, i32* @I40E_AQ_SET_FEC_ABILITY_RS, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %8, align 4
  br label %59

43:                                               ; preds = %33
  %44 = load i32, i32* @I40E_AQ_SET_FEC_REQUEST_KR, align 4
  %45 = load i32, i32* @I40E_AQ_SET_FEC_ABILITY_KR, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %8, align 4
  br label %59

47:                                               ; preds = %33, %33
  store i32 0, i32* %8, align 4
  br label %59

48:                                               ; preds = %33
  %49 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %50 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %4, align 8
  %54 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_warn(i32* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %9, align 4
  br label %63

59:                                               ; preds = %47, %43, %39, %37
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @i40e_set_fec_cfg(%struct.net_device* %60, i32 %61)
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %59, %48, %30
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @i40e_set_fec_cfg(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
