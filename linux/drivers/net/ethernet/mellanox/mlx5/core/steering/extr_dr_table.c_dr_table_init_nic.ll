; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_table.c_dr_table_init_nic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_table.c_dr_table_init_nic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain = type { i32 }
%struct.mlx5dr_table_rx_tx = type { i32, i32, %struct.mlx5dr_domain_rx_tx* }
%struct.mlx5dr_domain_rx_tx = type { i32 }
%struct.mlx5dr_htbl_connect_info = type { i32, i32 }

@DR_CHUNK_SIZE_1 = common dso_local global i32 0, align 4
@MLX5DR_STE_LU_TYPE_DONT_CARE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CONNECT_MISS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_domain*, %struct.mlx5dr_table_rx_tx*)* @dr_table_init_nic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_table_init_nic(%struct.mlx5dr_domain* %0, %struct.mlx5dr_table_rx_tx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5dr_domain*, align 8
  %5 = alloca %struct.mlx5dr_table_rx_tx*, align 8
  %6 = alloca %struct.mlx5dr_domain_rx_tx*, align 8
  %7 = alloca %struct.mlx5dr_htbl_connect_info, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %4, align 8
  store %struct.mlx5dr_table_rx_tx* %1, %struct.mlx5dr_table_rx_tx** %5, align 8
  %9 = load %struct.mlx5dr_table_rx_tx*, %struct.mlx5dr_table_rx_tx** %5, align 8
  %10 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, %struct.mlx5dr_table_rx_tx* %9, i32 0, i32 2
  %11 = load %struct.mlx5dr_domain_rx_tx*, %struct.mlx5dr_domain_rx_tx** %10, align 8
  store %struct.mlx5dr_domain_rx_tx* %11, %struct.mlx5dr_domain_rx_tx** %6, align 8
  %12 = load %struct.mlx5dr_domain_rx_tx*, %struct.mlx5dr_domain_rx_tx** %6, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_domain_rx_tx, %struct.mlx5dr_domain_rx_tx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mlx5dr_table_rx_tx*, %struct.mlx5dr_table_rx_tx** %5, align 8
  %16 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, %struct.mlx5dr_table_rx_tx* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @DR_CHUNK_SIZE_1, align 4
  %21 = load i32, i32* @MLX5DR_STE_LU_TYPE_DONT_CARE, align 4
  %22 = call i32 @mlx5dr_ste_htbl_alloc(i32 %19, i32 %20, i32 %21, i32 0)
  %23 = load %struct.mlx5dr_table_rx_tx*, %struct.mlx5dr_table_rx_tx** %5, align 8
  %24 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, %struct.mlx5dr_table_rx_tx* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.mlx5dr_table_rx_tx*, %struct.mlx5dr_table_rx_tx** %5, align 8
  %26 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, %struct.mlx5dr_table_rx_tx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %59

32:                                               ; preds = %2
  %33 = load i32, i32* @CONNECT_MISS, align 4
  %34 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, %struct.mlx5dr_htbl_connect_info* %7, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.mlx5dr_domain_rx_tx*, %struct.mlx5dr_domain_rx_tx** %6, align 8
  %36 = getelementptr inbounds %struct.mlx5dr_domain_rx_tx, %struct.mlx5dr_domain_rx_tx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, %struct.mlx5dr_htbl_connect_info* %7, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %40 = load %struct.mlx5dr_domain_rx_tx*, %struct.mlx5dr_domain_rx_tx** %6, align 8
  %41 = load %struct.mlx5dr_table_rx_tx*, %struct.mlx5dr_table_rx_tx** %5, align 8
  %42 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, %struct.mlx5dr_table_rx_tx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @mlx5dr_ste_htbl_init_and_postsend(%struct.mlx5dr_domain* %39, %struct.mlx5dr_domain_rx_tx* %40, i32 %43, %struct.mlx5dr_htbl_connect_info* %7, i32 1)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  br label %53

48:                                               ; preds = %32
  %49 = load %struct.mlx5dr_table_rx_tx*, %struct.mlx5dr_table_rx_tx** %5, align 8
  %50 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, %struct.mlx5dr_table_rx_tx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @mlx5dr_htbl_get(i32 %51)
  store i32 0, i32* %3, align 4
  br label %59

53:                                               ; preds = %47
  %54 = load %struct.mlx5dr_table_rx_tx*, %struct.mlx5dr_table_rx_tx** %5, align 8
  %55 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, %struct.mlx5dr_table_rx_tx* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @mlx5dr_ste_htbl_free(i32 %56)
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %53, %48, %29
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @mlx5dr_ste_htbl_alloc(i32, i32, i32, i32) #1

declare dso_local i32 @mlx5dr_ste_htbl_init_and_postsend(%struct.mlx5dr_domain*, %struct.mlx5dr_domain_rx_tx*, i32, %struct.mlx5dr_htbl_connect_info*, i32) #1

declare dso_local i32 @mlx5dr_htbl_get(i32) #1

declare dso_local i32 @mlx5dr_ste_htbl_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
