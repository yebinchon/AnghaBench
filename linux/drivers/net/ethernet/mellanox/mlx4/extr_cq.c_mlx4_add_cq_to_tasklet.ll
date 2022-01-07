; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cq.c_mlx4_add_cq_to_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cq.c_mlx4_add_cq_to_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_cq = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.mlx4_eq_tasklet* }
%struct.mlx4_eq_tasklet = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_cq*)* @mlx4_add_cq_to_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_add_cq_to_tasklet(%struct.mlx4_cq* %0) #0 {
  %2 = alloca %struct.mlx4_cq*, align 8
  %3 = alloca %struct.mlx4_eq_tasklet*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_cq* %0, %struct.mlx4_cq** %2, align 8
  %6 = load %struct.mlx4_cq*, %struct.mlx4_cq** %2, align 8
  %7 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.mlx4_eq_tasklet*, %struct.mlx4_eq_tasklet** %8, align 8
  store %struct.mlx4_eq_tasklet* %9, %struct.mlx4_eq_tasklet** %3, align 8
  %10 = load %struct.mlx4_eq_tasklet*, %struct.mlx4_eq_tasklet** %3, align 8
  %11 = getelementptr inbounds %struct.mlx4_eq_tasklet, %struct.mlx4_eq_tasklet* %10, i32 0, i32 0
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.mlx4_cq*, %struct.mlx4_cq** %2, align 8
  %15 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i64 @list_empty_careful(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %1
  %20 = load %struct.mlx4_cq*, %struct.mlx4_cq** %2, align 8
  %21 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %20, i32 0, i32 1
  %22 = call i32 @refcount_inc(i32* %21)
  %23 = load %struct.mlx4_eq_tasklet*, %struct.mlx4_eq_tasklet** %3, align 8
  %24 = getelementptr inbounds %struct.mlx4_eq_tasklet, %struct.mlx4_eq_tasklet* %23, i32 0, i32 2
  %25 = call i32 @list_empty(i32* %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.mlx4_cq*, %struct.mlx4_cq** %2, align 8
  %27 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.mlx4_eq_tasklet*, %struct.mlx4_eq_tasklet** %3, align 8
  %30 = getelementptr inbounds %struct.mlx4_eq_tasklet, %struct.mlx4_eq_tasklet* %29, i32 0, i32 2
  %31 = call i32 @list_add_tail(i32* %28, i32* %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %19
  %35 = load %struct.mlx4_eq_tasklet*, %struct.mlx4_eq_tasklet** %3, align 8
  %36 = getelementptr inbounds %struct.mlx4_eq_tasklet, %struct.mlx4_eq_tasklet* %35, i32 0, i32 1
  %37 = call i32 @tasklet_schedule(i32* %36)
  br label %38

38:                                               ; preds = %34, %19
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.mlx4_eq_tasklet*, %struct.mlx4_eq_tasklet** %3, align 8
  %41 = getelementptr inbounds %struct.mlx4_eq_tasklet, %struct.mlx4_eq_tasklet* %40, i32 0, i32 0
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty_careful(i32*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
