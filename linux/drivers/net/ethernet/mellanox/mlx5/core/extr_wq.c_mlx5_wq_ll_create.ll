; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_wq.c_mlx5_wq_ll_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_wq.c_mlx5_wq_ll_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_wq_param = type { i32, i32 }
%struct.mlx5_wq_ll = type { i32*, i32, %struct.mlx5_frag_buf_ctrl }
%struct.mlx5_frag_buf_ctrl = type { i32 }
%struct.mlx5_wq_ctrl = type { %struct.TYPE_5__, %struct.mlx5_core_dev*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_wqe_srq_next_seg = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"mlx5_db_alloc_node() failed, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"mlx5_frag_buf_alloc_node() failed, %d\0A\00", align 1
@log_wq_stride = common dso_local global i32 0, align 4
@log_wq_sz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_wq_ll_create(%struct.mlx5_core_dev* %0, %struct.mlx5_wq_param* %1, i8* %2, %struct.mlx5_wq_ll* %3, %struct.mlx5_wq_ctrl* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca %struct.mlx5_wq_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mlx5_wq_ll*, align 8
  %11 = alloca %struct.mlx5_wq_ctrl*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx5_frag_buf_ctrl*, align 8
  %15 = alloca %struct.mlx5_wqe_srq_next_seg*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %7, align 8
  store %struct.mlx5_wq_param* %1, %struct.mlx5_wq_param** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.mlx5_wq_ll* %3, %struct.mlx5_wq_ll** %10, align 8
  store %struct.mlx5_wq_ctrl* %4, %struct.mlx5_wq_ctrl** %11, align 8
  %18 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %10, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @MLX5_GET(%struct.mlx5_wq_ll* %18, i8* %19, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %10, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @MLX5_GET(%struct.mlx5_wq_ll* %22, i8* %23, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %10, align 8
  %27 = getelementptr inbounds %struct.mlx5_wq_ll, %struct.mlx5_wq_ll* %26, i32 0, i32 2
  store %struct.mlx5_frag_buf_ctrl* %27, %struct.mlx5_frag_buf_ctrl** %14, align 8
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %29 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %30 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %29, i32 0, i32 0
  %31 = load %struct.mlx5_wq_param*, %struct.mlx5_wq_param** %8, align 8
  %32 = getelementptr inbounds %struct.mlx5_wq_param, %struct.mlx5_wq_param* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mlx5_db_alloc_node(%struct.mlx5_core_dev* %28, %struct.TYPE_5__* %30, i32 %33)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %5
  %38 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %39 = load i32, i32* %16, align 4
  %40 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %16, align 4
  store i32 %41, i32* %6, align 4
  br label %109

42:                                               ; preds = %5
  %43 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %44 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %10, align 8
  %48 = getelementptr inbounds %struct.mlx5_wq_ll, %struct.mlx5_wq_ll* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @wq_get_byte_sz(i32 %50, i32 %51)
  %53 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %54 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %53, i32 0, i32 2
  %55 = load %struct.mlx5_wq_param*, %struct.mlx5_wq_param** %8, align 8
  %56 = getelementptr inbounds %struct.mlx5_wq_param, %struct.mlx5_wq_param* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @mlx5_frag_buf_alloc_node(%struct.mlx5_core_dev* %49, i32 %52, %struct.TYPE_4__* %54, i32 %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %42
  %62 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %103

65:                                               ; preds = %42
  %66 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %67 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.mlx5_frag_buf_ctrl*, %struct.mlx5_frag_buf_ctrl** %14, align 8
  %73 = call i32 @mlx5_init_fbc(i32 %69, i32 %70, i32 %71, %struct.mlx5_frag_buf_ctrl* %72)
  store i32 0, i32* %17, align 4
  br label %74

74:                                               ; preds = %89, %65
  %75 = load i32, i32* %17, align 4
  %76 = load %struct.mlx5_frag_buf_ctrl*, %struct.mlx5_frag_buf_ctrl** %14, align 8
  %77 = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, %struct.mlx5_frag_buf_ctrl* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %74
  %81 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %10, align 8
  %82 = load i32, i32* %17, align 4
  %83 = call %struct.mlx5_wqe_srq_next_seg* @mlx5_wq_ll_get_wqe(%struct.mlx5_wq_ll* %81, i32 %82)
  store %struct.mlx5_wqe_srq_next_seg* %83, %struct.mlx5_wqe_srq_next_seg** %15, align 8
  %84 = load i32, i32* %17, align 4
  %85 = add nsw i32 %84, 1
  %86 = call i32 @cpu_to_be16(i32 %85)
  %87 = load %struct.mlx5_wqe_srq_next_seg*, %struct.mlx5_wqe_srq_next_seg** %15, align 8
  %88 = getelementptr inbounds %struct.mlx5_wqe_srq_next_seg, %struct.mlx5_wqe_srq_next_seg* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %80
  %90 = load i32, i32* %17, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %17, align 4
  br label %74

92:                                               ; preds = %74
  %93 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %10, align 8
  %94 = load i32, i32* %17, align 4
  %95 = call %struct.mlx5_wqe_srq_next_seg* @mlx5_wq_ll_get_wqe(%struct.mlx5_wq_ll* %93, i32 %94)
  store %struct.mlx5_wqe_srq_next_seg* %95, %struct.mlx5_wqe_srq_next_seg** %15, align 8
  %96 = load %struct.mlx5_wqe_srq_next_seg*, %struct.mlx5_wqe_srq_next_seg** %15, align 8
  %97 = getelementptr inbounds %struct.mlx5_wqe_srq_next_seg, %struct.mlx5_wqe_srq_next_seg* %96, i32 0, i32 0
  %98 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %10, align 8
  %99 = getelementptr inbounds %struct.mlx5_wq_ll, %struct.mlx5_wq_ll* %98, i32 0, i32 0
  store i32* %97, i32** %99, align 8
  %100 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %101 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %102 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %101, i32 0, i32 1
  store %struct.mlx5_core_dev* %100, %struct.mlx5_core_dev** %102, align 8
  store i32 0, i32* %6, align 4
  br label %109

103:                                              ; preds = %61
  %104 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %105 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %106 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %105, i32 0, i32 0
  %107 = call i32 @mlx5_db_free(%struct.mlx5_core_dev* %104, %struct.TYPE_5__* %106)
  %108 = load i32, i32* %16, align 4
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %103, %92, %37
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i32 @MLX5_GET(%struct.mlx5_wq_ll*, i8*, i32) #1

declare dso_local i32 @mlx5_db_alloc_node(%struct.mlx5_core_dev*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5_frag_buf_alloc_node(%struct.mlx5_core_dev*, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @wq_get_byte_sz(i32, i32) #1

declare dso_local i32 @mlx5_init_fbc(i32, i32, i32, %struct.mlx5_frag_buf_ctrl*) #1

declare dso_local %struct.mlx5_wqe_srq_next_seg* @mlx5_wq_ll_get_wqe(%struct.mlx5_wq_ll*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @mlx5_db_free(%struct.mlx5_core_dev*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
