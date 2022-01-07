; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_hv_vhca.c_mlx5_hv_vhca_agents_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_hv_vhca.c_mlx5_hv_vhca_agents_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_hv_vhca = type { %struct.mlx5_hv_vhca_agent** }
%struct.mlx5_hv_vhca_agent = type { i32 (%struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_control_block*)*, i32 }
%struct.mlx5_hv_vhca_control_block = type { i32 }

@MLX5_HV_VHCA_AGENT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca_control_block*)* @mlx5_hv_vhca_agents_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_hv_vhca_agents_control(%struct.mlx5_hv_vhca* %0, %struct.mlx5_hv_vhca_control_block* %1) #0 {
  %3 = alloca %struct.mlx5_hv_vhca*, align 8
  %4 = alloca %struct.mlx5_hv_vhca_control_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_hv_vhca_agent*, align 8
  store %struct.mlx5_hv_vhca* %0, %struct.mlx5_hv_vhca** %3, align 8
  store %struct.mlx5_hv_vhca_control_block* %1, %struct.mlx5_hv_vhca_control_block** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %45, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @MLX5_HV_VHCA_AGENT_MAX, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %48

11:                                               ; preds = %7
  %12 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5_hv_vhca, %struct.mlx5_hv_vhca* %12, i32 0, i32 0
  %14 = load %struct.mlx5_hv_vhca_agent**, %struct.mlx5_hv_vhca_agent*** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %14, i64 %16
  %18 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %17, align 8
  store %struct.mlx5_hv_vhca_agent* %18, %struct.mlx5_hv_vhca_agent** %6, align 8
  %19 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %6, align 8
  %20 = icmp ne %struct.mlx5_hv_vhca_agent* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %11
  %22 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %6, align 8
  %23 = getelementptr inbounds %struct.mlx5_hv_vhca_agent, %struct.mlx5_hv_vhca_agent* %22, i32 0, i32 0
  %24 = load i32 (%struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_control_block*)*, i32 (%struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_control_block*)** %23, align 8
  %25 = icmp ne i32 (%struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_control_block*)* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %11
  br label %45

27:                                               ; preds = %21
  %28 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %6, align 8
  %29 = getelementptr inbounds %struct.mlx5_hv_vhca_agent, %struct.mlx5_hv_vhca_agent* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @AGENT_MASK(i32 %30)
  %32 = load %struct.mlx5_hv_vhca_control_block*, %struct.mlx5_hv_vhca_control_block** %4, align 8
  %33 = getelementptr inbounds %struct.mlx5_hv_vhca_control_block, %struct.mlx5_hv_vhca_control_block* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  br label %45

38:                                               ; preds = %27
  %39 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %6, align 8
  %40 = getelementptr inbounds %struct.mlx5_hv_vhca_agent, %struct.mlx5_hv_vhca_agent* %39, i32 0, i32 0
  %41 = load i32 (%struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_control_block*)*, i32 (%struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_control_block*)** %40, align 8
  %42 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %6, align 8
  %43 = load %struct.mlx5_hv_vhca_control_block*, %struct.mlx5_hv_vhca_control_block** %4, align 8
  %44 = call i32 %41(%struct.mlx5_hv_vhca_agent* %42, %struct.mlx5_hv_vhca_control_block* %43)
  br label %45

45:                                               ; preds = %38, %37, %26
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %7

48:                                               ; preds = %7
  ret void
}

declare dso_local i32 @AGENT_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
