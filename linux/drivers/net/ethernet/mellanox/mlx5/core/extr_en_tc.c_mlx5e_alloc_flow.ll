; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_alloc_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_alloc_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.flow_cls_offload = type { i32 }
%struct.mlx5e_tc_flow_parse_attr = type { i32 }
%struct.mlx5e_tc_flow = type { i64, i32, i32, i32, i32, %struct.TYPE_2__*, %struct.mlx5e_priv*, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX5_MAX_FLOW_FWD_VPORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, i32, %struct.flow_cls_offload*, i64, %struct.mlx5e_tc_flow_parse_attr**, %struct.mlx5e_tc_flow**)* @mlx5e_alloc_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_alloc_flow(%struct.mlx5e_priv* %0, i32 %1, %struct.flow_cls_offload* %2, i64 %3, %struct.mlx5e_tc_flow_parse_attr** %4, %struct.mlx5e_tc_flow** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.flow_cls_offload*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mlx5e_tc_flow_parse_attr**, align 8
  %13 = alloca %struct.mlx5e_tc_flow**, align 8
  %14 = alloca %struct.mlx5e_tc_flow_parse_attr*, align 8
  %15 = alloca %struct.mlx5e_tc_flow*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.mlx5e_tc_flow_parse_attr** %4, %struct.mlx5e_tc_flow_parse_attr*** %12, align 8
  store %struct.mlx5e_tc_flow** %5, %struct.mlx5e_tc_flow*** %13, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 48, %19
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.mlx5e_tc_flow* @kzalloc(i32 %21, i32 %22)
  store %struct.mlx5e_tc_flow* %23, %struct.mlx5e_tc_flow** %15, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.mlx5e_tc_flow_parse_attr* @kvzalloc(i32 4, i32 %24)
  store %struct.mlx5e_tc_flow_parse_attr* %25, %struct.mlx5e_tc_flow_parse_attr** %14, align 8
  %26 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %14, align 8
  %27 = icmp ne %struct.mlx5e_tc_flow_parse_attr* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %6
  %29 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %15, align 8
  %30 = icmp ne %struct.mlx5e_tc_flow* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28, %6
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %17, align 4
  br label %79

34:                                               ; preds = %28
  %35 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %10, align 8
  %36 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %15, align 8
  %39 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %15, align 8
  %42 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %44 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %15, align 8
  %45 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %44, i32 0, i32 6
  store %struct.mlx5e_priv* %43, %struct.mlx5e_priv** %45, align 8
  store i32 0, i32* %16, align 4
  br label %46

46:                                               ; preds = %59, %34
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* @MLX5_MAX_FLOW_FWD_VPORTS, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %15, align 8
  %52 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %51, i32 0, i32 5
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  br label %59

59:                                               ; preds = %50
  %60 = load i32, i32* %16, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %16, align 4
  br label %46

62:                                               ; preds = %46
  %63 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %15, align 8
  %64 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %63, i32 0, i32 4
  %65 = call i32 @INIT_LIST_HEAD(i32* %64)
  %66 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %15, align 8
  %67 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %66, i32 0, i32 3
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %15, align 8
  %70 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %69, i32 0, i32 2
  %71 = call i32 @refcount_set(i32* %70, i32 1)
  %72 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %15, align 8
  %73 = getelementptr inbounds %struct.mlx5e_tc_flow, %struct.mlx5e_tc_flow* %72, i32 0, i32 1
  %74 = call i32 @init_completion(i32* %73)
  %75 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %15, align 8
  %76 = load %struct.mlx5e_tc_flow**, %struct.mlx5e_tc_flow*** %13, align 8
  store %struct.mlx5e_tc_flow* %75, %struct.mlx5e_tc_flow** %76, align 8
  %77 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %14, align 8
  %78 = load %struct.mlx5e_tc_flow_parse_attr**, %struct.mlx5e_tc_flow_parse_attr*** %12, align 8
  store %struct.mlx5e_tc_flow_parse_attr* %77, %struct.mlx5e_tc_flow_parse_attr** %78, align 8
  store i32 0, i32* %7, align 4
  br label %85

79:                                               ; preds = %31
  %80 = load %struct.mlx5e_tc_flow*, %struct.mlx5e_tc_flow** %15, align 8
  %81 = call i32 @kfree(%struct.mlx5e_tc_flow* %80)
  %82 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %14, align 8
  %83 = call i32 @kvfree(%struct.mlx5e_tc_flow_parse_attr* %82)
  %84 = load i32, i32* %17, align 4
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %79, %62
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local %struct.mlx5e_tc_flow* @kzalloc(i32, i32) #1

declare dso_local %struct.mlx5e_tc_flow_parse_attr* @kvzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @kfree(%struct.mlx5e_tc_flow*) #1

declare dso_local i32 @kvfree(%struct.mlx5e_tc_flow_parse_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
