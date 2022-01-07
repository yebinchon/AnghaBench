; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_dr_action_create_modify_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_dr_action_create_modify_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5dr_action = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32, i32*, %struct.mlx5dr_icm_chunk* }
%struct.mlx5dr_icm_chunk = type { i32 }

@DR_MODIFY_ACTION_SIZE = common dso_local global i64 0, align 8
@DR_CHUNK_SIZE_16 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Max number of actions %d exceeds limit %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ACTION_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_domain*, i64, i32*, %struct.mlx5dr_action*)* @dr_action_create_modify_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_action_create_modify_action(%struct.mlx5dr_domain* %0, i64 %1, i32* %2, %struct.mlx5dr_action* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5dr_domain*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mlx5dr_action*, align 8
  %10 = alloca %struct.mlx5dr_icm_chunk*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.mlx5dr_action* %3, %struct.mlx5dr_action** %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @DR_MODIFY_ACTION_SIZE, align 8
  %19 = udiv i64 %17, %18
  store i64 %19, i64* %13, align 8
  %20 = load i32, i32* @DR_CHUNK_SIZE_16, align 4
  %21 = call i64 @mlx5dr_icm_pool_chunk_size_to_entries(i32 %20)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %4
  %26 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @mlx5dr_dbg(%struct.mlx5dr_domain* %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %109

32:                                               ; preds = %4
  %33 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %34 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DR_CHUNK_SIZE_16, align 4
  %37 = call %struct.mlx5dr_icm_chunk* @mlx5dr_icm_alloc_chunk(i32 %35, i32 %36)
  store %struct.mlx5dr_icm_chunk* %37, %struct.mlx5dr_icm_chunk** %10, align 8
  %38 = load %struct.mlx5dr_icm_chunk*, %struct.mlx5dr_icm_chunk** %10, align 8
  %39 = icmp ne %struct.mlx5dr_icm_chunk* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %109

43:                                               ; preds = %32
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* @DR_MODIFY_ACTION_SIZE, align 8
  %46 = mul i64 %44, %45
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i32* @kcalloc(i32 1, i64 %46, i32 %47)
  store i32* %48, i32** %14, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %16, align 4
  br label %105

54:                                               ; preds = %43
  %55 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = call i32 @dr_actions_convert_modify_header(%struct.mlx5dr_domain* %55, i64 %56, i64 %57, i32* %58, i32* %59, i64* %12, i32* %15)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %102

64:                                               ; preds = %54
  %65 = load %struct.mlx5dr_icm_chunk*, %struct.mlx5dr_icm_chunk** %10, align 8
  %66 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %9, align 8
  %67 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  store %struct.mlx5dr_icm_chunk* %65, %struct.mlx5dr_icm_chunk** %68, align 8
  %69 = load i32, i32* %15, align 4
  %70 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %9, align 8
  %71 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load i32*, i32** %14, align 8
  %74 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %9, align 8
  %75 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  store i32* %73, i32** %76, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %9, align 8
  %79 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i64 %77, i64* %80, align 8
  %81 = load %struct.mlx5dr_icm_chunk*, %struct.mlx5dr_icm_chunk** %10, align 8
  %82 = getelementptr inbounds %struct.mlx5dr_icm_chunk, %struct.mlx5dr_icm_chunk* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %85 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %83, %88
  %90 = load i32, i32* @ACTION_CACHE_LINE_SIZE, align 4
  %91 = sdiv i32 %89, %90
  %92 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %9, align 8
  %93 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  store i32 %91, i32* %94, align 8
  %95 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %96 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %9, align 8
  %97 = call i32 @mlx5dr_send_postsend_action(%struct.mlx5dr_domain* %95, %struct.mlx5dr_action* %96)
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %64
  br label %102

101:                                              ; preds = %64
  store i32 0, i32* %5, align 4
  br label %109

102:                                              ; preds = %100, %63
  %103 = load i32*, i32** %14, align 8
  %104 = call i32 @kfree(i32* %103)
  br label %105

105:                                              ; preds = %102, %51
  %106 = load %struct.mlx5dr_icm_chunk*, %struct.mlx5dr_icm_chunk** %10, align 8
  %107 = call i32 @mlx5dr_icm_free_chunk(%struct.mlx5dr_icm_chunk* %106)
  %108 = load i32, i32* %16, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %105, %101, %40, %25
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i64 @mlx5dr_icm_pool_chunk_size_to_entries(i32) #1

declare dso_local i32 @mlx5dr_dbg(%struct.mlx5dr_domain*, i8*, i64, i64) #1

declare dso_local %struct.mlx5dr_icm_chunk* @mlx5dr_icm_alloc_chunk(i32, i32) #1

declare dso_local i32* @kcalloc(i32, i64, i32) #1

declare dso_local i32 @dr_actions_convert_modify_header(%struct.mlx5dr_domain*, i64, i64, i32*, i32*, i64*, i32*) #1

declare dso_local i32 @mlx5dr_send_postsend_action(%struct.mlx5dr_domain*, %struct.mlx5dr_action*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mlx5dr_icm_free_chunk(%struct.mlx5dr_icm_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
