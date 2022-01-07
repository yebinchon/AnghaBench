; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_create_underlay_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib.c_mlx5i_create_underlay_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_core_qp = type { i32 }

@create_qp_in = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@st = common dso_local global i32 0, align 4
@MLX5_QP_ST_UD = common dso_local global i32 0, align 4
@pm_state = common dso_local global i32 0, align 4
@MLX5_QP_PM_MIGRATED = common dso_local global i32 0, align 4
@ulp_stateless_offload_mode = common dso_local global i32 0, align 4
@MLX5_QP_ENHANCED_ULP_STATELESS_MODE = common dso_local global i32 0, align 4
@primary_address_path = common dso_local global i8* null, align 8
@ads = common dso_local global i8* null, align 8
@vhca_port_num = common dso_local global i32 0, align 4
@grh = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed creating IPoIB QP err : %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5i_create_underlay_qp(%struct.mlx5_core_dev* %0, %struct.mlx5_core_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_core_qp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5_core_qp* %1, %struct.mlx5_core_qp** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** @create_qp_in, align 8
  %12 = call i32 @MLX5_ST_SZ_BYTES(i8* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kvzalloc(i32 %13, i32 %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %69

21:                                               ; preds = %2
  %22 = load i8*, i8** @create_qp_in, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i8* @MLX5_ADDR_OF(i8* %22, i8* %23, i8* %24)
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i32, i32* @st, align 4
  %29 = load i32, i32* @MLX5_QP_ST_UD, align 4
  %30 = call i32 @MLX5_SET(i8* %26, i8* %27, i32 %28, i32 %29)
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* @pm_state, align 4
  %34 = load i32, i32* @MLX5_QP_PM_MIGRATED, align 4
  %35 = call i32 @MLX5_SET(i8* %31, i8* %32, i32 %33, i32 %34)
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* @ulp_stateless_offload_mode, align 4
  %39 = load i32, i32* @MLX5_QP_ENHANCED_ULP_STATELESS_MODE, align 4
  %40 = call i32 @MLX5_SET(i8* %36, i8* %37, i32 %38, i32 %39)
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i8*, i8** @primary_address_path, align 8
  %44 = call i8* @MLX5_ADDR_OF(i8* %41, i8* %42, i8* %43)
  store i8* %44, i8** %7, align 8
  %45 = load i8*, i8** @ads, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* @vhca_port_num, align 4
  %48 = call i32 @MLX5_SET(i8* %45, i8* %46, i32 %47, i32 1)
  %49 = load i8*, i8** @ads, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* @grh, align 4
  %52 = call i32 @MLX5_SET(i8* %49, i8* %50, i32 %51, i32 1)
  %53 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %54 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %5, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @mlx5_core_create_qp(%struct.mlx5_core_dev* %53, %struct.mlx5_core_qp* %54, i8* %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %21
  %61 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %65

64:                                               ; preds = %21
  br label %65

65:                                               ; preds = %64, %60
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @kvfree(i8* %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %18
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i8*) #1

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i8*) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_core_create_qp(%struct.mlx5_core_dev*, %struct.mlx5_core_qp*, i8*, i32) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
