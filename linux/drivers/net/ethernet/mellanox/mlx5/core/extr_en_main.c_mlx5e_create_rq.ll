; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_create_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_create_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { i32, %struct.TYPE_9__, %struct.TYPE_7__, %struct.mlx5_core_dev* }
%struct.TYPE_9__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_rq_param = type { i32 }

@create_rq_in = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ctx = common dso_local global i8* null, align 8
@cqn = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@MLX5_RQC_STATE_RST = common dso_local global i64 0, align 8
@log_wq_pg_sz = common dso_local global i32 0, align 4
@MLX5_ADAPTER_PAGE_SHIFT = common dso_local global i64 0, align 8
@dbr_addr = common dso_local global i32 0, align 4
@pas = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_rq*, %struct.mlx5e_rq_param*)* @mlx5e_create_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_create_rq(%struct.mlx5e_rq* %0, %struct.mlx5e_rq_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_rq*, align 8
  %5 = alloca %struct.mlx5e_rq_param*, align 8
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %4, align 8
  store %struct.mlx5e_rq_param* %1, %struct.mlx5e_rq_param** %5, align 8
  %12 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %12, i32 0, i32 3
  %14 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %13, align 8
  store %struct.mlx5_core_dev* %14, %struct.mlx5_core_dev** %6, align 8
  %15 = load i8*, i8** @create_rq_in, align 8
  %16 = call i32 @MLX5_ST_SZ_BYTES(i8* %15)
  %17 = sext i32 %16 to i64
  %18 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = add i64 %17, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @kvzalloc(i32 %27, i32 %28)
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %101

35:                                               ; preds = %2
  %36 = load i8*, i8** @create_rq_in, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** @ctx, align 8
  %39 = call i8* @MLX5_ADDR_OF(i8* %36, i8* %37, i8* %38)
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i8* @MLX5_ADDR_OF(i8* %40, i8* %41, i8* %42)
  store i8* %43, i8** %9, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.mlx5e_rq_param*, %struct.mlx5e_rq_param** %5, align 8
  %46 = getelementptr inbounds %struct.mlx5e_rq_param, %struct.mlx5e_rq_param* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @memcpy(i8* %44, i32 %47, i32 4)
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* @cqn, align 4
  %52 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %53 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @MLX5_SET(i8* %49, i8* %50, i32 %51, i64 %56)
  %58 = load i8*, i8** %8, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* @state, align 4
  %61 = load i64, i64* @MLX5_RQC_STATE_RST, align 8
  %62 = call i32 @MLX5_SET(i8* %58, i8* %59, i32 %60, i64 %61)
  %63 = load i8*, i8** %9, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i32, i32* @log_wq_pg_sz, align 4
  %66 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %67 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @MLX5_ADAPTER_PAGE_SHIFT, align 8
  %72 = sub nsw i64 %70, %71
  %73 = call i32 @MLX5_SET(i8* %63, i8* %64, i32 %65, i64 %72)
  %74 = load i8*, i8** %9, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* @dbr_addr, align 4
  %77 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %78 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @MLX5_SET64(i8* %74, i8* %75, i32 %76, i32 %81)
  %83 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %84 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i8*, i8** %9, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = load i8*, i8** @pas, align 8
  %89 = call i8* @MLX5_ADDR_OF(i8* %86, i8* %87, i8* %88)
  %90 = bitcast i8* %89 to i32*
  %91 = call i32 @mlx5_fill_page_frag_array(%struct.TYPE_10__* %85, i32* %90)
  %92 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %96 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %95, i32 0, i32 0
  %97 = call i32 @mlx5_core_create_rq(%struct.mlx5_core_dev* %92, i8* %93, i32 %94, i32* %96)
  store i32 %97, i32* %11, align 4
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 @kvfree(i8* %98)
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %35, %32
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i8*) #1

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i64) #1

declare dso_local i32 @MLX5_SET64(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_fill_page_frag_array(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @mlx5_core_create_rq(%struct.mlx5_core_dev*, i8*, i32, i32*) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
