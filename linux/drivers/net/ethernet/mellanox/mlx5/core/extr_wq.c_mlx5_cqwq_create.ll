; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_wq.c_mlx5_cqwq_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_wq.c_mlx5_cqwq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_wq_param = type { i32, i32 }
%struct.mlx5_cqwq = type { i32, i32 }
%struct.mlx5_wq_ctrl = type { %struct.TYPE_5__, %struct.mlx5_core_dev*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@cqe_sz = common dso_local global i32 0, align 4
@CQE_STRIDE_64 = common dso_local global i64 0, align 8
@log_cq_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"mlx5_db_alloc_node() failed, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"mlx5_frag_buf_alloc_node() failed, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_cqwq_create(%struct.mlx5_core_dev* %0, %struct.mlx5_wq_param* %1, i8* %2, %struct.mlx5_cqwq* %3, %struct.mlx5_wq_ctrl* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca %struct.mlx5_wq_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mlx5_cqwq*, align 8
  %11 = alloca %struct.mlx5_wq_ctrl*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %7, align 8
  store %struct.mlx5_wq_param* %1, %struct.mlx5_wq_param** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.mlx5_cqwq* %3, %struct.mlx5_cqwq** %10, align 8
  store %struct.mlx5_wq_ctrl* %4, %struct.mlx5_wq_ctrl** %11, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i32, i32* @cqe_sz, align 4
  %18 = call i64 @MLX5_GET(i8* %15, i8* %16, i32 %17)
  %19 = load i64, i64* @CQE_STRIDE_64, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 6, i32 7
  store i32 %22, i32* %12, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* @log_cq_size, align 4
  %26 = call i64 @MLX5_GET(i8* %23, i8* %24, i32 %25)
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %13, align 4
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %29 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %30 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %29, i32 0, i32 0
  %31 = load %struct.mlx5_wq_param*, %struct.mlx5_wq_param** %8, align 8
  %32 = getelementptr inbounds %struct.mlx5_wq_param, %struct.mlx5_wq_param* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mlx5_db_alloc_node(%struct.mlx5_core_dev* %28, %struct.TYPE_5__* %30, i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %5
  %38 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %6, align 4
  br label %84

42:                                               ; preds = %5
  %43 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %44 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.mlx5_cqwq*, %struct.mlx5_cqwq** %10, align 8
  %48 = getelementptr inbounds %struct.mlx5_cqwq, %struct.mlx5_cqwq* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
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
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %42
  %62 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %78

65:                                               ; preds = %42
  %66 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %67 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.mlx5_cqwq*, %struct.mlx5_cqwq** %10, align 8
  %73 = getelementptr inbounds %struct.mlx5_cqwq, %struct.mlx5_cqwq* %72, i32 0, i32 0
  %74 = call i32 @mlx5_init_fbc(i32 %69, i32 %70, i32 %71, i32* %73)
  %75 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %76 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %77 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %76, i32 0, i32 1
  store %struct.mlx5_core_dev* %75, %struct.mlx5_core_dev** %77, align 8
  store i32 0, i32* %6, align 4
  br label %84

78:                                               ; preds = %61
  %79 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %80 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %81 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %80, i32 0, i32 0
  %82 = call i32 @mlx5_db_free(%struct.mlx5_core_dev* %79, %struct.TYPE_5__* %81)
  %83 = load i32, i32* %14, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %78, %65, %37
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i64 @MLX5_GET(i8*, i8*, i32) #1

declare dso_local i32 @mlx5_db_alloc_node(%struct.mlx5_core_dev*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5_frag_buf_alloc_node(%struct.mlx5_core_dev*, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @wq_get_byte_sz(i32, i32) #1

declare dso_local i32 @mlx5_init_fbc(i32, i32, i32, i32*) #1

declare dso_local i32 @mlx5_db_free(%struct.mlx5_core_dev*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
