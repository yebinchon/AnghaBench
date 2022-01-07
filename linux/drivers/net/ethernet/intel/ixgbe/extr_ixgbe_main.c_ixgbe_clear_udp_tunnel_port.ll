; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_clear_udp_tunnel_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_clear_udp_tunnel_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i64, i64, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32 }

@IXGBE_FLAG_VXLAN_OFFLOAD_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_FLAG_GENEVE_OFFLOAD_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_VXLANCTRL = common dso_local global i32 0, align 4
@IXGBE_VXLANCTRL_VXLAN_UDPPORT_MASK = common dso_local global i32 0, align 4
@IXGBE_VXLANCTRL_GENEVE_UDPPORT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*, i32)* @ixgbe_clear_udp_tunnel_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_clear_udp_tunnel_port(%struct.ixgbe_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %7, i32 0, i32 3
  store %struct.ixgbe_hw* %8, %struct.ixgbe_hw** %5, align 8
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @IXGBE_FLAG_VXLAN_OFFLOAD_CAPABLE, align 4
  %13 = load i32, i32* @IXGBE_FLAG_GENEVE_OFFLOAD_CAPABLE, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %44

18:                                               ; preds = %2
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %20 = load i32, i32* @IXGBE_VXLANCTRL, align 4
  %21 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  store i32 %24, i32* %6, align 4
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %26 = load i32, i32* @IXGBE_VXLANCTRL, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %25, i32 %26, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @IXGBE_VXLANCTRL_VXLAN_UDPPORT_MASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %18
  %34 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %33, %18
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @IXGBE_VXLANCTRL_GENEVE_UDPPORT_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %17, %41, %36
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
