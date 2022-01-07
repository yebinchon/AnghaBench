; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_vlan_free_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_vlan_free_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlx4_slave_state* }
%struct.mlx4_slave_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, i32, i32, i32*, i32)* @vlan_free_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_free_res(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.mlx4_priv*, align 8
  %17 = alloca %struct.mlx4_slave_state*, align 8
  %18 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %20 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %19)
  store %struct.mlx4_priv* %20, %struct.mlx4_priv** %16, align 8
  %21 = load %struct.mlx4_priv*, %struct.mlx4_priv** %16, align 8
  %22 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.mlx4_slave_state*, %struct.mlx4_slave_state** %24, align 8
  store %struct.mlx4_slave_state* %25, %struct.mlx4_slave_state** %17, align 8
  store i32 0, i32* %18, align 4
  %26 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %15, align 4
  %29 = call i32 @mlx4_slave_convert_port(%struct.mlx4_dev* %26, i32 %27, i32 %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %7
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %67

35:                                               ; preds = %7
  %36 = load i32, i32* %11, align 4
  switch i32 %36, label %62 [
    i32 128, label %37
  ]

37:                                               ; preds = %35
  %38 = load %struct.mlx4_slave_state*, %struct.mlx4_slave_state** %17, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.mlx4_slave_state, %struct.mlx4_slave_state* %38, i64 %40
  %42 = getelementptr inbounds %struct.mlx4_slave_state, %struct.mlx4_slave_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %67

46:                                               ; preds = %37
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %67

52:                                               ; preds = %46
  %53 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @vlan_del_from_slave(%struct.mlx4_dev* %53, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @__mlx4_unregister_vlan(%struct.mlx4_dev* %58, i32 %59, i32 %60)
  br label %65

62:                                               ; preds = %35
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %18, align 4
  br label %65

65:                                               ; preds = %62, %52
  %66 = load i32, i32* %18, align 4
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %65, %49, %45, %32
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_slave_convert_port(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @vlan_del_from_slave(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @__mlx4_unregister_vlan(%struct.mlx4_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
