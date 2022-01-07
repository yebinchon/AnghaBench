; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_mlx5dr_action_create_push_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_mlx5dr_action_create_push_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_action = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5dr_domain = type { i32 }

@SVLAN_ETHERTYPE = common dso_local global i64 0, align 8
@CVLAN_ETHERTYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Invalid vlan ethertype\0A\00", align 1
@DR_ACTION_TYP_PUSH_VLAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5dr_action* @mlx5dr_action_create_push_vlan(%struct.mlx5dr_domain* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5dr_action*, align 8
  %4 = alloca %struct.mlx5dr_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.mlx5dr_action*, align 8
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @ntohl(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = ashr i32 %11, 16
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @SVLAN_ETHERTYPE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @CVLAN_ETHERTYPE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %23 = call i32 @mlx5dr_dbg(%struct.mlx5dr_domain* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store %struct.mlx5dr_action* null, %struct.mlx5dr_action** %3, align 8
  br label %36

24:                                               ; preds = %17, %2
  %25 = load i32, i32* @DR_ACTION_TYP_PUSH_VLAN, align 4
  %26 = call %struct.mlx5dr_action* @dr_action_create_generic(i32 %25)
  store %struct.mlx5dr_action* %26, %struct.mlx5dr_action** %8, align 8
  %27 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %8, align 8
  %28 = icmp ne %struct.mlx5dr_action* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store %struct.mlx5dr_action* null, %struct.mlx5dr_action** %3, align 8
  br label %36

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %8, align 8
  %33 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %8, align 8
  store %struct.mlx5dr_action* %35, %struct.mlx5dr_action** %3, align 8
  br label %36

36:                                               ; preds = %30, %29, %21
  %37 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %3, align 8
  ret %struct.mlx5dr_action* %37
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @mlx5dr_dbg(%struct.mlx5dr_domain*, i8*) #1

declare dso_local %struct.mlx5dr_action* @dr_action_create_generic(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
