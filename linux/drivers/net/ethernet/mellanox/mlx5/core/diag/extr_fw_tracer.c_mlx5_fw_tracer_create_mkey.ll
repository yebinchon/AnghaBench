; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_fw_tracer.c_mlx5_fw_tracer_create_mkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_fw_tracer.c_mlx5_fw_tracer_create_mkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fw_tracer = type { %struct.TYPE_2__, %struct.mlx5_core_dev* }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }
%struct.mlx5_core_dev = type { i32 }

@create_mkey_in = common dso_local global i8* null, align 8
@TRACER_BUFFER_PAGE_NUM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@translations_octword_actual_size = common dso_local global i32 0, align 4
@klm_pas_mtt = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@memory_key_mkey_entry = common dso_local global i32 0, align 4
@access_mode_1_0 = common dso_local global i32 0, align 4
@MLX5_MKC_ACCESS_MODE_MTT = common dso_local global i32 0, align 4
@lr = common dso_local global i32 0, align 4
@lw = common dso_local global i32 0, align 4
@pd = common dso_local global i32 0, align 4
@bsf_octword_size = common dso_local global i32 0, align 4
@qpn = common dso_local global i32 0, align 4
@log_page_size = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@translations_octword_size = common dso_local global i32 0, align 4
@start_addr = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"FWTracer: Failed to create mkey, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_fw_tracer*)* @mlx5_fw_tracer_create_mkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fw_tracer_create_mkey(%struct.mlx5_fw_tracer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_fw_tracer*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.mlx5_fw_tracer* %0, %struct.mlx5_fw_tracer** %3, align 8
  %11 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %11, i32 0, i32 1
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %12, align 8
  store %struct.mlx5_core_dev* %13, %struct.mlx5_core_dev** %4, align 8
  %14 = load i8*, i8** @create_mkey_in, align 8
  %15 = call i32 @MLX5_ST_SZ_BYTES(i8* %14)
  %16 = sext i32 %15 to i64
  %17 = load i32, i32* @TRACER_BUFFER_PAGE_NUM, align 4
  %18 = call i32 @round_up(i32 %17, i32 2)
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = add i64 %16, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kvzalloc(i32 %23, i32 %24)
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %143

31:                                               ; preds = %1
  %32 = load i8*, i8** @create_mkey_in, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* @translations_octword_actual_size, align 4
  %35 = load i32, i32* @TRACER_BUFFER_PAGE_NUM, align 4
  %36 = call i32 @DIV_ROUND_UP(i32 %35, i32 2)
  %37 = call i32 @MLX5_SET(i8* %32, i8* %33, i32 %34, i32 %36)
  %38 = load i8*, i8** @create_mkey_in, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* @klm_pas_mtt, align 4
  %41 = call i8* @MLX5_ADDR_OF(i8* %38, i8* %39, i32 %40)
  %42 = bitcast i8* %41 to i32*
  store i32* %42, i32** %8, align 8
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %62, %31
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @TRACER_BUFFER_PAGE_NUM, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %43
  %48 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %49 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = mul nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %51, %55
  %57 = call i32 @cpu_to_be64(i64 %56)
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %57, i32* %61, align 4
  br label %62

62:                                               ; preds = %47
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %43

65:                                               ; preds = %43
  %66 = load i8*, i8** @create_mkey_in, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* @memory_key_mkey_entry, align 4
  %69 = call i8* @MLX5_ADDR_OF(i8* %66, i8* %67, i32 %68)
  store i8* %69, i8** %9, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load i32, i32* @access_mode_1_0, align 4
  %73 = load i32, i32* @MLX5_MKC_ACCESS_MODE_MTT, align 4
  %74 = call i32 @MLX5_SET(i8* %70, i8* %71, i32 %72, i32 %73)
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i32, i32* @lr, align 4
  %78 = call i32 @MLX5_SET(i8* %75, i8* %76, i32 %77, i32 1)
  %79 = load i8*, i8** %9, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = load i32, i32* @lw, align 4
  %82 = call i32 @MLX5_SET(i8* %79, i8* %80, i32 %81, i32 1)
  %83 = load i8*, i8** %9, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = load i32, i32* @pd, align 4
  %86 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %87 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @MLX5_SET(i8* %83, i8* %84, i32 %85, i32 %89)
  %91 = load i8*, i8** %9, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = load i32, i32* @bsf_octword_size, align 4
  %94 = call i32 @MLX5_SET(i8* %91, i8* %92, i32 %93, i32 0)
  %95 = load i8*, i8** %9, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = load i32, i32* @qpn, align 4
  %98 = call i32 @MLX5_SET(i8* %95, i8* %96, i32 %97, i32 16777215)
  %99 = load i8*, i8** %9, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = load i32, i32* @log_page_size, align 4
  %102 = load i32, i32* @PAGE_SHIFT, align 4
  %103 = call i32 @MLX5_SET(i8* %99, i8* %100, i32 %101, i32 %102)
  %104 = load i8*, i8** %9, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = load i32, i32* @translations_octword_size, align 4
  %107 = load i32, i32* @TRACER_BUFFER_PAGE_NUM, align 4
  %108 = call i32 @DIV_ROUND_UP(i32 %107, i32 2)
  %109 = call i32 @MLX5_SET(i8* %104, i8* %105, i32 %106, i32 %108)
  %110 = load i8*, i8** %9, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = load i32, i32* @start_addr, align 4
  %113 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %114 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @MLX5_SET64(i8* %110, i8* %111, i32 %112, i64 %116)
  %118 = load i8*, i8** %9, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = load i32, i32* @len, align 4
  %121 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %122 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @MLX5_SET64(i8* %118, i8* %119, i32 %120, i64 %124)
  %126 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %127 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %3, align 8
  %128 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i8*, i8** %10, align 8
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @mlx5_core_create_mkey(%struct.mlx5_core_dev* %126, i32* %129, i8* %130, i32 %131)
  store i32 %132, i32* %5, align 4
  %133 = load i32, i32* %5, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %65
  %136 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %136, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %135, %65
  %140 = load i8*, i8** %10, align 8
  %141 = call i32 @kvfree(i8* %140)
  %142 = load i32, i32* %5, align 4
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %139, %28
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i8*) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i32) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @MLX5_SET64(i8*, i8*, i32, i64) #1

declare dso_local i32 @mlx5_core_create_mkey(%struct.mlx5_core_dev*, i32*, i8*, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
