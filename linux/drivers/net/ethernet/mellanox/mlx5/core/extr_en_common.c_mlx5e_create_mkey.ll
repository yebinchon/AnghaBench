; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_common.c_mlx5e_create_mkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_common.c_mlx5e_create_mkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_core_mkey = type { i32 }

@create_mkey_in = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@memory_key_mkey_entry = common dso_local global i32 0, align 4
@access_mode_1_0 = common dso_local global i32 0, align 4
@MLX5_MKC_ACCESS_MODE_PA = common dso_local global i32 0, align 4
@lw = common dso_local global i32 0, align 4
@lr = common dso_local global i32 0, align 4
@pd = common dso_local global i32 0, align 4
@length64 = common dso_local global i32 0, align 4
@qpn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i32, %struct.mlx5_core_mkey*)* @mlx5e_create_mkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_create_mkey(%struct.mlx5_core_dev* %0, i32 %1, %struct.mlx5_core_mkey* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_core_mkey*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mlx5_core_mkey* %2, %struct.mlx5_core_mkey** %7, align 8
  %12 = load i32, i32* @create_mkey_in, align 4
  %13 = call i32 @MLX5_ST_SZ_BYTES(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32* @kvzalloc(i32 %14, i32 %15)
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %61

22:                                               ; preds = %3
  %23 = load i32, i32* @create_mkey_in, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* @memory_key_mkey_entry, align 4
  %26 = call i8* @MLX5_ADDR_OF(i32 %23, i32* %24, i32 %25)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* @access_mode_1_0, align 4
  %30 = load i32, i32* @MLX5_MKC_ACCESS_MODE_PA, align 4
  %31 = call i32 @MLX5_SET(i8* %27, i8* %28, i32 %29, i32 %30)
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* @lw, align 4
  %35 = call i32 @MLX5_SET(i8* %32, i8* %33, i32 %34, i32 1)
  %36 = load i8*, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* @lr, align 4
  %39 = call i32 @MLX5_SET(i8* %36, i8* %37, i32 %38, i32 1)
  %40 = load i8*, i8** %9, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* @pd, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @MLX5_SET(i8* %40, i8* %41, i32 %42, i32 %43)
  %45 = load i8*, i8** %9, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* @length64, align 4
  %48 = call i32 @MLX5_SET(i8* %45, i8* %46, i32 %47, i32 1)
  %49 = load i8*, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* @qpn, align 4
  %52 = call i32 @MLX5_SET(i8* %49, i8* %50, i32 %51, i32 16777215)
  %53 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %54 = load %struct.mlx5_core_mkey*, %struct.mlx5_core_mkey** %7, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @mlx5_core_create_mkey(%struct.mlx5_core_dev* %53, %struct.mlx5_core_mkey* %54, i32* %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @kvfree(i32* %58)
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %22, %19
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32* @kvzalloc(i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_core_create_mkey(%struct.mlx5_core_dev*, %struct.mlx5_core_mkey*, i32*, i32) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
