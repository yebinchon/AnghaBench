; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_create_sq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_create_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5e_sq_param = type { i32 }
%struct.mlx5e_create_sq_param = type { i32, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@create_sq_in = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ctx = common dso_local global i8* null, align 8
@tis_lst_sz = common dso_local global i32 0, align 4
@tis_num_0 = common dso_local global i32 0, align 4
@cqn = common dso_local global i32 0, align 4
@wqe_inline_mode = common dso_local global i32 0, align 4
@MLX5_CAP_INLINE_MODE_VPORT_CONTEXT = common dso_local global i64 0, align 8
@min_wqe_inline_mode = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@MLX5_SQC_STATE_RST = common dso_local global i32 0, align 4
@flush_in_error_en = common dso_local global i32 0, align 4
@wq_type = common dso_local global i32 0, align 4
@MLX5_WQ_TYPE_CYCLIC = common dso_local global i32 0, align 4
@uar_page = common dso_local global i32 0, align 4
@log_wq_pg_sz = common dso_local global i32 0, align 4
@MLX5_ADAPTER_PAGE_SHIFT = common dso_local global i32 0, align 4
@dbr_addr = common dso_local global i32 0, align 4
@pas = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5e_sq_param*, %struct.mlx5e_create_sq_param*, i32*)* @mlx5e_create_sq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_create_sq(%struct.mlx5_core_dev* %0, %struct.mlx5e_sq_param* %1, %struct.mlx5e_create_sq_param* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca %struct.mlx5e_sq_param*, align 8
  %8 = alloca %struct.mlx5e_create_sq_param*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %6, align 8
  store %struct.mlx5e_sq_param* %1, %struct.mlx5e_sq_param** %7, align 8
  store %struct.mlx5e_create_sq_param* %2, %struct.mlx5e_create_sq_param** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i8*, i8** @create_sq_in, align 8
  %16 = call i32 @MLX5_ST_SZ_BYTES(i8* %15)
  %17 = sext i32 %16 to i64
  %18 = load %struct.mlx5e_create_sq_param*, %struct.mlx5e_create_sq_param** %8, align 8
  %19 = getelementptr inbounds %struct.mlx5e_create_sq_param, %struct.mlx5e_create_sq_param* %18, i32 0, i32 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = add i64 %17, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kvzalloc(i32 %28, i32 %29)
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %4
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %148

36:                                               ; preds = %4
  %37 = load i8*, i8** @create_sq_in, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i8*, i8** @ctx, align 8
  %40 = call i8* @MLX5_ADDR_OF(i8* %37, i8* %38, i8* %39)
  store i8* %40, i8** %11, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = call i8* @MLX5_ADDR_OF(i8* %41, i8* %42, i8* %43)
  store i8* %44, i8** %12, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %7, align 8
  %47 = getelementptr inbounds %struct.mlx5e_sq_param, %struct.mlx5e_sq_param* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memcpy(i8* %45, i32 %48, i32 4)
  %50 = load i8*, i8** %11, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* @tis_lst_sz, align 4
  %53 = load %struct.mlx5e_create_sq_param*, %struct.mlx5e_create_sq_param** %8, align 8
  %54 = getelementptr inbounds %struct.mlx5e_create_sq_param, %struct.mlx5e_create_sq_param* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @MLX5_SET(i8* %50, i8* %51, i32 %52, i32 %55)
  %57 = load i8*, i8** %11, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load i32, i32* @tis_num_0, align 4
  %60 = load %struct.mlx5e_create_sq_param*, %struct.mlx5e_create_sq_param** %8, align 8
  %61 = getelementptr inbounds %struct.mlx5e_create_sq_param, %struct.mlx5e_create_sq_param* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @MLX5_SET(i8* %57, i8* %58, i32 %59, i32 %62)
  %64 = load i8*, i8** %11, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load i32, i32* @cqn, align 4
  %67 = load %struct.mlx5e_create_sq_param*, %struct.mlx5e_create_sq_param** %8, align 8
  %68 = getelementptr inbounds %struct.mlx5e_create_sq_param, %struct.mlx5e_create_sq_param* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @MLX5_SET(i8* %64, i8* %65, i32 %66, i32 %69)
  %71 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %72 = load i32, i32* @wqe_inline_mode, align 4
  %73 = call i64 @MLX5_CAP_ETH(%struct.mlx5_core_dev* %71, i32 %72)
  %74 = load i64, i64* @MLX5_CAP_INLINE_MODE_VPORT_CONTEXT, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %36
  %77 = load i8*, i8** %11, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = load i32, i32* @min_wqe_inline_mode, align 4
  %80 = load %struct.mlx5e_create_sq_param*, %struct.mlx5e_create_sq_param** %8, align 8
  %81 = getelementptr inbounds %struct.mlx5e_create_sq_param, %struct.mlx5e_create_sq_param* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @MLX5_SET(i8* %77, i8* %78, i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %76, %36
  %85 = load i8*, i8** %11, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = load i32, i32* @state, align 4
  %88 = load i32, i32* @MLX5_SQC_STATE_RST, align 4
  %89 = call i32 @MLX5_SET(i8* %85, i8* %86, i32 %87, i32 %88)
  %90 = load i8*, i8** %11, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = load i32, i32* @flush_in_error_en, align 4
  %93 = call i32 @MLX5_SET(i8* %90, i8* %91, i32 %92, i32 1)
  %94 = load i8*, i8** %12, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = load i32, i32* @wq_type, align 4
  %97 = load i32, i32* @MLX5_WQ_TYPE_CYCLIC, align 4
  %98 = call i32 @MLX5_SET(i8* %94, i8* %95, i32 %96, i32 %97)
  %99 = load i8*, i8** %12, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = load i32, i32* @uar_page, align 4
  %102 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %103 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @MLX5_SET(i8* %99, i8* %100, i32 %101, i32 %106)
  %108 = load i8*, i8** %12, align 8
  %109 = load i8*, i8** %12, align 8
  %110 = load i32, i32* @log_wq_pg_sz, align 4
  %111 = load %struct.mlx5e_create_sq_param*, %struct.mlx5e_create_sq_param** %8, align 8
  %112 = getelementptr inbounds %struct.mlx5e_create_sq_param, %struct.mlx5e_create_sq_param* %111, i32 0, i32 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @MLX5_ADAPTER_PAGE_SHIFT, align 4
  %118 = sub nsw i32 %116, %117
  %119 = call i32 @MLX5_SET(i8* %108, i8* %109, i32 %110, i32 %118)
  %120 = load i8*, i8** %12, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = load i32, i32* @dbr_addr, align 4
  %123 = load %struct.mlx5e_create_sq_param*, %struct.mlx5e_create_sq_param** %8, align 8
  %124 = getelementptr inbounds %struct.mlx5e_create_sq_param, %struct.mlx5e_create_sq_param* %123, i32 0, i32 4
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @MLX5_SET64(i8* %120, i8* %121, i32 %122, i32 %128)
  %130 = load %struct.mlx5e_create_sq_param*, %struct.mlx5e_create_sq_param** %8, align 8
  %131 = getelementptr inbounds %struct.mlx5e_create_sq_param, %struct.mlx5e_create_sq_param* %130, i32 0, i32 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i8*, i8** %12, align 8
  %135 = load i8*, i8** %12, align 8
  %136 = load i8*, i8** @pas, align 8
  %137 = call i8* @MLX5_ADDR_OF(i8* %134, i8* %135, i8* %136)
  %138 = bitcast i8* %137 to i32*
  %139 = call i32 @mlx5_fill_page_frag_array(%struct.TYPE_10__* %133, i32* %138)
  %140 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %141 = load i8*, i8** %10, align 8
  %142 = load i32, i32* %13, align 4
  %143 = load i32*, i32** %9, align 8
  %144 = call i32 @mlx5_core_create_sq(%struct.mlx5_core_dev* %140, i8* %141, i32 %142, i32* %143)
  store i32 %144, i32* %14, align 4
  %145 = load i8*, i8** %10, align 8
  %146 = call i32 @kvfree(i8* %145)
  %147 = load i32, i32* %14, align 4
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %84, %33
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i8*) #1

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i64 @MLX5_CAP_ETH(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @MLX5_SET64(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_fill_page_frag_array(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @mlx5_core_create_sq(%struct.mlx5_core_dev*, i8*, i32, i32*) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
