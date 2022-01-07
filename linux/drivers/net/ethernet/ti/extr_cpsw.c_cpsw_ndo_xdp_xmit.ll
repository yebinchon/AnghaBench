; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_ndo_xdp_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_ndo_xdp_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xdp_frame = type { i64 }
%struct.cpsw_priv = type { i32 }

@XDP_XMIT_FLAGS_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CPSW_MIN_PACKET_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, %struct.xdp_frame**, i32)* @cpsw_ndo_xdp_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_ndo_xdp_xmit(%struct.net_device* %0, i32 %1, %struct.xdp_frame** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xdp_frame**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cpsw_priv*, align 8
  %11 = alloca %struct.xdp_frame*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.xdp_frame** %2, %struct.xdp_frame*** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.cpsw_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.cpsw_priv* %15, %struct.cpsw_priv** %10, align 8
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @XDP_XMIT_FLAGS_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %62

25:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %55, %25
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %26
  %31 = load %struct.xdp_frame**, %struct.xdp_frame*** %8, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.xdp_frame*, %struct.xdp_frame** %31, i64 %33
  %35 = load %struct.xdp_frame*, %struct.xdp_frame** %34, align 8
  store %struct.xdp_frame* %35, %struct.xdp_frame** %11, align 8
  %36 = load %struct.xdp_frame*, %struct.xdp_frame** %11, align 8
  %37 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CPSW_MIN_PACKET_SIZE, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = load %struct.xdp_frame*, %struct.xdp_frame** %11, align 8
  %43 = call i32 @xdp_return_frame_rx_napi(%struct.xdp_frame* %42)
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %13, align 4
  br label %55

46:                                               ; preds = %30
  %47 = load %struct.cpsw_priv*, %struct.cpsw_priv** %10, align 8
  %48 = load %struct.xdp_frame*, %struct.xdp_frame** %11, align 8
  %49 = call i64 @cpsw_xdp_tx_frame(%struct.cpsw_priv* %47, %struct.xdp_frame* %48, i32* null)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %51, %46
  br label %55

55:                                               ; preds = %54, %41
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %26

58:                                               ; preds = %26
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %13, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %58, %22
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.cpsw_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xdp_return_frame_rx_napi(%struct.xdp_frame*) #1

declare dso_local i64 @cpsw_xdp_tx_frame(%struct.cpsw_priv*, %struct.xdp_frame*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
