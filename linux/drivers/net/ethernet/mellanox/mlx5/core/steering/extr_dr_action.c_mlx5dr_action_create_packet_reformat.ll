; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_mlx5dr_action_create_packet_reformat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_mlx5dr_action_create_packet_reformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_action = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5dr_domain* }
%struct.mlx5dr_domain = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Invalid reformat_type provided\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed creating reformat action %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5dr_action* @mlx5dr_action_create_packet_reformat(%struct.mlx5dr_domain* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.mlx5dr_action*, align 8
  %6 = alloca %struct.mlx5dr_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx5dr_action*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %14 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %13, i32 0, i32 0
  %15 = call i32 @refcount_inc(i32* %14)
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @dr_action_reformat_to_action_type(i32 %16, i32* %10)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %22 = call i32 (%struct.mlx5dr_domain*, i8*, ...) @mlx5dr_dbg(%struct.mlx5dr_domain* %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %59

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @dr_action_verify_reformat_params(i32 %24, %struct.mlx5dr_domain* %25, i64 %26, i8* %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %59

32:                                               ; preds = %23
  %33 = load i32, i32* %10, align 4
  %34 = call %struct.mlx5dr_action* @dr_action_create_generic(i32 %33)
  store %struct.mlx5dr_action* %34, %struct.mlx5dr_action** %11, align 8
  %35 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %11, align 8
  %36 = icmp ne %struct.mlx5dr_action* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %59

38:                                               ; preds = %32
  %39 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %40 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %11, align 8
  %41 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store %struct.mlx5dr_domain* %39, %struct.mlx5dr_domain** %42, align 8
  %43 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %11, align 8
  %47 = call i32 @dr_action_create_reformat_action(%struct.mlx5dr_domain* %43, i64 %44, i8* %45, %struct.mlx5dr_action* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %38
  %51 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 (%struct.mlx5dr_domain*, i8*, ...) @mlx5dr_dbg(%struct.mlx5dr_domain* %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %56

54:                                               ; preds = %38
  %55 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %11, align 8
  store %struct.mlx5dr_action* %55, %struct.mlx5dr_action** %5, align 8
  br label %63

56:                                               ; preds = %50
  %57 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %11, align 8
  %58 = call i32 @kfree(%struct.mlx5dr_action* %57)
  br label %59

59:                                               ; preds = %56, %37, %31, %20
  %60 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %61 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %60, i32 0, i32 0
  %62 = call i32 @refcount_dec(i32* %61)
  store %struct.mlx5dr_action* null, %struct.mlx5dr_action** %5, align 8
  br label %63

63:                                               ; preds = %59, %54
  %64 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %5, align 8
  ret %struct.mlx5dr_action* %64
}

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @dr_action_reformat_to_action_type(i32, i32*) #1

declare dso_local i32 @mlx5dr_dbg(%struct.mlx5dr_domain*, i8*, ...) #1

declare dso_local i32 @dr_action_verify_reformat_params(i32, %struct.mlx5dr_domain*, i64, i8*) #1

declare dso_local %struct.mlx5dr_action* @dr_action_create_generic(i32) #1

declare dso_local i32 @dr_action_create_reformat_action(%struct.mlx5dr_domain*, i64, i8*, %struct.mlx5dr_action*) #1

declare dso_local i32 @kfree(%struct.mlx5dr_action*) #1

declare dso_local i32 @refcount_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
