; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_mlx5_eswitch_set_vport_spoofchk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_mlx5_eswitch_set_vport_spoofchk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i64, i32, i32 }
%struct.mlx5_vport = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Spoofchk in set while MAC is invalid, vport(%d)\0A\00", align 1
@MLX5_ESWITCH_LEGACY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_eswitch_set_vport_spoofchk(%struct.mlx5_eswitch* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_eswitch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_vport*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.mlx5_vport* @mlx5_eswitch_get_vport(%struct.mlx5_eswitch* %11, i32 %12)
  store %struct.mlx5_vport* %13, %struct.mlx5_vport** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %15 = call i32 @ESW_ALLOWED(%struct.mlx5_eswitch* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EPERM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %84

20:                                               ; preds = %3
  %21 = load %struct.mlx5_vport*, %struct.mlx5_vport** %8, align 8
  %22 = call i64 @IS_ERR(%struct.mlx5_vport* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.mlx5_vport*, %struct.mlx5_vport** %8, align 8
  %26 = call i32 @PTR_ERR(%struct.mlx5_vport* %25)
  store i32 %26, i32* %4, align 4
  br label %84

27:                                               ; preds = %20
  %28 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %29 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.mlx5_vport*, %struct.mlx5_vport** %8, align 8
  %32 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.mlx5_vport*, %struct.mlx5_vport** %8, align 8
  %37 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %27
  %42 = load %struct.mlx5_vport*, %struct.mlx5_vport** %8, align 8
  %43 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @is_valid_ether_addr(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %41
  %49 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %50 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mlx5_vport*, %struct.mlx5_vport** %8, align 8
  %53 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @mlx5_core_warn(i32 %51, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %48, %41, %27
  %57 = load %struct.mlx5_vport*, %struct.mlx5_vport** %8, align 8
  %58 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %63 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MLX5_ESWITCH_LEGACY, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %69 = load %struct.mlx5_vport*, %struct.mlx5_vport** %8, align 8
  %70 = call i32 @esw_vport_ingress_config(%struct.mlx5_eswitch* %68, %struct.mlx5_vport* %69)
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %67, %61, %56
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.mlx5_vport*, %struct.mlx5_vport** %8, align 8
  %77 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  br label %79

79:                                               ; preds = %74, %71
  %80 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %81 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %80, i32 0, i32 1
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %79, %24, %17
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.mlx5_vport* @mlx5_eswitch_get_vport(%struct.mlx5_eswitch*, i32) #1

declare dso_local i32 @ESW_ALLOWED(%struct.mlx5_eswitch*) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_vport*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_vport*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @mlx5_core_warn(i32, i8*, i32) #1

declare dso_local i32 @esw_vport_ingress_config(%struct.mlx5_eswitch*, %struct.mlx5_vport*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
