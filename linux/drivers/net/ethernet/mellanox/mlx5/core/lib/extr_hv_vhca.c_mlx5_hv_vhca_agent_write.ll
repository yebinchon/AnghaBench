; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_hv_vhca.c_mlx5_hv_vhca_agent_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_hv_vhca.c_mlx5_hv_vhca_agent_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_hv_vhca_agent = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_hv_vhca_data_block = type { i32 }

@HV_CONFIG_BLOCK_SIZE_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_hv_vhca_agent_write(%struct.mlx5_hv_vhca_agent* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_hv_vhca_agent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5_hv_vhca_data_block, align 4
  %13 = alloca i32, align 4
  store %struct.mlx5_hv_vhca_agent* %0, %struct.mlx5_hv_vhca_agent** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %5, align 8
  %15 = getelementptr inbounds %struct.mlx5_hv_vhca_agent, %struct.mlx5_hv_vhca_agent* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @HV_CONFIG_BLOCK_SIZE_MAX, align 4
  %18 = mul nsw i32 %16, %17
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %48, %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %19
  %23 = bitcast %struct.mlx5_hv_vhca_data_block* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 4, i1 false)
  %24 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr i8, i8* %25, i64 %27
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @mlx5_hv_vhca_data_block_prepare(%struct.mlx5_hv_vhca_agent* %24, %struct.mlx5_hv_vhca_data_block* %12, i8* %28, i32 %29, i32* %9)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %58

36:                                               ; preds = %22
  %37 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %5, align 8
  %38 = getelementptr inbounds %struct.mlx5_hv_vhca_agent, %struct.mlx5_hv_vhca_agent* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @mlx5_hv_write_config(i32 %41, %struct.mlx5_hv_vhca_data_block* %12, i32 4, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %4, align 4
  br label %58

48:                                               ; preds = %36
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %19

55:                                               ; preds = %19
  %56 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %5, align 8
  %57 = call i32 @mlx5_hv_vhca_agent_seq_update(%struct.mlx5_hv_vhca_agent* %56)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %46, %33
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mlx5_hv_vhca_data_block_prepare(%struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_data_block*, i8*, i32, i32*) #2

declare dso_local i32 @mlx5_hv_write_config(i32, %struct.mlx5_hv_vhca_data_block*, i32, i32) #2

declare dso_local i32 @mlx5_hv_vhca_agent_seq_update(%struct.mlx5_hv_vhca_agent*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
