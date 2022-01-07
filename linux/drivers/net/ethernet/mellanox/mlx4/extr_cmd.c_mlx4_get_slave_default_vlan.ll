; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_get_slave_default_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_get_slave_default_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vport_oper_state = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.mlx4_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.mlx4_vport_oper_state* }

@MLX4_VGT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_get_slave_default_vlan(%struct.mlx4_dev* %0, i32 %1, i32 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mlx4_vport_oper_state*, align 8
  %13 = alloca %struct.mlx4_priv*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %15 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %14)
  store %struct.mlx4_priv* %15, %struct.mlx4_priv** %13, align 8
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @mlx4_slaves_closest_port(%struct.mlx4_dev* %16, i32 %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.mlx4_priv*, %struct.mlx4_priv** %13, align 8
  %21 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %29, i64 %31
  store %struct.mlx4_vport_oper_state* %32, %struct.mlx4_vport_oper_state** %12, align 8
  %33 = load i64, i64* @MLX4_VGT, align 8
  %34 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %12, align 8
  %35 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %33, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %5
  %40 = load i64*, i64** %10, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %12, align 8
  %44 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %10, align 8
  store i64 %46, i64* %47, align 8
  br label %48

48:                                               ; preds = %42, %39
  %49 = load i32*, i32** %11, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %12, align 8
  %53 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %11, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %51, %48
  store i32 1, i32* %6, align 4
  br label %59

58:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %58, %57
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_slaves_closest_port(%struct.mlx4_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
