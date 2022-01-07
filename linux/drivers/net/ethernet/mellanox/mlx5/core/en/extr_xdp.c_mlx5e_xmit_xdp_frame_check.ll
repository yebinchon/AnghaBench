; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_xdp.c_mlx5e_xmit_xdp_frame_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_xdp.c_mlx5e_xmit_xdp_frame_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_xdpsq = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@MLX5E_XDP_CHECK_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_xdpsq*)* @mlx5e_xmit_xdp_frame_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_xmit_xdp_frame_check(%struct.mlx5e_xdpsq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_xdpsq*, align 8
  store %struct.mlx5e_xdpsq* %0, %struct.mlx5e_xdpsq** %3, align 8
  %4 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %5 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %4, i32 0, i32 3
  %6 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @mlx5e_wqc_has_room_for(i32* %5, i32 %8, i32 %11, i32 1)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %20 = call i32 @mlx5e_xmit_xdp_doorbell(%struct.mlx5e_xdpsq* %19)
  %21 = load %struct.mlx5e_xdpsq*, %struct.mlx5e_xdpsq** %3, align 8
  %22 = getelementptr inbounds %struct.mlx5e_xdpsq, %struct.mlx5e_xdpsq* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @MLX5E_XDP_CHECK_OK, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %18
  %32 = load i32, i32* %2, align 4
  ret i32 %32
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
