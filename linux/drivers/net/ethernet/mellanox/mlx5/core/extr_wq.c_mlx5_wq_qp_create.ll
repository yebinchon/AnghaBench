; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_wq.c_mlx5_wq_qp_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_wq.c_mlx5_wq_qp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_wq_param = type { i32, i32 }
%struct.mlx5_wq_qp = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.mlx5_wq_ctrl = type { %struct.TYPE_9__, %struct.mlx5_core_dev*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32 }

@log_rq_size = common dso_local global i32 0, align 4
@MLX5_SEND_WQE_BB = common dso_local global i32 0, align 4
@log_sq_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"mlx5_db_alloc_node() failed, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"mlx5_frag_buf_alloc_node() failed, %d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@MLX5_RCV_DBR = common dso_local global i64 0, align 8
@MLX5_SND_DBR = common dso_local global i64 0, align 8
@log_rq_stride = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_wq_qp_create(%struct.mlx5_core_dev* %0, %struct.mlx5_wq_param* %1, i8* %2, %struct.mlx5_wq_qp* %3, %struct.mlx5_wq_ctrl* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca %struct.mlx5_wq_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mlx5_wq_qp*, align 8
  %11 = alloca %struct.mlx5_wq_ctrl*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %7, align 8
  store %struct.mlx5_wq_param* %1, %struct.mlx5_wq_param** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.mlx5_wq_qp* %3, %struct.mlx5_wq_qp** %10, align 8
  store %struct.mlx5_wq_ctrl* %4, %struct.mlx5_wq_ctrl** %11, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i64, i64* %12, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i64 @MLX5_GET(i8* %20, i8* %21, i32 %23)
  %25 = add nsw i64 %24, 4
  store i64 %25, i64* %12, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* @log_rq_size, align 4
  %29 = call i64 @MLX5_GET(i8* %26, i8* %27, i32 %28)
  store i64 %29, i64* %13, align 8
  %30 = load i32, i32* @MLX5_SEND_WQE_BB, align 4
  %31 = call i64 @ilog2(i32 %30)
  store i64 %31, i64* %14, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* @log_sq_size, align 4
  %35 = call i64 @MLX5_GET(i8* %32, i8* %33, i32 %34)
  store i64 %35, i64* %15, align 8
  %36 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %37 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %38 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %37, i32 0, i32 0
  %39 = load %struct.mlx5_wq_param*, %struct.mlx5_wq_param** %8, align 8
  %40 = getelementptr inbounds %struct.mlx5_wq_param, %struct.mlx5_wq_param* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @mlx5_db_alloc_node(%struct.mlx5_core_dev* %36, %struct.TYPE_9__* %38, i32 %41)
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %17, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %5
  %46 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %47 = load i32, i32* %17, align 4
  %48 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %17, align 4
  store i32 %49, i32* %6, align 4
  br label %147

50:                                               ; preds = %5
  %51 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %12, align 8
  %54 = call i32 @wq_get_byte_sz(i64 %52, i64 %53)
  %55 = load i64, i64* %15, align 8
  %56 = load i64, i64* %14, align 8
  %57 = call i32 @wq_get_byte_sz(i64 %55, i64 %56)
  %58 = add nsw i32 %54, %57
  %59 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %60 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %59, i32 0, i32 2
  %61 = load %struct.mlx5_wq_param*, %struct.mlx5_wq_param** %8, align 8
  %62 = getelementptr inbounds %struct.mlx5_wq_param, %struct.mlx5_wq_param* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @mlx5_frag_buf_alloc_node(%struct.mlx5_core_dev* %51, i32 %58, %struct.TYPE_8__* %60, i32 %63)
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %50
  %68 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %69 = load i32, i32* %17, align 4
  %70 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %68, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %141

71:                                               ; preds = %50
  %72 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %73 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* %13, align 8
  %78 = load %struct.mlx5_wq_qp*, %struct.mlx5_wq_qp** %10, align 8
  %79 = getelementptr inbounds %struct.mlx5_wq_qp, %struct.mlx5_wq_qp* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = call i32 @mlx5_init_fbc(i32 %75, i64 %76, i64 %77, i32* %80)
  %82 = load i64, i64* %13, align 8
  %83 = load i64, i64* %12, align 8
  %84 = call i32 @wq_get_byte_sz(i64 %82, i64 %83)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* @PAGE_SIZE, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %71
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* @MLX5_SEND_WQE_BB, align 4
  %91 = sdiv i32 %89, %90
  store i32 %91, i32* %18, align 4
  %92 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %93 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i64, i64* %14, align 8
  %97 = load i64, i64* %15, align 8
  %98 = load i32, i32* %18, align 4
  %99 = load %struct.mlx5_wq_qp*, %struct.mlx5_wq_qp** %10, align 8
  %100 = getelementptr inbounds %struct.mlx5_wq_qp, %struct.mlx5_wq_qp* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = call i32 @mlx5_init_fbc_offset(i32 %95, i64 %96, i64 %97, i32 %98, i32* %101)
  br label %119

103:                                              ; preds = %71
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* @PAGE_SHIFT, align 4
  %106 = ashr i32 %104, %105
  store i32 %106, i32* %19, align 4
  %107 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %108 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %19, align 4
  %112 = add nsw i32 %110, %111
  %113 = load i64, i64* %14, align 8
  %114 = load i64, i64* %15, align 8
  %115 = load %struct.mlx5_wq_qp*, %struct.mlx5_wq_qp** %10, align 8
  %116 = getelementptr inbounds %struct.mlx5_wq_qp, %struct.mlx5_wq_qp* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = call i32 @mlx5_init_fbc(i32 %112, i64 %113, i64 %114, i32* %117)
  br label %119

119:                                              ; preds = %103, %88
  %120 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %121 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @MLX5_RCV_DBR, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load %struct.mlx5_wq_qp*, %struct.mlx5_wq_qp** %10, align 8
  %127 = getelementptr inbounds %struct.mlx5_wq_qp, %struct.mlx5_wq_qp* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  store i32* %125, i32** %128, align 8
  %129 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %130 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* @MLX5_SND_DBR, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load %struct.mlx5_wq_qp*, %struct.mlx5_wq_qp** %10, align 8
  %136 = getelementptr inbounds %struct.mlx5_wq_qp, %struct.mlx5_wq_qp* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  store i32* %134, i32** %137, align 8
  %138 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %139 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %140 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %139, i32 0, i32 1
  store %struct.mlx5_core_dev* %138, %struct.mlx5_core_dev** %140, align 8
  store i32 0, i32* %6, align 4
  br label %147

141:                                              ; preds = %67
  %142 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %143 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %144 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %143, i32 0, i32 0
  %145 = call i32 @mlx5_db_free(%struct.mlx5_core_dev* %142, %struct.TYPE_9__* %144)
  %146 = load i32, i32* %17, align 4
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %141, %119, %45
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i64 @MLX5_GET(i8*, i8*, i32) #1

declare dso_local i64 @ilog2(i32) #1

declare dso_local i32 @mlx5_db_alloc_node(%struct.mlx5_core_dev*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5_frag_buf_alloc_node(%struct.mlx5_core_dev*, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @wq_get_byte_sz(i64, i64) #1

declare dso_local i32 @mlx5_init_fbc(i32, i64, i64, i32*) #1

declare dso_local i32 @mlx5_init_fbc_offset(i32, i64, i64, i32, i32*) #1

declare dso_local i32 @mlx5_db_free(%struct.mlx5_core_dev*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
