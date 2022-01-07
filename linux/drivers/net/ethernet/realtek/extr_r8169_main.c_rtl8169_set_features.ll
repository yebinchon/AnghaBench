; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtl8169_private = type { i32 }

@RxConfig = common dso_local global i32 0, align 4
@NETIF_F_RXALL = common dso_local global i32 0, align 4
@AcceptErr = common dso_local global i32 0, align 4
@AcceptRunt = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@RX_VLAN_8125 = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@RxChkSum = common dso_local global i32 0, align 4
@RxVlan = common dso_local global i32 0, align 4
@CPlusCmd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @rtl8169_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8169_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl8169_private*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.rtl8169_private* @netdev_priv(%struct.net_device* %7)
  store %struct.rtl8169_private* %8, %struct.rtl8169_private** %5, align 8
  %9 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %10 = call i32 @rtl_lock_work(%struct.rtl8169_private* %9)
  %11 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %12 = load i32, i32* @RxConfig, align 4
  %13 = call i32 @RTL_R32(%struct.rtl8169_private* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @NETIF_F_RXALL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @AcceptErr, align 4
  %20 = load i32, i32* @AcceptRunt, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %31

24:                                               ; preds = %2
  %25 = load i32, i32* @AcceptErr, align 4
  %26 = load i32, i32* @AcceptRunt, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %24, %18
  %32 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %33 = call i64 @rtl_is_8125(%struct.rtl8169_private* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @RX_VLAN_8125, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %49

44:                                               ; preds = %35
  %45 = load i32, i32* @RX_VLAN_8125, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %44, %40
  br label %50

50:                                               ; preds = %49, %31
  %51 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %52 = load i32, i32* @RxConfig, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @RTL_W32(%struct.rtl8169_private* %51, i32 %52, i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %50
  %60 = load i32, i32* @RxChkSum, align 4
  %61 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %62 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %72

65:                                               ; preds = %50
  %66 = load i32, i32* @RxChkSum, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %69 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %65, %59
  %73 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %74 = call i64 @rtl_is_8125(%struct.rtl8169_private* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %95, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i32, i32* @RxVlan, align 4
  %83 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %84 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %94

87:                                               ; preds = %76
  %88 = load i32, i32* @RxVlan, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %91 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %87, %81
  br label %95

95:                                               ; preds = %94, %72
  %96 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %97 = load i32, i32* @CPlusCmd, align 4
  %98 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %99 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @RTL_W16(%struct.rtl8169_private* %96, i32 %97, i32 %100)
  %102 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %103 = load i32, i32* @CPlusCmd, align 4
  %104 = call i32 @RTL_R16(%struct.rtl8169_private* %102, i32 %103)
  %105 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %106 = call i32 @rtl_unlock_work(%struct.rtl8169_private* %105)
  ret i32 0
}

declare dso_local %struct.rtl8169_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rtl_lock_work(%struct.rtl8169_private*) #1

declare dso_local i32 @RTL_R32(%struct.rtl8169_private*, i32) #1

declare dso_local i64 @rtl_is_8125(%struct.rtl8169_private*) #1

declare dso_local i32 @RTL_W32(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_W16(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R16(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_unlock_work(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
