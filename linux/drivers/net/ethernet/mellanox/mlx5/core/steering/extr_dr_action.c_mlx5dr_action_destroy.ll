; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_mlx5dr_action_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_mlx5dr_action_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_action = type { i32, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_8__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.mlx5dr_action*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5dr_action_destroy(%struct.mlx5dr_action* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5dr_action*, align 8
  store %struct.mlx5dr_action* %0, %struct.mlx5dr_action** %3, align 8
  %4 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %3, align 8
  %5 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %4, i32 0, i32 4
  %6 = call i32 @refcount_read(i32* %5)
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EBUSY, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %87

11:                                               ; preds = %1
  %12 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %83 [
    i32 133, label %15
    i32 129, label %29
    i32 128, label %36
    i32 132, label %48
    i32 131, label %48
    i32 130, label %66
  ]

15:                                               ; preds = %11
  %16 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %3, align 8
  %17 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = call i32 @refcount_dec(i32* %26)
  br label %28

28:                                               ; preds = %21, %15
  br label %84

29:                                               ; preds = %11
  %30 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %3, align 8
  %31 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = call i32 @refcount_dec(i32* %34)
  br label %84

36:                                               ; preds = %11
  %37 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %3, align 8
  %38 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @mlx5dr_icm_free_chunk(i32 %40)
  %42 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %3, align 8
  %43 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = call i32 @refcount_dec(i32* %46)
  br label %84

48:                                               ; preds = %11, %11
  %49 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %3, align 8
  %50 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %3, align 8
  %56 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @mlx5dr_cmd_destroy_reformat_ctx(i32 %54, i32 %58)
  %60 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %3, align 8
  %61 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = call i32 @refcount_dec(i32* %64)
  br label %84

66:                                               ; preds = %11
  %67 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %3, align 8
  %68 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @mlx5dr_icm_free_chunk(i32 %70)
  %72 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %3, align 8
  %73 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %74, align 8
  %76 = call i32 @kfree(%struct.mlx5dr_action* %75)
  %77 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %3, align 8
  %78 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = call i32 @refcount_dec(i32* %81)
  br label %84

83:                                               ; preds = %11
  br label %84

84:                                               ; preds = %83, %66, %48, %36, %29, %28
  %85 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %3, align 8
  %86 = call i32 @kfree(%struct.mlx5dr_action* %85)
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %84, %8
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @refcount_dec(i32*) #1

declare dso_local i32 @mlx5dr_icm_free_chunk(i32) #1

declare dso_local i32 @mlx5dr_cmd_destroy_reformat_ctx(i32, i32) #1

declare dso_local i32 @kfree(%struct.mlx5dr_action*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
