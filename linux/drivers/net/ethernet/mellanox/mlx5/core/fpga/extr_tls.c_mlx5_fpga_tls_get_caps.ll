; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_tls.c_mlx5_fpga_tls_get_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_tls.c_mlx5_fpga_tls_get_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_device = type { i32 }

@tls_extended_cap = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tx = common dso_local global i32 0, align 4
@MLX5_ACCEL_TLS_TX = common dso_local global i32 0, align 4
@rx = common dso_local global i32 0, align 4
@MLX5_ACCEL_TLS_RX = common dso_local global i32 0, align 4
@tls_v12 = common dso_local global i32 0, align 4
@MLX5_ACCEL_TLS_V12 = common dso_local global i32 0, align 4
@tls_v13 = common dso_local global i32 0, align 4
@MLX5_ACCEL_TLS_V13 = common dso_local global i32 0, align 4
@lro = common dso_local global i32 0, align 4
@MLX5_ACCEL_TLS_LRO = common dso_local global i32 0, align 4
@ipv6 = common dso_local global i32 0, align 4
@MLX5_ACCEL_TLS_IPV6 = common dso_local global i32 0, align 4
@aes_gcm_128 = common dso_local global i32 0, align 4
@MLX5_ACCEL_TLS_AES_GCM128 = common dso_local global i32 0, align 4
@aes_gcm_256 = common dso_local global i32 0, align 4
@MLX5_ACCEL_TLS_AES_GCM256 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_fpga_device*, i32*)* @mlx5_fpga_tls_get_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fpga_tls_get_caps(%struct.mlx5_fpga_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_fpga_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* @tls_extended_cap, align 4
  %11 = call i32 @MLX5_ST_SZ_BYTES(i32 %10)
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kzalloc(i32 %12, i32 %13)
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %115

20:                                               ; preds = %2
  %21 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @mlx5_fpga_get_sbu_caps(%struct.mlx5_fpga_device* %21, i32 %22, i8* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %111

28:                                               ; preds = %20
  %29 = load i32, i32* @tls_extended_cap, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* @tx, align 4
  %32 = call i64 @MLX5_GET(i32 %29, i8* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* @MLX5_ACCEL_TLS_TX, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %28
  %39 = load i32, i32* @tls_extended_cap, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* @rx, align 4
  %42 = call i64 @MLX5_GET(i32 %39, i8* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @MLX5_ACCEL_TLS_RX, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %44, %38
  %49 = load i32, i32* @tls_extended_cap, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* @tls_v12, align 4
  %52 = call i64 @MLX5_GET(i32 %49, i8* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* @MLX5_ACCEL_TLS_V12, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %54, %48
  %59 = load i32, i32* @tls_extended_cap, align 4
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* @tls_v13, align 4
  %62 = call i64 @MLX5_GET(i32 %59, i8* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32, i32* @MLX5_ACCEL_TLS_V13, align 4
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %64, %58
  %69 = load i32, i32* @tls_extended_cap, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* @lro, align 4
  %72 = call i64 @MLX5_GET(i32 %69, i8* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* @MLX5_ACCEL_TLS_LRO, align 4
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %74, %68
  %79 = load i32, i32* @tls_extended_cap, align 4
  %80 = load i8*, i8** %9, align 8
  %81 = load i32, i32* @ipv6, align 4
  %82 = call i64 @MLX5_GET(i32 %79, i8* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i32, i32* @MLX5_ACCEL_TLS_IPV6, align 4
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %84, %78
  %89 = load i32, i32* @tls_extended_cap, align 4
  %90 = load i8*, i8** %9, align 8
  %91 = load i32, i32* @aes_gcm_128, align 4
  %92 = call i64 @MLX5_GET(i32 %89, i8* %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, i32* @MLX5_ACCEL_TLS_AES_GCM128, align 4
  %96 = load i32, i32* %8, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %94, %88
  %99 = load i32, i32* @tls_extended_cap, align 4
  %100 = load i8*, i8** %9, align 8
  %101 = load i32, i32* @aes_gcm_256, align 4
  %102 = call i64 @MLX5_GET(i32 %99, i8* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load i32, i32* @MLX5_ACCEL_TLS_AES_GCM256, align 4
  %106 = load i32, i32* %8, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %104, %98
  %109 = load i32, i32* %8, align 4
  %110 = load i32*, i32** %5, align 8
  store i32 %109, i32* %110, align 4
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %108, %27
  %112 = load i8*, i8** %9, align 8
  %113 = call i32 @kfree(i8* %112)
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %111, %17
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx5_fpga_get_sbu_caps(%struct.mlx5_fpga_device*, i32, i8*) #1

declare dso_local i64 @MLX5_GET(i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
