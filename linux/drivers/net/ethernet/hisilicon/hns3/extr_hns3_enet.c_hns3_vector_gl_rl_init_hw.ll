; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_vector_gl_rl_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_vector_gl_rl_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_tqp_vector = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.hns3_nic_priv = type { %struct.hnae3_handle* }
%struct.hnae3_handle = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns3_enet_tqp_vector*, %struct.hns3_nic_priv*)* @hns3_vector_gl_rl_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_vector_gl_rl_init_hw(%struct.hns3_enet_tqp_vector* %0, %struct.hns3_nic_priv* %1) #0 {
  %3 = alloca %struct.hns3_enet_tqp_vector*, align 8
  %4 = alloca %struct.hns3_nic_priv*, align 8
  %5 = alloca %struct.hnae3_handle*, align 8
  store %struct.hns3_enet_tqp_vector* %0, %struct.hns3_enet_tqp_vector** %3, align 8
  store %struct.hns3_nic_priv* %1, %struct.hns3_nic_priv** %4, align 8
  %6 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %4, align 8
  %7 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %6, i32 0, i32 0
  %8 = load %struct.hnae3_handle*, %struct.hnae3_handle** %7, align 8
  store %struct.hnae3_handle* %8, %struct.hnae3_handle** %5, align 8
  %9 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %3, align 8
  %10 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %3, align 8
  %11 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @hns3_set_vector_coalesce_tx_gl(%struct.hns3_enet_tqp_vector* %9, i32 %14)
  %16 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %3, align 8
  %17 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %3, align 8
  %18 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @hns3_set_vector_coalesce_rx_gl(%struct.hns3_enet_tqp_vector* %16, i32 %21)
  %23 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %3, align 8
  %24 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %25 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @hns3_set_vector_coalesce_rl(%struct.hns3_enet_tqp_vector* %23, i32 %27)
  ret void
}

declare dso_local i32 @hns3_set_vector_coalesce_tx_gl(%struct.hns3_enet_tqp_vector*, i32) #1

declare dso_local i32 @hns3_set_vector_coalesce_rx_gl(%struct.hns3_enet_tqp_vector*, i32) #1

declare dso_local i32 @hns3_set_vector_coalesce_rl(%struct.hns3_enet_tqp_vector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
