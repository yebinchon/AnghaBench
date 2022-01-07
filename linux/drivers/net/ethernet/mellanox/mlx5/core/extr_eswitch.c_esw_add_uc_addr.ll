; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_add_uc_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_esw_add_uc_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i64, i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.vport_addr = type { i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [58 x i8] c"Failed to add L2 table mac(%pM) for vport(0x%x), err(%d)\0A\00", align 1
@MLX5_ESWITCH_LEGACY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"\09ADDED UC MAC: vport[%d] %pM fr(%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_eswitch*, %struct.vport_addr*)* @esw_add_uc_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esw_add_uc_addr(%struct.mlx5_eswitch* %0, %struct.vport_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_eswitch*, align 8
  %5 = alloca %struct.vport_addr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %4, align 8
  store %struct.vport_addr* %1, %struct.vport_addr** %5, align 8
  %9 = load %struct.vport_addr*, %struct.vport_addr** %5, align 8
  %10 = getelementptr inbounds %struct.vport_addr, %struct.vport_addr* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load %struct.vport_addr*, %struct.vport_addr** %5, align 8
  %14 = getelementptr inbounds %struct.vport_addr, %struct.vport_addr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %42

22:                                               ; preds = %2
  %23 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %24 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @mlx5_mpfs_add_mac(i32 %25, i32* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %22
  %31 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %32 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @esw_warn(i32 %33, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32* %34, i64 %35, i32 %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %72

39:                                               ; preds = %22
  %40 = load %struct.vport_addr*, %struct.vport_addr** %5, align 8
  %41 = getelementptr inbounds %struct.vport_addr, %struct.vport_addr* %40, i32 0, i32 1
  store i32 1, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %21
  %43 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %44 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %42
  %50 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %51 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MLX5_ESWITCH_LEGACY, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @esw_fdb_set_vport_rule(%struct.mlx5_eswitch* %56, i32* %57, i64 %58)
  %60 = load %struct.vport_addr*, %struct.vport_addr** %5, align 8
  %61 = getelementptr inbounds %struct.vport_addr, %struct.vport_addr* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %55, %49, %42
  %63 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %64 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load %struct.vport_addr*, %struct.vport_addr** %5, align 8
  %69 = getelementptr inbounds %struct.vport_addr, %struct.vport_addr* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @esw_debug(i32 %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %66, i32* %67, i32 %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %62, %30
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @mlx5_mpfs_add_mac(i32, i32*) #1

declare dso_local i32 @esw_warn(i32, i8*, i32*, i64, i32) #1

declare dso_local i32 @esw_fdb_set_vport_rule(%struct.mlx5_eswitch*, i32*, i64) #1

declare dso_local i32 @esw_debug(i32, i8*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
