; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_vlan_alloc_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_vlan_alloc_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mlx4_slave_state* }
%struct.mlx4_slave_state = type { i32 }

@RES_OP_RESERVE_AND_MAP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, i32, i64, i64*, i32)* @vlan_alloc_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_alloc_res(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i64 %4, i64* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.mlx4_priv*, align 8
  %17 = alloca %struct.mlx4_slave_state*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64* %5, i64** %14, align 8
  store i32 %6, i32* %15, align 4
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %23 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %22)
  store %struct.mlx4_priv* %23, %struct.mlx4_priv** %16, align 8
  %24 = load %struct.mlx4_priv*, %struct.mlx4_priv** %16, align 8
  %25 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.mlx4_slave_state*, %struct.mlx4_slave_state** %27, align 8
  store %struct.mlx4_slave_state* %28, %struct.mlx4_slave_state** %17, align 8
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %7
  %32 = load i64*, i64** %14, align 8
  %33 = call i32 @get_param_l(i64* %32)
  br label %36

34:                                               ; preds = %7
  %35 = load i32, i32* %15, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi i32 [ %33, %31 ], [ %35, %34 ]
  store i32 %37, i32* %21, align 4
  %38 = load i32, i32* %21, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @RES_OP_RESERVE_AND_MAP, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %36
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %104

47:                                               ; preds = %40
  %48 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %21, align 4
  %51 = call i32 @mlx4_slave_convert_port(%struct.mlx4_dev* %48, i32 %49, i32 %50)
  store i32 %51, i32* %21, align 4
  %52 = load i32, i32* %21, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  br label %104

57:                                               ; preds = %47
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %76, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %21, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = load i32, i32* %21, align 4
  %65 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %66 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp sle i32 %64, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load %struct.mlx4_slave_state*, %struct.mlx4_slave_state** %17, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.mlx4_slave_state, %struct.mlx4_slave_state* %71, i64 %73
  %75 = getelementptr inbounds %struct.mlx4_slave_state, %struct.mlx4_slave_state* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  store i32 0, i32* %8, align 4
  br label %104

76:                                               ; preds = %63, %60, %57
  %77 = load i64, i64* %13, align 8
  store i64 %77, i64* %19, align 8
  %78 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %79 = load i32, i32* %21, align 4
  %80 = load i64, i64* %19, align 8
  %81 = call i32 @__mlx4_register_vlan(%struct.mlx4_dev* %78, i32 %79, i64 %80, i32* %20)
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %18, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %102, label %84

84:                                               ; preds = %76
  %85 = load i64*, i64** %14, align 8
  %86 = load i32, i32* %20, align 4
  %87 = call i32 @set_param_l(i64* %85, i32 %86)
  %88 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i64, i64* %19, align 8
  %91 = load i32, i32* %21, align 4
  %92 = load i32, i32* %20, align 4
  %93 = call i32 @vlan_add_to_slave(%struct.mlx4_dev* %88, i32 %89, i64 %90, i32 %91, i32 %92)
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %18, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %84
  %97 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %98 = load i32, i32* %21, align 4
  %99 = load i64, i64* %19, align 8
  %100 = call i32 @__mlx4_unregister_vlan(%struct.mlx4_dev* %97, i32 %98, i64 %99)
  br label %101

101:                                              ; preds = %96, %84
  br label %102

102:                                              ; preds = %101, %76
  %103 = load i32, i32* %18, align 4
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %102, %70, %54, %44
  %105 = load i32, i32* %8, align 4
  ret i32 %105
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @get_param_l(i64*) #1

declare dso_local i32 @mlx4_slave_convert_port(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @__mlx4_register_vlan(%struct.mlx4_dev*, i32, i64, i32*) #1

declare dso_local i32 @set_param_l(i64*, i32) #1

declare dso_local i32 @vlan_add_to_slave(%struct.mlx4_dev*, i32, i64, i32, i32) #1

declare dso_local i32 @__mlx4_unregister_vlan(%struct.mlx4_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
