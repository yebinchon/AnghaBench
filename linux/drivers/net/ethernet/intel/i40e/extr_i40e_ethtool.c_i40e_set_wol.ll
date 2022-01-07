; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.i40e_netdev_priv = type { %struct.i40e_vsi* }
%struct.i40e_vsi = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i64, i32, %struct.TYPE_2__*, %struct.i40e_vsi**, %struct.i40e_hw }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_hw = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@I40E_SR_NVM_WAKE_ON_LAN = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @i40e_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.i40e_netdev_priv*, align 8
  %7 = alloca %struct.i40e_pf*, align 8
  %8 = alloca %struct.i40e_vsi*, align 8
  %9 = alloca %struct.i40e_hw*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.i40e_netdev_priv* %12, %struct.i40e_netdev_priv** %6, align 8
  %13 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %6, align 8
  %14 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %13, i32 0, i32 0
  %15 = load %struct.i40e_vsi*, %struct.i40e_vsi** %14, align 8
  %16 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %15, i32 0, i32 0
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  store %struct.i40e_pf* %17, %struct.i40e_pf** %7, align 8
  %18 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %6, align 8
  %19 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %18, i32 0, i32 0
  %20 = load %struct.i40e_vsi*, %struct.i40e_vsi** %19, align 8
  store %struct.i40e_vsi* %20, %struct.i40e_vsi** %8, align 8
  %21 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %22 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %21, i32 0, i32 4
  store %struct.i40e_hw* %22, %struct.i40e_hw** %9, align 8
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %24 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %29 = call i32 @i40e_partition_setting_complaint(%struct.i40e_pf* %28)
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %102

32:                                               ; preds = %2
  %33 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %34 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %35 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %34, i32 0, i32 3
  %36 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %35, align 8
  %37 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %38 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %36, i64 %39
  %41 = load %struct.i40e_vsi*, %struct.i40e_vsi** %40, align 8
  %42 = icmp ne %struct.i40e_vsi* %33, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* @EOPNOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %102

46:                                               ; preds = %32
  %47 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %48 = load i32, i32* @I40E_SR_NVM_WAKE_ON_LAN, align 4
  %49 = call i32 @i40e_read_nvm_word(%struct.i40e_hw* %47, i32 %48, i32* %10)
  %50 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %51 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @BIT(i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load i32, i32* @EOPNOTSUPP, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %102

60:                                               ; preds = %46
  %61 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @WAKE_MAGIC, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i32, i32* @EOPNOTSUPP, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %102

71:                                               ; preds = %60
  %72 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %73 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %76 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = icmp ne i32 %74, %81
  br i1 %82, label %83, label %101

83:                                               ; preds = %71
  %84 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %85 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %92 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %94 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %93, i32 0, i32 2
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %98 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @device_set_wakeup_enable(i32* %96, i32 %99)
  br label %101

101:                                              ; preds = %83, %71
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %68, %57, %43, %27
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @i40e_partition_setting_complaint(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_read_nvm_word(%struct.i40e_hw*, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @device_set_wakeup_enable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
