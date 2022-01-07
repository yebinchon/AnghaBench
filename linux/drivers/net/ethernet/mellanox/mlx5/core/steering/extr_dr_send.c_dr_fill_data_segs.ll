; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_dr_fill_data_segs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_dr_fill_data_segs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_send_ring = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.postsend_info = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32 }

@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5dr_send_ring*, %struct.postsend_info*)* @dr_fill_data_segs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_fill_data_segs(%struct.mlx5dr_send_ring* %0, %struct.postsend_info* %1) #0 {
  %3 = alloca %struct.mlx5dr_send_ring*, align 8
  %4 = alloca %struct.postsend_info*, align 8
  store %struct.mlx5dr_send_ring* %0, %struct.mlx5dr_send_ring** %3, align 8
  store %struct.postsend_info* %1, %struct.postsend_info** %4, align 8
  %5 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 8
  %9 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = srem i32 %11, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %19 = load %struct.postsend_info*, %struct.postsend_info** %4, align 8
  %20 = getelementptr inbounds %struct.postsend_info, %struct.postsend_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %18
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %17, %2
  %25 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %3, align 8
  %26 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = load %struct.postsend_info*, %struct.postsend_info** %4, align 8
  %30 = getelementptr inbounds %struct.postsend_info, %struct.postsend_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.postsend_info*, %struct.postsend_info** %4, align 8
  %34 = getelementptr inbounds %struct.postsend_info, %struct.postsend_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 8
  %36 = load %struct.postsend_info*, %struct.postsend_info** %4, align 8
  %37 = getelementptr inbounds %struct.postsend_info, %struct.postsend_info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.postsend_info*, %struct.postsend_info** %4, align 8
  %41 = getelementptr inbounds %struct.postsend_info, %struct.postsend_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  %43 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %3, align 8
  %44 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %43, i32 0, i32 2
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.postsend_info*, %struct.postsend_info** %4, align 8
  %50 = getelementptr inbounds %struct.postsend_info, %struct.postsend_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 4
  %52 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %3, align 8
  %53 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %3, align 8
  %56 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = srem i32 %54, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %24
  %61 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %62 = load %struct.postsend_info*, %struct.postsend_info** %4, align 8
  %63 = getelementptr inbounds %struct.postsend_info, %struct.postsend_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 8
  br label %69

65:                                               ; preds = %24
  %66 = load %struct.postsend_info*, %struct.postsend_info** %4, align 8
  %67 = getelementptr inbounds %struct.postsend_info, %struct.postsend_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  store i32 0, i32* %68, align 8
  br label %69

69:                                               ; preds = %65, %60
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
