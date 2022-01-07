; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_dr_action_create_reformat_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_dr_action_create_reformat_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.mlx5dr_action = type { i32, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }

@MLX5_REFORMAT_TYPE_L2_TO_L2_TUNNEL = common dso_local global i32 0, align 4
@MLX5_REFORMAT_TYPE_L2_TO_L3_TUNNEL = common dso_local global i32 0, align 4
@HDR_LEN_L2_ONLY = common dso_local global i64 0, align 8
@HDR_LEN_L2_VLAN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DR_CHUNK_SIZE_8 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACTION_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Reformat type is not supported %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_domain*, i64, i8*, %struct.mlx5dr_action*)* @dr_action_create_reformat_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_action_create_reformat_action(%struct.mlx5dr_domain* %0, i64 %1, i8* %2, %struct.mlx5dr_action* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5dr_domain*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mlx5dr_action*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.mlx5dr_action* %3, %struct.mlx5dr_action** %9, align 8
  %13 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %9, align 8
  %14 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %108 [
    i32 131, label %16
    i32 130, label %16
    i32 129, label %46
    i32 128, label %47
  ]

16:                                               ; preds = %4, %4
  %17 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %9, align 8
  %18 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 131
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @MLX5_REFORMAT_TYPE_L2_TO_L2_TUNNEL, align 4
  store i32 %22, i32* %12, align 4
  br label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @MLX5_REFORMAT_TYPE_L2_TO_L3_TUNNEL, align 4
  store i32 %24, i32* %12, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %27 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i64, i64* %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @mlx5dr_cmd_create_reformat_ctx(i32 %28, i32 %29, i64 %30, i8* %31, i32* %10)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %5, align 4
  br label %116

37:                                               ; preds = %25
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %9, align 8
  %40 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %9, align 8
  %44 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i64 %42, i64* %45, align 8
  store i32 0, i32* %5, align 4
  br label %116

46:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %116

47:                                               ; preds = %4
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @HDR_LEN_L2_ONLY, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @HDR_LEN_L2_VLAN, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %116

58:                                               ; preds = %51, %47
  %59 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %60 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @DR_CHUNK_SIZE_8, align 4
  %63 = call %struct.TYPE_11__* @mlx5dr_icm_alloc_chunk(i32 %61, i32 %62)
  %64 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %9, align 8
  %65 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  store %struct.TYPE_11__* %63, %struct.TYPE_11__** %66, align 8
  %67 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %9, align 8
  %68 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = icmp ne %struct.TYPE_11__* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %58
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %116

75:                                               ; preds = %58
  %76 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %9, align 8
  %77 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %83 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %81, %86
  %88 = load i32, i32* @ACTION_CACHE_LINE_SIZE, align 4
  %89 = sdiv i32 %87, %88
  %90 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %9, align 8
  %91 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  %93 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %94 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %9, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @dr_actions_l2_rewrite(%struct.mlx5dr_domain* %93, %struct.mlx5dr_action* %94, i8* %95, i64 %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %75
  %101 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %9, align 8
  %102 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = call i32 @mlx5dr_icm_free_chunk(%struct.TYPE_11__* %104)
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %5, align 4
  br label %116

107:                                              ; preds = %75
  store i32 0, i32* %5, align 4
  br label %116

108:                                              ; preds = %4
  %109 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %110 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %9, align 8
  %111 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @mlx5dr_info(%struct.mlx5dr_domain* %109, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %108, %107, %100, %72, %55, %46, %37, %35
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @mlx5dr_cmd_create_reformat_ctx(i32, i32, i64, i8*, i32*) #1

declare dso_local %struct.TYPE_11__* @mlx5dr_icm_alloc_chunk(i32, i32) #1

declare dso_local i32 @dr_actions_l2_rewrite(%struct.mlx5dr_domain*, %struct.mlx5dr_action*, i8*, i64) #1

declare dso_local i32 @mlx5dr_icm_free_chunk(%struct.TYPE_11__*) #1

declare dso_local i32 @mlx5dr_info(%struct.mlx5dr_domain*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
