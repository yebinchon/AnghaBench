; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_xdp.c_mlx5e_xmit_xdp_frame_check_mpwqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_xdp.c_mlx5e_xmit_xdp_frame_check_mpwqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_xdpsq = type { %struct.TYPE_4__*, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MLX5E_XDPSQ_STOP_ROOM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MLX5E_XDP_CHECK_START_MPWQE = common dso_local global i32 0, align 4
@MLX5E_XDP_CHECK_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_xdpsq*)* @mlx5e_xmit_xdp_frame_check_mpwqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_xmit_xdp_frame_check_mpwqe(%struct.mlx5e_xdpsq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_xdpsq*, align 8
  store %struct.mlx5e_xdpsq* %0, %struct.mlx5e_xdpsq** %3, align 8
  %4 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %5 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %4, i32 0, i32 4
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %1
  %14 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %14, i32 0, i32 3
  %16 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %17 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %20 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MLX5E_XDPSQ_STOP_ROOM, align 4
  %23 = call i32 @mlx5e_wqc_has_room_for(i32* %15, i32 %18, i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %13
  %30 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %31 = call i32 @mlx5e_xmit_xdp_doorbell(%struct.mlx5e_xdpsq* %30)
  %32 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %33 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %44

40:                                               ; preds = %13
  %41 = load i32, i32* @MLX5E_XDP_CHECK_START_MPWQE, align 4
  store i32 %41, i32* %2, align 4
  br label %44

42:                                               ; preds = %1
  %43 = load i32, i32* @MLX5E_XDP_CHECK_OK, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %40, %29
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5e_wqc_has_room_for(i32*, i32, i32, i32) #1

declare dso_local i32 @mlx5e_xmit_xdp_doorbell(%struct.mlx5e_xdpsq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
