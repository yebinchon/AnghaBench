; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_mlx5_eswitch_get_vport_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_mlx5_eswitch_get_vport_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i32 }
%struct.ifla_vf_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.mlx5_vport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_eswitch_get_vport_config(%struct.mlx5_eswitch* %0, i64 %1, %struct.ifla_vf_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_eswitch*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ifla_vf_info*, align 8
  %8 = alloca %struct.mlx5_vport*, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ifla_vf_info* %2, %struct.ifla_vf_info** %7, align 8
  %9 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call %struct.mlx5_vport* @mlx5_eswitch_get_vport(%struct.mlx5_eswitch* %9, i64 %10)
  store %struct.mlx5_vport* %11, %struct.mlx5_vport** %8, align 8
  %12 = load %struct.mlx5_vport*, %struct.mlx5_vport** %8, align 8
  %13 = call i64 @IS_ERR(%struct.mlx5_vport* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.mlx5_vport*, %struct.mlx5_vport** %8, align 8
  %17 = call i32 @PTR_ERR(%struct.mlx5_vport* %16)
  store i32 %17, i32* %4, align 4
  br label %81

18:                                               ; preds = %3
  %19 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %20 = call i32 @memset(%struct.ifla_vf_info* %19, i32 0, i32 40)
  %21 = load i64, i64* %6, align 8
  %22 = sub nsw i64 %21, 1
  %23 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %24 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %23, i32 0, i32 8
  store i64 %22, i64* %24, align 8
  %25 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %26 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %29 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mlx5_vport*, %struct.mlx5_vport** %8, align 8
  %32 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ether_addr_copy(i32 %30, i32 %34)
  %36 = load %struct.mlx5_vport*, %struct.mlx5_vport** %8, align 8
  %37 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %41 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load %struct.mlx5_vport*, %struct.mlx5_vport** %8, align 8
  %43 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %47 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load %struct.mlx5_vport*, %struct.mlx5_vport** %8, align 8
  %49 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %53 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.mlx5_vport*, %struct.mlx5_vport** %8, align 8
  %55 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %59 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.mlx5_vport*, %struct.mlx5_vport** %8, align 8
  %61 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %65 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.mlx5_vport*, %struct.mlx5_vport** %8, align 8
  %67 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %71 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.mlx5_vport*, %struct.mlx5_vport** %8, align 8
  %73 = getelementptr inbounds %struct.mlx5_vport, %struct.mlx5_vport* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %77 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %79 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %18, %15
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.mlx5_vport* @mlx5_eswitch_get_vport(%struct.mlx5_eswitch*, i64) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_vport*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_vport*) #1

declare dso_local i32 @memset(%struct.ifla_vf_info*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
