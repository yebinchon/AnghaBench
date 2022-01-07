; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_mlx5_eswitch_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_mlx5_eswitch_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MLX5_ESWITCH_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Disable: mode(%s), nvfs(%d), active vports(%d)\0A\00", align 1
@MLX5_ESWITCH_LEGACY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"LEGACY\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"OFFLOADS\00", align 1
@MLX5_ESWITCH_OFFLOADS = common dso_local global i32 0, align 4
@MLX5_INTERFACE_PROTOCOL_IB = common dso_local global i32 0, align 4
@MLX5_INTERFACE_PROTOCOL_ETH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_eswitch_disable(%struct.mlx5_eswitch* %0) #0 {
  %2 = alloca %struct.mlx5_eswitch*, align 8
  %3 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %2, align 8
  %4 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %5 = call i32 @ESW_ALLOWED(%struct.mlx5_eswitch* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MLX5_ESWITCH_NONE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7, %1
  br label %82

14:                                               ; preds = %7
  %15 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %16 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %19 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MLX5_ESWITCH_LEGACY, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %25 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %26 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %30 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @esw_info(i32 %17, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %28, i32 %31)
  %33 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %34 = call i32 @mlx5_eswitch_event_handlers_unregister(%struct.mlx5_eswitch* %33)
  %35 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %36 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MLX5_ESWITCH_LEGACY, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %14
  %41 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %42 = call i32 @esw_legacy_disable(%struct.mlx5_eswitch* %41)
  br label %54

43:                                               ; preds = %14
  %44 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %45 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @MLX5_ESWITCH_OFFLOADS, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp eq i64 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %52 = call i32 @esw_offloads_disable(%struct.mlx5_eswitch* %51)
  br label %53

53:                                               ; preds = %50, %43
  br label %54

54:                                               ; preds = %53, %40
  %55 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %56 = call i32 @esw_destroy_tsar(%struct.mlx5_eswitch* %55)
  %57 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %58 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %3, align 4
  %61 = load i64, i64* @MLX5_ESWITCH_NONE, align 8
  %62 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %63 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %65 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @mlx5_lag_update(i32 %66)
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @MLX5_ESWITCH_OFFLOADS, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %54
  %72 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %73 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @MLX5_INTERFACE_PROTOCOL_IB, align 4
  %76 = call i32 @mlx5_reload_interface(i32 %74, i32 %75)
  %77 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %2, align 8
  %78 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @MLX5_INTERFACE_PROTOCOL_ETH, align 4
  %81 = call i32 @mlx5_reload_interface(i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %13, %71, %54
  ret void
}

declare dso_local i32 @ESW_ALLOWED(%struct.mlx5_eswitch*) #1

declare dso_local i32 @esw_info(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_eswitch_event_handlers_unregister(%struct.mlx5_eswitch*) #1

declare dso_local i32 @esw_legacy_disable(%struct.mlx5_eswitch*) #1

declare dso_local i32 @esw_offloads_disable(%struct.mlx5_eswitch*) #1

declare dso_local i32 @esw_destroy_tsar(%struct.mlx5_eswitch*) #1

declare dso_local i32 @mlx5_lag_update(i32) #1

declare dso_local i32 @mlx5_reload_interface(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
