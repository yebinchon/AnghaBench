; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_hv_vhca.c_mlx5_hv_vhca_invalidate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_hv_vhca.c_mlx5_hv_vhca_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_hv_vhca = type { i32 }
%struct.mlx5_hv_vhca_work = type { i32, i32, %struct.mlx5_hv_vhca* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@mlx5_hv_vhca_invalidate_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_hv_vhca_invalidate(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_hv_vhca*, align 8
  %6 = alloca %struct.mlx5_hv_vhca_work*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.mlx5_hv_vhca*
  store %struct.mlx5_hv_vhca* %8, %struct.mlx5_hv_vhca** %5, align 8
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.mlx5_hv_vhca_work* @kzalloc(i32 16, i32 %9)
  store %struct.mlx5_hv_vhca_work* %10, %struct.mlx5_hv_vhca_work** %6, align 8
  %11 = load %struct.mlx5_hv_vhca_work*, %struct.mlx5_hv_vhca_work** %6, align 8
  %12 = icmp ne %struct.mlx5_hv_vhca_work* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %31

14:                                               ; preds = %2
  %15 = load %struct.mlx5_hv_vhca_work*, %struct.mlx5_hv_vhca_work** %6, align 8
  %16 = getelementptr inbounds %struct.mlx5_hv_vhca_work, %struct.mlx5_hv_vhca_work* %15, i32 0, i32 0
  %17 = load i32, i32* @mlx5_hv_vhca_invalidate_work, align 4
  %18 = call i32 @INIT_WORK(i32* %16, i32 %17)
  %19 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %5, align 8
  %20 = load %struct.mlx5_hv_vhca_work*, %struct.mlx5_hv_vhca_work** %6, align 8
  %21 = getelementptr inbounds %struct.mlx5_hv_vhca_work, %struct.mlx5_hv_vhca_work* %20, i32 0, i32 2
  store %struct.mlx5_hv_vhca* %19, %struct.mlx5_hv_vhca** %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.mlx5_hv_vhca_work*, %struct.mlx5_hv_vhca_work** %6, align 8
  %24 = getelementptr inbounds %struct.mlx5_hv_vhca_work, %struct.mlx5_hv_vhca_work* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %5, align 8
  %26 = getelementptr inbounds %struct.mlx5_hv_vhca, %struct.mlx5_hv_vhca* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mlx5_hv_vhca_work*, %struct.mlx5_hv_vhca_work** %6, align 8
  %29 = getelementptr inbounds %struct.mlx5_hv_vhca_work, %struct.mlx5_hv_vhca_work* %28, i32 0, i32 0
  %30 = call i32 @queue_work(i32 %27, i32* %29)
  br label %31

31:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.mlx5_hv_vhca_work* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
