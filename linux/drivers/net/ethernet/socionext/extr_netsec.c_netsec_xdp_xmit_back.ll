; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_xdp_xmit_back.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_xdp_xmit_back.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netsec_priv = type { %struct.netsec_desc_ring* }
%struct.netsec_desc_ring = type { i32 }
%struct.xdp_buff = type { i32 }
%struct.xdp_frame = type { i32 }

@NETSEC_RING_TX = common dso_local global i64 0, align 8
@NETSEC_XDP_CONSUMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netsec_priv*, %struct.xdp_buff*)* @netsec_xdp_xmit_back to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netsec_xdp_xmit_back(%struct.netsec_priv* %0, %struct.xdp_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netsec_priv*, align 8
  %5 = alloca %struct.xdp_buff*, align 8
  %6 = alloca %struct.netsec_desc_ring*, align 8
  %7 = alloca %struct.xdp_frame*, align 8
  %8 = alloca i32, align 4
  store %struct.netsec_priv* %0, %struct.netsec_priv** %4, align 8
  store %struct.xdp_buff* %1, %struct.xdp_buff** %5, align 8
  %9 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %10 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %9, i32 0, i32 0
  %11 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %10, align 8
  %12 = load i64, i64* @NETSEC_RING_TX, align 8
  %13 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %11, i64 %12
  store %struct.netsec_desc_ring* %13, %struct.netsec_desc_ring** %6, align 8
  %14 = load %struct.xdp_buff*, %struct.xdp_buff** %5, align 8
  %15 = call %struct.xdp_frame* @convert_to_xdp_frame(%struct.xdp_buff* %14)
  store %struct.xdp_frame* %15, %struct.xdp_frame** %7, align 8
  %16 = load %struct.xdp_frame*, %struct.xdp_frame** %7, align 8
  %17 = icmp ne %struct.xdp_frame* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @NETSEC_XDP_CONSUMED, align 4
  store i32 %23, i32* %3, align 4
  br label %35

24:                                               ; preds = %2
  %25 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %6, align 8
  %26 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %29 = load %struct.xdp_frame*, %struct.xdp_frame** %7, align 8
  %30 = call i32 @netsec_xdp_queue_one(%struct.netsec_priv* %28, %struct.xdp_frame* %29, i32 0)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %6, align 8
  %32 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %24, %22
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.xdp_frame* @convert_to_xdp_frame(%struct.xdp_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netsec_xdp_queue_one(%struct.netsec_priv*, %struct.xdp_frame*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
