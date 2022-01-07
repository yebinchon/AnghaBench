; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i40e_netdev_priv = type { %struct.i40e_vsi* }
%struct.i40e_vsi = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i32, i32 }

@__I40E_TESTING = common dso_local global i32 0, align 4
@__I40E_BAD_EEPROM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@I40E_GLLAN_TSOMSK_F = common dso_local global i32 0, align 4
@TCP_FLAG_PSH = common dso_local global i32 0, align 4
@TCP_FLAG_FIN = common dso_local global i32 0, align 4
@I40E_GLLAN_TSOMSK_M = common dso_local global i32 0, align 4
@TCP_FLAG_CWR = common dso_local global i32 0, align 4
@I40E_GLLAN_TSOMSK_L = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.i40e_netdev_priv*, align 8
  %5 = alloca %struct.i40e_vsi*, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.i40e_netdev_priv* %9, %struct.i40e_netdev_priv** %4, align 8
  %10 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %4, align 8
  %11 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %10, i32 0, i32 0
  %12 = load %struct.i40e_vsi*, %struct.i40e_vsi** %11, align 8
  store %struct.i40e_vsi* %12, %struct.i40e_vsi** %5, align 8
  %13 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %14 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %13, i32 0, i32 0
  %15 = load %struct.i40e_pf*, %struct.i40e_pf** %14, align 8
  store %struct.i40e_pf* %15, %struct.i40e_pf** %6, align 8
  %16 = load i32, i32* @__I40E_TESTING, align 4
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %18 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @test_bit(i32 %16, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @__I40E_BAD_EEPROM, align 4
  %24 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %25 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @test_bit(i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22, %1
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %78

32:                                               ; preds = %22
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i32 @netif_carrier_off(%struct.net_device* %33)
  %35 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %36 = call i64 @i40e_force_link_state(%struct.i40e_pf* %35, i32 1)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EAGAIN, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %78

41:                                               ; preds = %32
  %42 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %43 = call i32 @i40e_vsi_open(%struct.i40e_vsi* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %78

48:                                               ; preds = %41
  %49 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %50 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %49, i32 0, i32 0
  %51 = load i32, i32* @I40E_GLLAN_TSOMSK_F, align 4
  %52 = load i32, i32* @TCP_FLAG_PSH, align 4
  %53 = load i32, i32* @TCP_FLAG_FIN, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @be32_to_cpu(i32 %54)
  %56 = ashr i32 %55, 16
  %57 = call i32 @wr32(i32* %50, i32 %51, i32 %56)
  %58 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %59 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %58, i32 0, i32 0
  %60 = load i32, i32* @I40E_GLLAN_TSOMSK_M, align 4
  %61 = load i32, i32* @TCP_FLAG_PSH, align 4
  %62 = load i32, i32* @TCP_FLAG_FIN, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @TCP_FLAG_CWR, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @be32_to_cpu(i32 %65)
  %67 = ashr i32 %66, 16
  %68 = call i32 @wr32(i32* %59, i32 %60, i32 %67)
  %69 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %70 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %69, i32 0, i32 0
  %71 = load i32, i32* @I40E_GLLAN_TSOMSK_L, align 4
  %72 = load i32, i32* @TCP_FLAG_CWR, align 4
  %73 = call i32 @be32_to_cpu(i32 %72)
  %74 = ashr i32 %73, 16
  %75 = call i32 @wr32(i32* %70, i32 %71, i32 %74)
  %76 = load %struct.net_device*, %struct.net_device** %3, align 8
  %77 = call i32 @udp_tunnel_get_rx_info(%struct.net_device* %76)
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %48, %46, %38, %29
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i64 @i40e_force_link_state(%struct.i40e_pf*, i32) #1

declare dso_local i32 @i40e_vsi_open(%struct.i40e_vsi*) #1

declare dso_local i32 @wr32(i32*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @udp_tunnel_get_rx_info(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
