; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_add_sqs_fwd_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_add_sqs_fwd_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, %struct.TYPE_9__, %struct.mlx5e_rep_priv*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32, %struct.mlx5e_channel**, %struct.TYPE_8__ }
%struct.mlx5e_channel = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.mlx5e_rep_priv = type { %struct.mlx5_eswitch_rep* }
%struct.mlx5_eswitch_rep = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.mlx5_eswitch* }
%struct.mlx5_eswitch = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to add SQs FWD rules %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_add_sqs_fwd_rules(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  %3 = alloca %struct.mlx5_eswitch*, align 8
  %4 = alloca %struct.mlx5e_rep_priv*, align 8
  %5 = alloca %struct.mlx5_eswitch_rep*, align 8
  %6 = alloca %struct.mlx5e_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %13 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %12, i32 0, i32 3
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %16, align 8
  store %struct.mlx5_eswitch* %17, %struct.mlx5_eswitch** %3, align 8
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %19 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %18, i32 0, i32 2
  %20 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %19, align 8
  store %struct.mlx5e_rep_priv* %20, %struct.mlx5e_rep_priv** %4, align 8
  %21 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %21, i32 0, i32 0
  %23 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %22, align 8
  store %struct.mlx5_eswitch_rep* %23, %struct.mlx5_eswitch_rep** %5, align 8
  store i32 0, i32* %9, align 4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %10, align 4
  %26 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %27 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %31 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %29, %34
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32* @kcalloc(i32 %35, i32 4, i32 %36)
  store i32* %37, i32** %11, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %1
  br label %93

41:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %82, %41
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %45 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %85

49:                                               ; preds = %42
  %50 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %51 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load %struct.mlx5e_channel**, %struct.mlx5e_channel*** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.mlx5e_channel*, %struct.mlx5e_channel** %53, i64 %55
  %57 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %56, align 8
  store %struct.mlx5e_channel* %57, %struct.mlx5e_channel** %6, align 8
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %78, %49
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %6, align 8
  %61 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %58
  %65 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %6, align 8
  %66 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %65, i32 0, i32 1
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 %72, i32* %77, align 4
  br label %78

78:                                               ; preds = %64
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %58

81:                                               ; preds = %58
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %42

85:                                               ; preds = %42
  %86 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %87 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %5, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @mlx5e_sqs2vport_start(%struct.mlx5_eswitch* %86, %struct.mlx5_eswitch_rep* %87, i32* %88, i32 %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = call i32 @kfree(i32* %91)
  br label %93

93:                                               ; preds = %85, %40
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %98 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @netdev_warn(i32 %99, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %96, %93
  %103 = load i32, i32* %10, align 4
  ret i32 %103
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @mlx5e_sqs2vport_start(%struct.mlx5_eswitch*, %struct.mlx5_eswitch_rep*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
