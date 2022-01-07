; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_xdp_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_xdp_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xdp_frame = type { i32 }
%struct.ixgbe_adapter = type { %struct.ixgbe_ring**, i64, i32 }
%struct.ixgbe_ring = type { i32 }

@__IXGBE_DOWN = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@XDP_XMIT_FLAGS_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@__IXGBE_TX_DISABLED = common dso_local global i32 0, align 4
@IXGBE_XDP_TX = common dso_local global i32 0, align 4
@XDP_XMIT_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, %struct.xdp_frame**, i32)* @ixgbe_xdp_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_xdp_xmit(%struct.net_device* %0, i32 %1, %struct.xdp_frame** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xdp_frame**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ixgbe_adapter*, align 8
  %11 = alloca %struct.ixgbe_ring*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.xdp_frame*, align 8
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.xdp_frame** %2, %struct.xdp_frame*** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %16)
  store %struct.ixgbe_adapter* %17, %struct.ixgbe_adapter** %10, align 8
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* @__IXGBE_DOWN, align 4
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %10, align 8
  %20 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %19, i32 0, i32 2
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @ENETDOWN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %110

27:                                               ; preds = %4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @XDP_XMIT_FLAGS_MASK, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %110

37:                                               ; preds = %27
  %38 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %10, align 8
  %39 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %10, align 8
  %44 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %43, i32 0, i32 0
  %45 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %44, align 8
  %46 = call i64 (...) @smp_processor_id()
  %47 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %45, i64 %46
  %48 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %47, align 8
  br label %50

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %42
  %51 = phi %struct.ixgbe_ring* [ %48, %42 ], [ null, %49 ]
  store %struct.ixgbe_ring* %51, %struct.ixgbe_ring** %11, align 8
  %52 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %11, align 8
  %53 = icmp ne %struct.ixgbe_ring* %52, null
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, i32* @ENXIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %110

61:                                               ; preds = %50
  %62 = load i32, i32* @__IXGBE_TX_DISABLED, align 4
  %63 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %11, align 8
  %64 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %63, i32 0, i32 0
  %65 = call i32 @test_bit(i32 %62, i32* %64)
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* @ENXIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %110

71:                                               ; preds = %61
  store i32 0, i32* %13, align 4
  br label %72

72:                                               ; preds = %94, %71
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %72
  %77 = load %struct.xdp_frame**, %struct.xdp_frame*** %8, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.xdp_frame*, %struct.xdp_frame** %77, i64 %79
  %81 = load %struct.xdp_frame*, %struct.xdp_frame** %80, align 8
  store %struct.xdp_frame* %81, %struct.xdp_frame** %14, align 8
  %82 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %10, align 8
  %83 = load %struct.xdp_frame*, %struct.xdp_frame** %14, align 8
  %84 = call i32 @ixgbe_xmit_xdp_ring(%struct.ixgbe_adapter* %82, %struct.xdp_frame* %83)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* @IXGBE_XDP_TX, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %76
  %89 = load %struct.xdp_frame*, %struct.xdp_frame** %14, align 8
  %90 = call i32 @xdp_return_frame_rx_napi(%struct.xdp_frame* %89)
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %88, %76
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %72

97:                                               ; preds = %72
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @XDP_XMIT_FLUSH, align 4
  %100 = and i32 %98, %99
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %11, align 8
  %105 = call i32 @ixgbe_xdp_ring_update_tail(%struct.ixgbe_ring* %104)
  br label %106

106:                                              ; preds = %103, %97
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %12, align 4
  %109 = sub nsw i32 %107, %108
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %106, %68, %58, %34, %24
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @ixgbe_xmit_xdp_ring(%struct.ixgbe_adapter*, %struct.xdp_frame*) #1

declare dso_local i32 @xdp_return_frame_rx_napi(%struct.xdp_frame*) #1

declare dso_local i32 @ixgbe_xdp_ring_update_tail(%struct.ixgbe_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
