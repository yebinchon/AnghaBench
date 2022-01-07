; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_update_rx_buffer_headroom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_update_rx_buffer_headroom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_priv = type { i32, i32, i32 }
%struct.dpni_buffer_layout = type { i32, i64, i32 }

@DPNI_QUEUE_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"dpni_get_buffer_layout failed\0A\00", align 1
@XDP_PACKET_HEADROOM = common dso_local global i32 0, align 4
@DPNI_BUF_LAYOUT_OPT_DATA_HEAD_ROOM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"dpni_set_buffer_layout failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpaa2_eth_priv*, i32)* @update_rx_buffer_headroom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_rx_buffer_headroom(%struct.dpaa2_eth_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpaa2_eth_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dpni_buffer_layout, align 8
  %7 = alloca i32, align 4
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = bitcast %struct.dpni_buffer_layout* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %10 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %13 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DPNI_QUEUE_RX, align 4
  %16 = call i32 @dpni_get_buffer_layout(i32 %11, i32 0, i32 %14, i32 %15, %struct.dpni_buffer_layout* %6)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %21 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @netdev_err(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %57

25:                                               ; preds = %2
  %26 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %27 = call i64 @dpaa2_eth_rx_head_room(%struct.dpaa2_eth_priv* %26)
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @XDP_PACKET_HEADROOM, align 4
  br label %33

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32 [ %31, %30 ], [ 0, %32 ]
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %27, %35
  %37 = getelementptr inbounds %struct.dpni_buffer_layout, %struct.dpni_buffer_layout* %6, i32 0, i32 1
  store i64 %36, i64* %37, align 8
  %38 = load i32, i32* @DPNI_BUF_LAYOUT_OPT_DATA_HEAD_ROOM, align 4
  %39 = getelementptr inbounds %struct.dpni_buffer_layout, %struct.dpni_buffer_layout* %6, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %41 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %44 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DPNI_QUEUE_RX, align 4
  %47 = call i32 @dpni_set_buffer_layout(i32 %42, i32 0, i32 %45, i32 %46, %struct.dpni_buffer_layout* %6)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %33
  %51 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %52 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @netdev_err(i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %50, %19
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dpni_get_buffer_layout(i32, i32, i32, i32, %struct.dpni_buffer_layout*) #2

declare dso_local i32 @netdev_err(i32, i8*) #2

declare dso_local i64 @dpaa2_eth_rx_head_room(%struct.dpaa2_eth_priv*) #2

declare dso_local i32 @dpni_set_buffer_layout(i32, i32, i32, i32, %struct.dpni_buffer_layout*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
