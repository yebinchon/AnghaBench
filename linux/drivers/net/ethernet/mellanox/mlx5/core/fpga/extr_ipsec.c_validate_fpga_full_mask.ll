; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_validate_fpga_full_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_validate_fpga_full_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@fte_match_param = common dso_local global i32 0, align 4
@misc_parameters = common dso_local global i32 0, align 4
@outer_headers = common dso_local global i32 0, align 4
@fte_match_set_lyr_2_4 = common dso_local global i32 0, align 4
@src_ipv4_src_ipv6 = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@dst_ipv4_dst_ipv6 = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@ipv4_layout = common dso_local global i32 0, align 4
@ipv4 = common dso_local global i32 0, align 4
@ipv6_layout = common dso_local global i32 0, align 4
@ipv6 = common dso_local global i32 0, align 4
@fte_match_set_misc = common dso_local global i32 0, align 4
@outer_esp_spi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i8*, i8*)* @validate_fpga_full_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_fpga_full_mask(%struct.mlx5_core_dev* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i32, i32* @fte_match_param, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* @misc_parameters, align 4
  %18 = call i8* @MLX5_ADDR_OF(i32 %15, i8* %16, i32 %17)
  store i8* %18, i8** %8, align 8
  %19 = load i32, i32* @fte_match_param, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @outer_headers, align 4
  %22 = call i8* @MLX5_ADDR_OF(i32 %19, i8* %20, i32 %21)
  store i8* %22, i8** %9, align 8
  %23 = load i32, i32* @fte_match_param, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* @outer_headers, align 4
  %26 = call i8* @MLX5_ADDR_OF(i32 %23, i8* %24, i32 %25)
  store i8* %26, i8** %10, align 8
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = call i64 @mlx5_fs_is_outer_ipv4_flow(%struct.mlx5_core_dev* %27, i8* %28, i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %3
  %33 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @src_ipv4_src_ipv6, i32 0, i32 1, i32 0), align 4
  %36 = call i8* @MLX5_ADDR_OF(i32 %33, i8* %34, i32 %35)
  store i8* %36, i8** %11, align 8
  %37 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dst_ipv4_dst_ipv6, i32 0, i32 1, i32 0), align 4
  %40 = call i8* @MLX5_ADDR_OF(i32 %37, i8* %38, i32 %39)
  store i8* %40, i8** %12, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = load i32, i32* @ipv4_layout, align 4
  %43 = load i32, i32* @ipv4, align 4
  %44 = call i32 @MLX5_FLD_SZ_BYTES(i32 %42, i32 %43)
  %45 = call i32 @is_full_mask(i8* %41, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %32
  %48 = load i8*, i8** %12, align 8
  %49 = load i32, i32* @ipv4_layout, align 4
  %50 = load i32, i32* @ipv4, align 4
  %51 = call i32 @MLX5_FLD_SZ_BYTES(i32 %49, i32 %50)
  %52 = call i32 @is_full_mask(i8* %48, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47, %32
  store i32 0, i32* %4, align 4
  br label %92

55:                                               ; preds = %47
  br label %80

56:                                               ; preds = %3
  %57 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @src_ipv4_src_ipv6, i32 0, i32 0, i32 0), align 4
  %60 = call i8* @MLX5_ADDR_OF(i32 %57, i8* %58, i32 %59)
  store i8* %60, i8** %13, align 8
  %61 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dst_ipv4_dst_ipv6, i32 0, i32 0, i32 0), align 4
  %64 = call i8* @MLX5_ADDR_OF(i32 %61, i8* %62, i32 %63)
  store i8* %64, i8** %14, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = load i32, i32* @ipv6_layout, align 4
  %67 = load i32, i32* @ipv6, align 4
  %68 = call i32 @MLX5_FLD_SZ_BYTES(i32 %66, i32 %67)
  %69 = call i32 @is_full_mask(i8* %65, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %56
  %72 = load i8*, i8** %14, align 8
  %73 = load i32, i32* @ipv6_layout, align 4
  %74 = load i32, i32* @ipv6, align 4
  %75 = call i32 @MLX5_FLD_SZ_BYTES(i32 %73, i32 %74)
  %76 = call i32 @is_full_mask(i8* %72, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %71, %56
  store i32 0, i32* %4, align 4
  br label %92

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %55
  %81 = load i32, i32* @fte_match_set_misc, align 4
  %82 = load i8*, i8** %8, align 8
  %83 = load i32, i32* @outer_esp_spi, align 4
  %84 = call i8* @MLX5_ADDR_OF(i32 %81, i8* %82, i32 %83)
  %85 = load i32, i32* @fte_match_set_misc, align 4
  %86 = load i32, i32* @outer_esp_spi, align 4
  %87 = call i32 @MLX5_FLD_SZ_BYTES(i32 %85, i32 %86)
  %88 = call i32 @is_full_mask(i8* %84, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %92

91:                                               ; preds = %80
  store i32 1, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %90, %78, %54
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i64 @mlx5_fs_is_outer_ipv4_flow(%struct.mlx5_core_dev*, i8*, i8*) #1

declare dso_local i32 @is_full_mask(i8*, i32) #1

declare dso_local i32 @MLX5_FLD_SZ_BYTES(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
