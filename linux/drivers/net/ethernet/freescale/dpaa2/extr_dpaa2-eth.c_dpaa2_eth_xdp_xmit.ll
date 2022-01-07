; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_dpaa2_eth_xdp_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_dpaa2_eth_xdp_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xdp_frame = type { i32 }

@XDP_XMIT_FLAGS_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, %struct.xdp_frame**, i32)* @dpaa2_eth_xdp_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa2_eth_xdp_xmit(%struct.net_device* %0, i32 %1, %struct.xdp_frame** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xdp_frame**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.xdp_frame*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.xdp_frame** %2, %struct.xdp_frame*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @XDP_XMIT_FLAGS_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %59

23:                                               ; preds = %4
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = call i32 @netif_running(%struct.net_device* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @ENETDOWN, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %59

30:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %52, %30
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = load %struct.xdp_frame**, %struct.xdp_frame*** %8, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.xdp_frame*, %struct.xdp_frame** %36, i64 %38
  %40 = load %struct.xdp_frame*, %struct.xdp_frame** %39, align 8
  store %struct.xdp_frame* %40, %struct.xdp_frame** %13, align 8
  %41 = load %struct.net_device*, %struct.net_device** %6, align 8
  %42 = load %struct.xdp_frame*, %struct.xdp_frame** %13, align 8
  %43 = call i32 @dpaa2_eth_xdp_xmit_frame(%struct.net_device* %41, %struct.xdp_frame* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = load %struct.xdp_frame*, %struct.xdp_frame** %13, align 8
  %48 = call i32 @xdp_return_frame_rx_napi(%struct.xdp_frame* %47)
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %46, %35
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %31

55:                                               ; preds = %31
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %56, %57
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %55, %27, %20
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @dpaa2_eth_xdp_xmit_frame(%struct.net_device*, %struct.xdp_frame*) #1

declare dso_local i32 @xdp_return_frame_rx_napi(%struct.xdp_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
