; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_modify_rq_vsd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_modify_rq_vsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { i32, %struct.mlx5e_channel* }
%struct.mlx5e_channel = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@modify_rq_in = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@rq_state = common dso_local global i32 0, align 4
@MLX5_RQC_STATE_RDY = common dso_local global i32 0, align 4
@modify_bitmask = common dso_local global i32 0, align 4
@MLX5_MODIFY_RQ_IN_MODIFY_BITMASK_VSD = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_rq*, i32)* @mlx5e_modify_rq_vsd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_modify_rq_vsd(%struct.mlx5e_rq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_rq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_channel*, align 8
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %12, i32 0, i32 1
  %14 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %13, align 8
  store %struct.mlx5e_channel* %14, %struct.mlx5e_channel** %6, align 8
  %15 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %6, align 8
  %16 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %15, i32 0, i32 0
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %16, align 8
  store %struct.mlx5_core_dev* %17, %struct.mlx5_core_dev** %7, align 8
  %18 = load i8*, i8** @modify_rq_in, align 8
  %19 = call i32 @MLX5_ST_SZ_BYTES(i8* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kvzalloc(i32 %20, i32 %21)
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %63

28:                                               ; preds = %2
  %29 = load i8*, i8** @modify_rq_in, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* @ctx, align 4
  %32 = call i8* @MLX5_ADDR_OF(i8* %29, i8* %30, i32 %31)
  store i8* %32, i8** %9, align 8
  %33 = load i8*, i8** @modify_rq_in, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* @rq_state, align 4
  %36 = load i32, i32* @MLX5_RQC_STATE_RDY, align 4
  %37 = call i32 @MLX5_SET(i8* %33, i8* %34, i32 %35, i32 %36)
  %38 = load i8*, i8** @modify_rq_in, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* @modify_bitmask, align 4
  %41 = load i32, i32* @MLX5_MODIFY_RQ_IN_MODIFY_BITMASK_VSD, align 4
  %42 = call i32 @MLX5_SET64(i8* %38, i8* %39, i32 %40, i32 %41)
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @MLX5_SET(i8* %43, i8* %44, i32 %45, i32 %46)
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* @state, align 4
  %51 = load i32, i32* @MLX5_RQC_STATE_RDY, align 4
  %52 = call i32 @MLX5_SET(i8* %48, i8* %49, i32 %50, i32 %51)
  %53 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %54 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %55 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @mlx5_core_modify_rq(%struct.mlx5_core_dev* %53, i32 %56, i8* %57, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @kvfree(i8* %60)
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %28, %25
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i8*) #1

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @MLX5_SET64(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_core_modify_rq(%struct.mlx5_core_dev*, i32, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
