; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_tls.c_mlx5_fpga_tls_add_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_tls.c_mlx5_fpga_tls_add_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlx5_fpga_tls* }
%struct.mlx5_fpga_tls = type { i32, i32, i32, i32 }
%struct.tls_crypto_info = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@tls_flow = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_fpga_tls_add_flow(%struct.mlx5_core_dev* %0, i8* %1, %struct.tls_crypto_info* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.tls_crypto_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx5_fpga_tls*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.tls_crypto_info* %2, %struct.tls_crypto_info** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %18 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %20, align 8
  store %struct.mlx5_fpga_tls* %21, %struct.mlx5_fpga_tls** %14, align 8
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %6
  %27 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %14, align 8
  %28 = getelementptr inbounds %struct.mlx5_fpga_tls, %struct.mlx5_fpga_tls* %27, i32 0, i32 3
  %29 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %14, align 8
  %30 = getelementptr inbounds %struct.mlx5_fpga_tls, %struct.mlx5_fpga_tls* %29, i32 0, i32 2
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @mlx5_fpga_tls_alloc_swid(i32* %28, i32* %30, i8* %31)
  store i32 %32, i32* %15, align 4
  br label %40

33:                                               ; preds = %6
  %34 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %14, align 8
  %35 = getelementptr inbounds %struct.mlx5_fpga_tls, %struct.mlx5_fpga_tls* %34, i32 0, i32 1
  %36 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %14, align 8
  %37 = getelementptr inbounds %struct.mlx5_fpga_tls, %struct.mlx5_fpga_tls* %36, i32 0, i32 0
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @mlx5_fpga_tls_alloc_swid(i32* %35, i32* %37, i8* %38)
  store i32 %39, i32* %15, align 4
  br label %40

40:                                               ; preds = %33, %26
  %41 = load i32, i32* %15, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* %15, align 4
  store i32 %44, i32* %7, align 4
  br label %91

45:                                               ; preds = %40
  %46 = load i32, i32* %15, align 4
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* @tls_flow, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  %54 = call i32 @MLX5_SET(i32 %47, i8* %48, i32 %49, i32 %53)
  %55 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load %struct.tls_crypto_info*, %struct.tls_crypto_info** %10, align 8
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @_mlx5_fpga_tls_add_flow(%struct.mlx5_core_dev* %55, i8* %56, %struct.tls_crypto_info* %57, i32 %58, i32 %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %45
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* @EINTR, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp ne i32 %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %72

69:                                               ; preds = %63, %45
  %70 = load i32, i32* %16, align 4
  %71 = load i32*, i32** %12, align 8
  store i32 %70, i32* %71, align 4
  store i32 0, i32* %7, align 4
  br label %91

72:                                               ; preds = %68
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %14, align 8
  %77 = getelementptr inbounds %struct.mlx5_fpga_tls, %struct.mlx5_fpga_tls* %76, i32 0, i32 3
  %78 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %14, align 8
  %79 = getelementptr inbounds %struct.mlx5_fpga_tls, %struct.mlx5_fpga_tls* %78, i32 0, i32 2
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @mlx5_fpga_tls_release_swid(i32* %77, i32* %79, i32 %80)
  br label %89

82:                                               ; preds = %72
  %83 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %14, align 8
  %84 = getelementptr inbounds %struct.mlx5_fpga_tls, %struct.mlx5_fpga_tls* %83, i32 0, i32 1
  %85 = load %struct.mlx5_fpga_tls*, %struct.mlx5_fpga_tls** %14, align 8
  %86 = getelementptr inbounds %struct.mlx5_fpga_tls, %struct.mlx5_fpga_tls* %85, i32 0, i32 0
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @mlx5_fpga_tls_release_swid(i32* %84, i32* %86, i32 %87)
  br label %89

89:                                               ; preds = %82, %75
  %90 = load i32, i32* %15, align 4
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %89, %69, %43
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i32 @mlx5_fpga_tls_alloc_swid(i32*, i32*, i8*) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @_mlx5_fpga_tls_add_flow(%struct.mlx5_core_dev*, i8*, %struct.tls_crypto_info*, i32, i32) #1

declare dso_local i32 @mlx5_fpga_tls_release_swid(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
