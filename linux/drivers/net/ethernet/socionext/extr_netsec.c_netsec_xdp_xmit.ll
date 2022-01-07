; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_xdp_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_xdp_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xdp_frame = type { i32 }
%struct.netsec_priv = type { %struct.netsec_desc_ring* }
%struct.netsec_desc_ring = type { i64, i32 }

@NETSEC_RING_TX = common dso_local global i64 0, align 8
@XDP_XMIT_FLAGS_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NETSEC_XDP_TX = common dso_local global i32 0, align 4
@XDP_XMIT_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, %struct.xdp_frame**, i32)* @netsec_xdp_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netsec_xdp_xmit(%struct.net_device* %0, i32 %1, %struct.xdp_frame** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xdp_frame**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.netsec_priv*, align 8
  %11 = alloca %struct.netsec_desc_ring*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.xdp_frame*, align 8
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.xdp_frame** %2, %struct.xdp_frame*** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.netsec_priv* @netdev_priv(%struct.net_device* %16)
  store %struct.netsec_priv* %17, %struct.netsec_priv** %10, align 8
  %18 = load %struct.netsec_priv*, %struct.netsec_priv** %10, align 8
  %19 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %18, i32 0, i32 0
  %20 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %19, align 8
  %21 = load i64, i64* @NETSEC_RING_TX, align 8
  %22 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %20, i64 %21
  store %struct.netsec_desc_ring* %22, %struct.netsec_desc_ring** %11, align 8
  store i32 0, i32* %12, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @XDP_XMIT_FLAGS_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %87

32:                                               ; preds = %4
  %33 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %11, align 8
  %34 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %33, i32 0, i32 1
  %35 = call i32 @spin_lock(i32* %34)
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %63, %32
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %36
  %41 = load %struct.xdp_frame**, %struct.xdp_frame*** %8, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.xdp_frame*, %struct.xdp_frame** %41, i64 %43
  %45 = load %struct.xdp_frame*, %struct.xdp_frame** %44, align 8
  store %struct.xdp_frame* %45, %struct.xdp_frame** %14, align 8
  %46 = load %struct.netsec_priv*, %struct.netsec_priv** %10, align 8
  %47 = load %struct.xdp_frame*, %struct.xdp_frame** %14, align 8
  %48 = call i32 @netsec_xdp_queue_one(%struct.netsec_priv* %46, %struct.xdp_frame* %47, i32 1)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @NETSEC_XDP_TX, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %40
  %53 = load %struct.xdp_frame*, %struct.xdp_frame** %14, align 8
  %54 = call i32 @xdp_return_frame_rx_napi(%struct.xdp_frame* %53)
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %62

57:                                               ; preds = %40
  %58 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %11, align 8
  %59 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %59, align 8
  br label %62

62:                                               ; preds = %57, %52
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %36

66:                                               ; preds = %36
  %67 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %11, align 8
  %68 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %67, i32 0, i32 1
  %69 = call i32 @spin_unlock(i32* %68)
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @XDP_XMIT_FLUSH, align 4
  %72 = and i32 %70, %71
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %66
  %76 = load %struct.netsec_priv*, %struct.netsec_priv** %10, align 8
  %77 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %11, align 8
  %78 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @netsec_xdp_ring_tx_db(%struct.netsec_priv* %76, i64 %79)
  %81 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %11, align 8
  %82 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %75, %66
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %12, align 4
  %86 = sub nsw i32 %84, %85
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %83, %29
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.netsec_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netsec_xdp_queue_one(%struct.netsec_priv*, %struct.xdp_frame*, i32) #1

declare dso_local i32 @xdp_return_frame_rx_napi(%struct.xdp_frame*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @netsec_xdp_ring_tx_db(%struct.netsec_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
