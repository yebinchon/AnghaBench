; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_close_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_close_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_channel = type { %struct.TYPE_6__, %struct.TYPE_4__, %struct.TYPE_5__, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_channel*)* @mlx5e_close_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_close_queues(%struct.mlx5e_channel* %0) #0 {
  %2 = alloca %struct.mlx5e_channel*, align 8
  store %struct.mlx5e_channel* %0, %struct.mlx5e_channel** %2, align 8
  %3 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %4 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %3, i32 0, i32 1
  %5 = call i32 @mlx5e_close_xdpsq(%struct.TYPE_4__* %4)
  %6 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %7 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %6, i32 0, i32 2
  %8 = call i32 @mlx5e_close_rq(%struct.TYPE_5__* %7)
  %9 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %10 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %15 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %14, i32 0, i32 3
  %16 = call i32 @mlx5e_close_xdpsq(%struct.TYPE_4__* %15)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %19 = call i32 @mlx5e_close_sqs(%struct.mlx5e_channel* %18)
  %20 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %21 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %20, i32 0, i32 0
  %22 = call i32 @mlx5e_close_icosq(%struct.TYPE_6__* %21)
  %23 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %24 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %23, i32 0, i32 5
  %25 = call i32 @napi_disable(i32* %24)
  %26 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %27 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %17
  %31 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %32 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @mlx5e_close_cq(i32* %33)
  br label %35

35:                                               ; preds = %30, %17
  %36 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %37 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = call i32 @mlx5e_close_cq(i32* %38)
  %40 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %41 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @mlx5e_close_cq(i32* %42)
  %44 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %45 = call i32 @mlx5e_close_tx_cqs(%struct.mlx5e_channel* %44)
  %46 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %2, align 8
  %47 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = call i32 @mlx5e_close_cq(i32* %48)
  ret void
}

declare dso_local i32 @mlx5e_close_xdpsq(%struct.TYPE_4__*) #1

declare dso_local i32 @mlx5e_close_rq(%struct.TYPE_5__*) #1

declare dso_local i32 @mlx5e_close_sqs(%struct.mlx5e_channel*) #1

declare dso_local i32 @mlx5e_close_icosq(%struct.TYPE_6__*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @mlx5e_close_cq(i32*) #1

declare dso_local i32 @mlx5e_close_tx_cqs(%struct.mlx5e_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
