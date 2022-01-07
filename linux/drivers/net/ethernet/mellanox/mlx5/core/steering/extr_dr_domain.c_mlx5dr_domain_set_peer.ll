; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_domain.c_mlx5dr_domain_set_peer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_domain.c_mlx5dr_domain_set_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain = type { i32, i32, %struct.mlx5dr_domain* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5dr_domain_set_peer(%struct.mlx5dr_domain* %0, %struct.mlx5dr_domain* %1) #0 {
  %3 = alloca %struct.mlx5dr_domain*, align 8
  %4 = alloca %struct.mlx5dr_domain*, align 8
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %3, align 8
  store %struct.mlx5dr_domain* %1, %struct.mlx5dr_domain** %4, align 8
  %5 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %8, i32 0, i32 2
  %10 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %9, align 8
  %11 = icmp ne %struct.mlx5dr_domain* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %13, i32 0, i32 2
  %15 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %14, align 8
  %16 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %15, i32 0, i32 1
  %17 = call i32 @refcount_dec(i32* %16)
  br label %18

18:                                               ; preds = %12, %2
  %19 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %20 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %21 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %20, i32 0, i32 2
  store %struct.mlx5dr_domain* %19, %struct.mlx5dr_domain** %21, align 8
  %22 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %22, i32 0, i32 2
  %24 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %23, align 8
  %25 = icmp ne %struct.mlx5dr_domain* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %28 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %27, i32 0, i32 2
  %29 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %28, align 8
  %30 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %29, i32 0, i32 1
  %31 = call i32 @refcount_inc(i32* %30)
  br label %32

32:                                               ; preds = %26, %18
  %33 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @refcount_dec(i32*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
