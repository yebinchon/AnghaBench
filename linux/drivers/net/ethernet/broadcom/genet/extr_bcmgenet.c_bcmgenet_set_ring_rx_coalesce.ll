; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_set_ring_rx_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_set_ring_rx_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmgenet_rx_ring = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ethtool_coalesce = type { i64, i32, i32 }
%struct.dim_cq_moder = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcmgenet_rx_ring*, %struct.ethtool_coalesce*)* @bcmgenet_set_ring_rx_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcmgenet_set_ring_rx_coalesce(%struct.bcmgenet_rx_ring* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca %struct.bcmgenet_rx_ring*, align 8
  %4 = alloca %struct.ethtool_coalesce*, align 8
  %5 = alloca %struct.dim_cq_moder, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dim_cq_moder, align 4
  store %struct.bcmgenet_rx_ring* %0, %struct.bcmgenet_rx_ring** %3, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %4, align 8
  %9 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %3, align 8
  %13 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %15 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %3, align 8
  %18 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %3, align 8
  %20 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %3, align 8
  %23 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %2
  %30 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %3, align 8
  %31 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %29
  %36 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %3, align 8
  %37 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @net_dim_get_def_rx_moderation(i32 %40)
  %42 = bitcast %struct.dim_cq_moder* %8 to i64*
  store i64 %41, i64* %42, align 4
  %43 = bitcast %struct.dim_cq_moder* %5 to i8*
  %44 = bitcast %struct.dim_cq_moder* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 8, i1 false)
  %45 = getelementptr inbounds %struct.dim_cq_moder, %struct.dim_cq_moder* %5, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %6, align 4
  %47 = getelementptr inbounds %struct.dim_cq_moder, %struct.dim_cq_moder* %5, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %35, %29, %2
  %50 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %51 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %3, align 8
  %54 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  %56 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %3, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @bcmgenet_set_rx_coalesce(%struct.bcmgenet_rx_ring* %56, i32 %57, i32 %58)
  ret void
}

declare dso_local i64 @net_dim_get_def_rx_moderation(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bcmgenet_set_rx_coalesce(%struct.bcmgenet_rx_ring*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
