; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_wq.c_mlx5_wq_cyc_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_wq.c_mlx5_wq_cyc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_wq_param = type { i32, i32 }
%struct.mlx5_wq_cyc = type { i32, i32, %struct.mlx5_frag_buf_ctrl }
%struct.mlx5_frag_buf_ctrl = type { i32 }
%struct.mlx5_wq_ctrl = type { %struct.TYPE_5__, %struct.mlx5_core_dev*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"mlx5_db_alloc_node() failed, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"mlx5_frag_buf_alloc_node() failed, %d\0A\00", align 1
@log_wq_stride = common dso_local global i32 0, align 4
@log_wq_sz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_wq_cyc_create(%struct.mlx5_core_dev* %0, %struct.mlx5_wq_param* %1, i8* %2, %struct.mlx5_wq_cyc* %3, %struct.mlx5_wq_ctrl* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca %struct.mlx5_wq_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mlx5_wq_cyc*, align 8
  %11 = alloca %struct.mlx5_wq_ctrl*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx5_frag_buf_ctrl*, align 8
  %15 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %7, align 8
  store %struct.mlx5_wq_param* %1, %struct.mlx5_wq_param** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.mlx5_wq_cyc* %3, %struct.mlx5_wq_cyc** %10, align 8
  store %struct.mlx5_wq_ctrl* %4, %struct.mlx5_wq_ctrl** %11, align 8
  %16 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %10, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i32, i32* %12, align 4
  %19 = call i32 @MLX5_GET(%struct.mlx5_wq_cyc* %16, i8* %17, i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %10, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i32, i32* %13, align 4
  %23 = call i32 @MLX5_GET(%struct.mlx5_wq_cyc* %20, i8* %21, i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %10, align 8
  %25 = getelementptr inbounds %struct.mlx5_wq_cyc, %struct.mlx5_wq_cyc* %24, i32 0, i32 2
  store %struct.mlx5_frag_buf_ctrl* %25, %struct.mlx5_frag_buf_ctrl** %14, align 8
  %26 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %27 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %28 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %27, i32 0, i32 0
  %29 = load %struct.mlx5_wq_param*, %struct.mlx5_wq_param** %8, align 8
  %30 = getelementptr inbounds %struct.mlx5_wq_param, %struct.mlx5_wq_param* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mlx5_db_alloc_node(%struct.mlx5_core_dev* %26, %struct.TYPE_5__* %28, i32 %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %5
  %36 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %37 = load i32, i32* %15, align 4
  %38 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %15, align 4
  store i32 %39, i32* %6, align 4
  br label %85

40:                                               ; preds = %5
  %41 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %42 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %10, align 8
  %46 = getelementptr inbounds %struct.mlx5_wq_cyc, %struct.mlx5_wq_cyc* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @wq_get_byte_sz(i32 %48, i32 %49)
  %51 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %52 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %51, i32 0, i32 2
  %53 = load %struct.mlx5_wq_param*, %struct.mlx5_wq_param** %8, align 8
  %54 = getelementptr inbounds %struct.mlx5_wq_param, %struct.mlx5_wq_param* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @mlx5_frag_buf_alloc_node(%struct.mlx5_core_dev* %47, i32 %50, %struct.TYPE_4__* %52, i32 %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %40
  %60 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %79

63:                                               ; preds = %40
  %64 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %65 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.mlx5_frag_buf_ctrl*, %struct.mlx5_frag_buf_ctrl** %14, align 8
  %71 = call i32 @mlx5_init_fbc(i32 %67, i32 %68, i32 %69, %struct.mlx5_frag_buf_ctrl* %70)
  %72 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %10, align 8
  %73 = call i32 @mlx5_wq_cyc_get_size(%struct.mlx5_wq_cyc* %72)
  %74 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %10, align 8
  %75 = getelementptr inbounds %struct.mlx5_wq_cyc, %struct.mlx5_wq_cyc* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %77 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %78 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %77, i32 0, i32 1
  store %struct.mlx5_core_dev* %76, %struct.mlx5_core_dev** %78, align 8
  store i32 0, i32* %6, align 4
  br label %85

79:                                               ; preds = %59
  %80 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %81 = load %struct.mlx5_wq_ctrl*, %struct.mlx5_wq_ctrl** %11, align 8
  %82 = getelementptr inbounds %struct.mlx5_wq_ctrl, %struct.mlx5_wq_ctrl* %81, i32 0, i32 0
  %83 = call i32 @mlx5_db_free(%struct.mlx5_core_dev* %80, %struct.TYPE_5__* %82)
  %84 = load i32, i32* %15, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %79, %63, %35
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @MLX5_GET(%struct.mlx5_wq_cyc*, i8*, i32) #1

declare dso_local i32 @mlx5_db_alloc_node(%struct.mlx5_core_dev*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5_frag_buf_alloc_node(%struct.mlx5_core_dev*, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @wq_get_byte_sz(i32, i32) #1

declare dso_local i32 @mlx5_init_fbc(i32, i32, i32, %struct.mlx5_frag_buf_ctrl*) #1

declare dso_local i32 @mlx5_wq_cyc_get_size(%struct.mlx5_wq_cyc*) #1

declare dso_local i32 @mlx5_db_free(%struct.mlx5_core_dev*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
