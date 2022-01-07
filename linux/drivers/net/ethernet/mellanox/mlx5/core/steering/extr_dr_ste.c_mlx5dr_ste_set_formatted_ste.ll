; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_mlx5dr_ste_set_formatted_ste.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_mlx5dr_ste_set_formatted_ste.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain_rx_tx = type { i32 }
%struct.mlx5dr_ste_htbl = type { i32 }
%struct.mlx5dr_htbl_connect_info = type { i64, i32, i32 }
%struct.mlx5dr_ste = type { i32* }

@CONNECT_HIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5dr_ste_set_formatted_ste(i32 %0, %struct.mlx5dr_domain_rx_tx* %1, %struct.mlx5dr_ste_htbl* %2, i32* %3, %struct.mlx5dr_htbl_connect_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5dr_domain_rx_tx*, align 8
  %8 = alloca %struct.mlx5dr_ste_htbl*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mlx5dr_htbl_connect_info*, align 8
  %11 = alloca %struct.mlx5dr_ste, align 8
  store i32 %0, i32* %6, align 4
  store %struct.mlx5dr_domain_rx_tx* %1, %struct.mlx5dr_domain_rx_tx** %7, align 8
  store %struct.mlx5dr_ste_htbl* %2, %struct.mlx5dr_ste_htbl** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.mlx5dr_htbl_connect_info* %4, %struct.mlx5dr_htbl_connect_info** %10, align 8
  %12 = bitcast %struct.mlx5dr_ste* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 8, i1 false)
  %13 = load i32*, i32** %9, align 8
  %14 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %8, align 8
  %15 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mlx5dr_domain_rx_tx*, %struct.mlx5dr_domain_rx_tx** %7, align 8
  %18 = getelementptr inbounds %struct.mlx5dr_domain_rx_tx, %struct.mlx5dr_domain_rx_tx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @mlx5dr_ste_init(i32* %13, i32 %16, i32 %19, i32 %20)
  %22 = load i32*, i32** %9, align 8
  %23 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %11, i32 0, i32 0
  store i32* %22, i32** %23, align 8
  %24 = load %struct.mlx5dr_htbl_connect_info*, %struct.mlx5dr_htbl_connect_info** %10, align 8
  %25 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, %struct.mlx5dr_htbl_connect_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CONNECT_HIT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %5
  %30 = load %struct.mlx5dr_htbl_connect_info*, %struct.mlx5dr_htbl_connect_info** %10, align 8
  %31 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, %struct.mlx5dr_htbl_connect_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dr_ste_always_hit_htbl(%struct.mlx5dr_ste* %11, i32 %32)
  br label %39

34:                                               ; preds = %5
  %35 = load %struct.mlx5dr_htbl_connect_info*, %struct.mlx5dr_htbl_connect_info** %10, align 8
  %36 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, %struct.mlx5dr_htbl_connect_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @mlx5dr_ste_always_miss_addr(%struct.mlx5dr_ste* %11, i32 %37)
  br label %39

39:                                               ; preds = %34, %29
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mlx5dr_ste_init(i32*, i32, i32, i32) #2

declare dso_local i32 @dr_ste_always_hit_htbl(%struct.mlx5dr_ste*, i32) #2

declare dso_local i32 @mlx5dr_ste_always_miss_addr(%struct.mlx5dr_ste*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
