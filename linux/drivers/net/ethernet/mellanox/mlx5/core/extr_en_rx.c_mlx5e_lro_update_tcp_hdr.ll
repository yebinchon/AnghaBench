; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_lro_update_tcp_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_lro_update_tcp_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_cqe64 = type { i32, i32 }
%struct.tcphdr = type { i32, i32, i32, i32, i64 }

@CQE_L4_HDR_TYPE_TCP_ACK_NO_DATA = common dso_local global i64 0, align 8
@CQE_L4_HDR_TYPE_TCP_ACK_AND_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_cqe64*, %struct.tcphdr*)* @mlx5e_lro_update_tcp_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_lro_update_tcp_hdr(%struct.mlx5_cqe64* %0, %struct.tcphdr* %1) #0 {
  %3 = alloca %struct.mlx5_cqe64*, align 8
  %4 = alloca %struct.tcphdr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.mlx5_cqe64* %0, %struct.mlx5_cqe64** %3, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %4, align 8
  %7 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %3, align 8
  %8 = call i64 @get_cqe_l4_hdr_type(%struct.mlx5_cqe64* %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @CQE_L4_HDR_TYPE_TCP_ACK_NO_DATA, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @CQE_L4_HDR_TYPE_TCP_ACK_AND_DATA, align 8
  %15 = icmp eq i64 %13, %14
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi i1 [ true, %2 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %6, align 8
  %20 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %21 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %3, align 8
  %23 = call i32 @get_cqe_lro_tcppsh(%struct.mlx5_cqe64* %22)
  %24 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %25 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %16
  %29 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %30 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %3, align 8
  %32 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %35 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %3, align 8
  %37 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %40 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %28, %16
  ret void
}

declare dso_local i64 @get_cqe_l4_hdr_type(%struct.mlx5_cqe64*) #1

declare dso_local i32 @get_cqe_lro_tcppsh(%struct.mlx5_cqe64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
