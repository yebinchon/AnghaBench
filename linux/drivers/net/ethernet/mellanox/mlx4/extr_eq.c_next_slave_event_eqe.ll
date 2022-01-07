; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_eq.c_next_slave_event_eqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_eq.c_next_slave_event_eqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_eqe = type { i32 }
%struct.mlx4_slave_event_eq = type { i32, %struct.mlx4_eqe* }

@SLAVE_EVENT_EQ_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx4_eqe* (%struct.mlx4_slave_event_eq*)* @next_slave_event_eqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx4_eqe* @next_slave_event_eqe(%struct.mlx4_slave_event_eq* %0) #0 {
  %2 = alloca %struct.mlx4_slave_event_eq*, align 8
  %3 = alloca %struct.mlx4_eqe*, align 8
  store %struct.mlx4_slave_event_eq* %0, %struct.mlx4_slave_event_eq** %2, align 8
  %4 = load %struct.mlx4_slave_event_eq*, %struct.mlx4_slave_event_eq** %2, align 8
  %5 = getelementptr inbounds %struct.mlx4_slave_event_eq, %struct.mlx4_slave_event_eq* %4, i32 0, i32 1
  %6 = load %struct.mlx4_eqe*, %struct.mlx4_eqe** %5, align 8
  %7 = load %struct.mlx4_slave_event_eq*, %struct.mlx4_slave_event_eq** %2, align 8
  %8 = getelementptr inbounds %struct.mlx4_slave_event_eq, %struct.mlx4_slave_event_eq* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SLAVE_EVENT_EQ_SIZE, align 4
  %11 = sub nsw i32 %10, 1
  %12 = and i32 %9, %11
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.mlx4_eqe, %struct.mlx4_eqe* %6, i64 %13
  store %struct.mlx4_eqe* %14, %struct.mlx4_eqe** %3, align 8
  %15 = load %struct.mlx4_eqe*, %struct.mlx4_eqe** %3, align 8
  %16 = getelementptr inbounds %struct.mlx4_eqe, %struct.mlx4_eqe* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 128
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load %struct.mlx4_slave_event_eq*, %struct.mlx4_slave_event_eq** %2, align 8
  %24 = getelementptr inbounds %struct.mlx4_slave_event_eq, %struct.mlx4_slave_event_eq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SLAVE_EVENT_EQ_SIZE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = xor i32 %22, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load %struct.mlx4_eqe*, %struct.mlx4_eqe** %3, align 8
  br label %37

36:                                               ; preds = %1
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi %struct.mlx4_eqe* [ %35, %34 ], [ null, %36 ]
  ret %struct.mlx4_eqe* %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
