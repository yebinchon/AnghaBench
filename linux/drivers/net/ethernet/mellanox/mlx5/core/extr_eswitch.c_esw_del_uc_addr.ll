; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_del_uc_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_del_uc_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i64, i32 }
%struct.vport_addr = type { i64, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [56 x i8] c"Failed to del L2 table mac(%pM) for vport(%d), err(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_eswitch*, %struct.vport_addr*)* @esw_del_uc_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esw_del_uc_addr(%struct.mlx5_eswitch* %0, %struct.vport_addr* %1) #0 {
  %3 = alloca %struct.mlx5_eswitch*, align 8
  %4 = alloca %struct.vport_addr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %3, align 8
  store %struct.vport_addr* %1, %struct.vport_addr** %4, align 8
  %8 = load %struct.vport_addr*, %struct.vport_addr** %4, align 8
  %9 = getelementptr inbounds %struct.vport_addr, %struct.vport_addr* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = load %struct.vport_addr*, %struct.vport_addr** %4, align 8
  %13 = getelementptr inbounds %struct.vport_addr, %struct.vport_addr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.vport_addr*, %struct.vport_addr** %4, align 8
  %16 = getelementptr inbounds %struct.vport_addr, %struct.vport_addr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %21 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %2
  br label %45

26:                                               ; preds = %19
  %27 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %28 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @mlx5_mpfs_del_mac(i32 %29, i32* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %36 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @esw_warn(i32 %37, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32* %38, i64 %39, i32 %40)
  br label %42

42:                                               ; preds = %34, %26
  %43 = load %struct.vport_addr*, %struct.vport_addr** %4, align 8
  %44 = getelementptr inbounds %struct.vport_addr, %struct.vport_addr* %43, i32 0, i32 1
  store i32 0, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %25
  %46 = load %struct.vport_addr*, %struct.vport_addr** %4, align 8
  %47 = getelementptr inbounds %struct.vport_addr, %struct.vport_addr* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.vport_addr*, %struct.vport_addr** %4, align 8
  %52 = getelementptr inbounds %struct.vport_addr, %struct.vport_addr* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @mlx5_del_flow_rules(i32* %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.vport_addr*, %struct.vport_addr** %4, align 8
  %57 = getelementptr inbounds %struct.vport_addr, %struct.vport_addr* %56, i32 0, i32 2
  store i32* null, i32** %57, align 8
  ret i32 0
}

declare dso_local i32 @mlx5_mpfs_del_mac(i32, i32*) #1

declare dso_local i32 @esw_warn(i32, i8*, i32*, i64, i32) #1

declare dso_local i32 @mlx5_del_flow_rules(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
