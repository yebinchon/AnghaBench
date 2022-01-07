; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_uninit_vector_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_uninit_vector_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_nic_priv = type { i32, %struct.hns3_enet_tqp_vector*, %struct.hnae3_handle* }
%struct.hns3_enet_tqp_vector = type { i64, i32, %struct.TYPE_6__, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.hnae3_handle = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.hnae3_handle*, i32, %struct.hnae3_ring_chain_node*)* }
%struct.hnae3_ring_chain_node = type { i32 }

@HNS3_VECTOR_INITED = common dso_local global i64 0, align 8
@HNS3_VECTOR_NOT_INITED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns3_nic_priv*)* @hns3_nic_uninit_vector_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_nic_uninit_vector_data(%struct.hns3_nic_priv* %0) #0 {
  %2 = alloca %struct.hns3_nic_priv*, align 8
  %3 = alloca %struct.hnae3_ring_chain_node, align 4
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca %struct.hns3_enet_tqp_vector*, align 8
  %6 = alloca i32, align 4
  store %struct.hns3_nic_priv* %0, %struct.hns3_nic_priv** %2, align 8
  %7 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %8 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %7, i32 0, i32 2
  %9 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  store %struct.hnae3_handle* %9, %struct.hnae3_handle** %4, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %85, %1
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %13 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %88

16:                                               ; preds = %10
  %17 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %18 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %17, i32 0, i32 1
  %19 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %19, i64 %21
  store %struct.hns3_enet_tqp_vector* %22, %struct.hns3_enet_tqp_vector** %5, align 8
  %23 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %5, align 8
  %24 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %16
  %29 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %5, align 8
  %30 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %85

35:                                               ; preds = %28, %16
  %36 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %5, align 8
  %37 = call i32 @hns3_get_vector_ring_chain(%struct.hns3_enet_tqp_vector* %36, %struct.hnae3_ring_chain_node* %3)
  %38 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %39 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32 (%struct.hnae3_handle*, i32, %struct.hnae3_ring_chain_node*)*, i32 (%struct.hnae3_handle*, i32, %struct.hnae3_ring_chain_node*)** %43, align 8
  %45 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %46 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %5, align 8
  %47 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 %44(%struct.hnae3_handle* %45, i32 %48, %struct.hnae3_ring_chain_node* %3)
  %50 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %5, align 8
  %51 = call i32 @hns3_free_vector_ring_chain(%struct.hns3_enet_tqp_vector* %50, %struct.hnae3_ring_chain_node* %3)
  %52 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %5, align 8
  %53 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @HNS3_VECTOR_INITED, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %35
  %58 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %5, align 8
  %59 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @irq_set_affinity_hint(i32 %60, i32* null)
  %62 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %5, align 8
  %63 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %5, align 8
  %66 = call i32 @free_irq(i32 %64, %struct.hns3_enet_tqp_vector* %65)
  %67 = load i64, i64* @HNS3_VECTOR_NOT_INITED, align 8
  %68 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %5, align 8
  %69 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %57, %35
  %71 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %5, align 8
  %72 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %71, i32 0, i32 3
  %73 = call i32 @hns3_clear_ring_group(%struct.TYPE_6__* %72)
  %74 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %5, align 8
  %75 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %74, i32 0, i32 2
  %76 = call i32 @hns3_clear_ring_group(%struct.TYPE_6__* %75)
  %77 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %78 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %77, i32 0, i32 1
  %79 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %79, i64 %81
  %83 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %82, i32 0, i32 1
  %84 = call i32 @netif_napi_del(i32* %83)
  br label %85

85:                                               ; preds = %70, %34
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %10

88:                                               ; preds = %10
  ret void
}

declare dso_local i32 @hns3_get_vector_ring_chain(%struct.hns3_enet_tqp_vector*, %struct.hnae3_ring_chain_node*) #1

declare dso_local i32 @hns3_free_vector_ring_chain(%struct.hns3_enet_tqp_vector*, %struct.hnae3_ring_chain_node*) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.hns3_enet_tqp_vector*) #1

declare dso_local i32 @hns3_clear_ring_group(%struct.TYPE_6__*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
