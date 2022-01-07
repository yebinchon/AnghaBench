; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_replace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_ste = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.mlx5dr_ste* }

@DR_STE_SIZE_REDUCED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5dr_ste*, %struct.mlx5dr_ste*)* @dr_ste_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_ste_replace(%struct.mlx5dr_ste* %0, %struct.mlx5dr_ste* %1) #0 {
  %3 = alloca %struct.mlx5dr_ste*, align 8
  %4 = alloca %struct.mlx5dr_ste*, align 8
  store %struct.mlx5dr_ste* %0, %struct.mlx5dr_ste** %3, align 8
  store %struct.mlx5dr_ste* %1, %struct.mlx5dr_ste** %4, align 8
  %5 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @DR_STE_SIZE_REDUCED, align 4
  %12 = call i32 @memcpy(i32 %7, i32 %10, i32 %11)
  %13 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %3, align 8
  %17 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %16, i32 0, i32 2
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %17, align 8
  %18 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %3, align 8
  %24 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %3, align 8
  %25 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.mlx5dr_ste* %23, %struct.mlx5dr_ste** %27, align 8
  br label %28

28:                                               ; preds = %22, %2
  %29 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %3, align 8
  %30 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %29, i32 0, i32 1
  %31 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %4, align 8
  %32 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %31, i32 0, i32 1
  %33 = call i32 @refcount_read(i32* %32)
  %34 = call i32 @refcount_set(i32* %30, i32 %33)
  %35 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %3, align 8
  %36 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %35, i32 0, i32 0
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %4, align 8
  %39 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %38, i32 0, i32 0
  %40 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %3, align 8
  %41 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %40, i32 0, i32 0
  %42 = call i32 @list_splice_tail_init(i32* %39, i32* %41)
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_splice_tail_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
