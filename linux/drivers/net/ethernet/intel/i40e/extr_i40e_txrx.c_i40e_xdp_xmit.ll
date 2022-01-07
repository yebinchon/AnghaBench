; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_xdp_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_xdp_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xdp_frame = type { i32 }
%struct.i40e_netdev_priv = type { %struct.i40e_vsi* }
%struct.i40e_vsi = type { i32, %struct.i40e_ring**, i32, %struct.i40e_pf* }
%struct.i40e_ring = type { i32 }
%struct.i40e_pf = type { i32 }

@__I40E_VSI_DOWN = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@__I40E_CONFIG_BUSY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@XDP_XMIT_FLAGS_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@I40E_XDP_TX = common dso_local global i32 0, align 4
@XDP_XMIT_FLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_xdp_xmit(%struct.net_device* %0, i32 %1, %struct.xdp_frame** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xdp_frame**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40e_netdev_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.i40e_vsi*, align 8
  %13 = alloca %struct.i40e_pf*, align 8
  %14 = alloca %struct.i40e_ring*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.xdp_frame*, align 8
  %18 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.xdp_frame** %2, %struct.xdp_frame*** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %19)
  store %struct.i40e_netdev_priv* %20, %struct.i40e_netdev_priv** %10, align 8
  %21 = call i32 (...) @smp_processor_id()
  store i32 %21, i32* %11, align 4
  %22 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %10, align 8
  %23 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %22, i32 0, i32 0
  %24 = load %struct.i40e_vsi*, %struct.i40e_vsi** %23, align 8
  store %struct.i40e_vsi* %24, %struct.i40e_vsi** %12, align 8
  %25 = load %struct.i40e_vsi*, %struct.i40e_vsi** %12, align 8
  %26 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %25, i32 0, i32 3
  %27 = load %struct.i40e_pf*, %struct.i40e_pf** %26, align 8
  store %struct.i40e_pf* %27, %struct.i40e_pf** %13, align 8
  store i32 0, i32* %15, align 4
  %28 = load i32, i32* @__I40E_VSI_DOWN, align 4
  %29 = load %struct.i40e_vsi*, %struct.i40e_vsi** %12, align 8
  %30 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @test_bit(i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load i32, i32* @ENETDOWN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %113

37:                                               ; preds = %4
  %38 = load %struct.i40e_vsi*, %struct.i40e_vsi** %12, align 8
  %39 = call i32 @i40e_enabled_xdp_vsi(%struct.i40e_vsi* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.i40e_vsi*, %struct.i40e_vsi** %12, align 8
  %44 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp uge i32 %42, %45
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @__I40E_CONFIG_BUSY, align 4
  %49 = load %struct.i40e_pf*, %struct.i40e_pf** %13, align 8
  %50 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @test_bit(i32 %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47, %41, %37
  %55 = load i32, i32* @ENXIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %113

57:                                               ; preds = %47
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @XDP_XMIT_FLAGS_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %113

67:                                               ; preds = %57
  %68 = load %struct.i40e_vsi*, %struct.i40e_vsi** %12, align 8
  %69 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %68, i32 0, i32 1
  %70 = load %struct.i40e_ring**, %struct.i40e_ring*** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.i40e_ring*, %struct.i40e_ring** %70, i64 %72
  %74 = load %struct.i40e_ring*, %struct.i40e_ring** %73, align 8
  store %struct.i40e_ring* %74, %struct.i40e_ring** %14, align 8
  store i32 0, i32* %16, align 4
  br label %75

75:                                               ; preds = %97, %67
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %75
  %80 = load %struct.xdp_frame**, %struct.xdp_frame*** %8, align 8
  %81 = load i32, i32* %16, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.xdp_frame*, %struct.xdp_frame** %80, i64 %82
  %84 = load %struct.xdp_frame*, %struct.xdp_frame** %83, align 8
  store %struct.xdp_frame* %84, %struct.xdp_frame** %17, align 8
  %85 = load %struct.xdp_frame*, %struct.xdp_frame** %17, align 8
  %86 = load %struct.i40e_ring*, %struct.i40e_ring** %14, align 8
  %87 = call i32 @i40e_xmit_xdp_ring(%struct.xdp_frame* %85, %struct.i40e_ring* %86)
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* @I40E_XDP_TX, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %79
  %92 = load %struct.xdp_frame*, %struct.xdp_frame** %17, align 8
  %93 = call i32 @xdp_return_frame_rx_napi(%struct.xdp_frame* %92)
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %15, align 4
  br label %96

96:                                               ; preds = %91, %79
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %16, align 4
  br label %75

100:                                              ; preds = %75
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @XDP_XMIT_FLUSH, align 4
  %103 = and i32 %101, %102
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load %struct.i40e_ring*, %struct.i40e_ring** %14, align 8
  %108 = call i32 @i40e_xdp_ring_update_tail(%struct.i40e_ring* %107)
  br label %109

109:                                              ; preds = %106, %100
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %15, align 4
  %112 = sub nsw i32 %110, %111
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %109, %64, %54, %34
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @i40e_enabled_xdp_vsi(%struct.i40e_vsi*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @i40e_xmit_xdp_ring(%struct.xdp_frame*, %struct.i40e_ring*) #1

declare dso_local i32 @xdp_return_frame_rx_napi(%struct.xdp_frame*) #1

declare dso_local i32 @i40e_xdp_ring_update_tail(%struct.i40e_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
