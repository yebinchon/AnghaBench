; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_fpga_ipsec_counters_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_fpga_ipsec_counters_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.mlx5_fpga_device* }
%struct.mlx5_fpga_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ipsec_extended_cap = common dso_local global i32 0, align 4
@ipsec_counters_addr_low = common dso_local global i32 0, align 4
@ipsec_counters_addr_high = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_FPGA_ACCESS_TYPE_DONTCARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to read IPSec counters from HW: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_fpga_ipsec_counters_read(%struct.mlx5_core_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_fpga_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %15 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %14, i32 0, i32 0
  %16 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %15, align 8
  store %struct.mlx5_fpga_device* %16, %struct.mlx5_fpga_device** %8, align 8
  %17 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %8, align 8
  %18 = icmp ne %struct.mlx5_fpga_device* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %8, align 8
  %21 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %3
  store i32 0, i32* %4, align 4
  br label %116

25:                                               ; preds = %19
  %26 = load i32, i32* @ipsec_extended_cap, align 4
  %27 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %8, align 8
  %28 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ipsec_counters_addr_low, align 4
  %33 = call i64 @MLX5_GET(i32 %26, i32 %31, i32 %32)
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @ipsec_extended_cap, align 4
  %36 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %8, align 8
  %37 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ipsec_counters_addr_high, align 4
  %42 = call i64 @MLX5_GET(i32 %35, i32 %40, i32 %41)
  %43 = trunc i64 %42 to i32
  %44 = shl i32 %43, 32
  %45 = add nsw i32 %34, %44
  store i32 %45, i32* %12, align 4
  %46 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %47 = call i32 @mlx5_fpga_ipsec_counters_count(%struct.mlx5_core_dev* %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @array3_size(i32 4, i32 %48, i32 2)
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i32* @kzalloc(i32 %49, i32 %50)
  store i32* %51, i32** %10, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %25
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %13, align 4
  br label %112

57:                                               ; preds = %25
  %58 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %8, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* %12, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* @MLX5_FPGA_ACCESS_TYPE_DONTCARE, align 4
  %66 = call i32 @mlx5_fpga_mem_read(%struct.mlx5_fpga_device* %58, i32 %62, i32 %63, i32* %64, i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %57
  %70 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %8, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %70, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %112

73:                                               ; preds = %57
  store i32 0, i32* %13, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ugt i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %77, %73
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %108, %79
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %84, label %111

84:                                               ; preds = %80
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %9, align 4
  %87 = mul i32 %86, 2
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @ntohl(i32 %90)
  %92 = trunc i64 %91 to i32
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* %9, align 4
  %95 = mul i32 %94, 2
  %96 = add i32 %95, 1
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @ntohl(i32 %99)
  %101 = trunc i64 %100 to i32
  %102 = shl i32 %101, 32
  %103 = or i32 %92, %102
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* %9, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %103, i32* %107, align 4
  br label %108

108:                                              ; preds = %84
  %109 = load i32, i32* %9, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %80

111:                                              ; preds = %80
  br label %112

112:                                              ; preds = %111, %69, %54
  %113 = load i32*, i32** %10, align 8
  %114 = call i32 @kfree(i32* %113)
  %115 = load i32, i32* %13, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %112, %24
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i64 @MLX5_GET(i32, i32, i32) #1

declare dso_local i32 @mlx5_fpga_ipsec_counters_count(%struct.mlx5_core_dev*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @array3_size(i32, i32, i32) #1

declare dso_local i32 @mlx5_fpga_mem_read(%struct.mlx5_fpga_device*, i32, i32, i32*, i32) #1

declare dso_local i32 @mlx5_fpga_err(%struct.mlx5_fpga_device*, i8*, i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
