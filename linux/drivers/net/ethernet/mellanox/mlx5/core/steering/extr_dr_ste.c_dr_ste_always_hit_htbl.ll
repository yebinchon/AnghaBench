; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_always_hit_htbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_always_hit_htbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_ste = type { i32* }
%struct.mlx5dr_ste_htbl = type { i32, i32, %struct.mlx5dr_icm_chunk* }
%struct.mlx5dr_icm_chunk = type { i32, i32 }
%struct.dr_hw_ste_format = type { i32 }

@ste_general = common dso_local global i32 0, align 4
@byte_mask = common dso_local global i32 0, align 4
@next_lu_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5dr_ste*, %struct.mlx5dr_ste_htbl*)* @dr_ste_always_hit_htbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_ste_always_hit_htbl(%struct.mlx5dr_ste* %0, %struct.mlx5dr_ste_htbl* %1) #0 {
  %3 = alloca %struct.mlx5dr_ste*, align 8
  %4 = alloca %struct.mlx5dr_ste_htbl*, align 8
  %5 = alloca %struct.mlx5dr_icm_chunk*, align 8
  %6 = alloca i32*, align 8
  store %struct.mlx5dr_ste* %0, %struct.mlx5dr_ste** %3, align 8
  store %struct.mlx5dr_ste_htbl* %1, %struct.mlx5dr_ste_htbl** %4, align 8
  %7 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %4, align 8
  %8 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %7, i32 0, i32 2
  %9 = load %struct.mlx5dr_icm_chunk*, %struct.mlx5dr_icm_chunk** %8, align 8
  store %struct.mlx5dr_icm_chunk* %9, %struct.mlx5dr_icm_chunk** %5, align 8
  %10 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load i32, i32* @ste_general, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @byte_mask, align 4
  %16 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @MLX5_SET(i32 %13, i32* %14, i32 %15, i32 %18)
  %20 = load i32, i32* @ste_general, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @next_lu_type, align 4
  %23 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %4, align 8
  %24 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @MLX5_SET(i32 %20, i32* %21, i32 %22, i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.mlx5dr_icm_chunk*, %struct.mlx5dr_icm_chunk** %5, align 8
  %29 = getelementptr inbounds %struct.mlx5dr_icm_chunk, %struct.mlx5dr_icm_chunk* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mlx5dr_icm_chunk*, %struct.mlx5dr_icm_chunk** %5, align 8
  %32 = getelementptr inbounds %struct.mlx5dr_icm_chunk, %struct.mlx5dr_icm_chunk* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mlx5dr_ste_set_hit_addr(i32* %27, i32 %30, i32 %33)
  %35 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %3, align 8
  %36 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = bitcast i32* %37 to %struct.dr_hw_ste_format*
  %39 = call i32 @dr_ste_set_always_hit(%struct.dr_hw_ste_format* %38)
  ret void
}

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local i32 @mlx5dr_ste_set_hit_addr(i32*, i32, i32) #1

declare dso_local i32 @dr_ste_set_always_hit(%struct.dr_hw_ste_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
