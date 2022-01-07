; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_hv_vhca.c_mlx5_hv_vhca_control_agent_invalidate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_hv_vhca.c_mlx5_hv_vhca_control_agent_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_hv_vhca_agent = type { %struct.mlx5_hv_vhca* }
%struct.mlx5_hv_vhca = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_hv_vhca_control_block = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_hv_vhca_agent*, i32)* @mlx5_hv_vhca_control_agent_invalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_hv_vhca_control_agent_invalidate(%struct.mlx5_hv_vhca_agent* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_hv_vhca_agent*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_hv_vhca*, align 8
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca %struct.mlx5_hv_vhca_control_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5_hv_vhca_agent* %0, %struct.mlx5_hv_vhca_agent** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_hv_vhca_agent, %struct.mlx5_hv_vhca_agent* %10, i32 0, i32 0
  %12 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %11, align 8
  store %struct.mlx5_hv_vhca* %12, %struct.mlx5_hv_vhca** %5, align 8
  %13 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %5, align 8
  %14 = getelementptr inbounds %struct.mlx5_hv_vhca, %struct.mlx5_hv_vhca* %13, i32 0, i32 0
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %14, align 8
  store %struct.mlx5_core_dev* %15, %struct.mlx5_core_dev** %6, align 8
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.mlx5_hv_vhca_control_block* @kzalloc(i32 16, i32 %16)
  store %struct.mlx5_hv_vhca_control_block* %17, %struct.mlx5_hv_vhca_control_block** %7, align 8
  %18 = load %struct.mlx5_hv_vhca_control_block*, %struct.mlx5_hv_vhca_control_block** %7, align 8
  %19 = icmp ne %struct.mlx5_hv_vhca_control_block* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %71

21:                                               ; preds = %2
  %22 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %23 = load %struct.mlx5_hv_vhca_control_block*, %struct.mlx5_hv_vhca_control_block** %7, align 8
  %24 = call i32 @mlx5_hv_read_config(%struct.mlx5_core_dev* %22, %struct.mlx5_hv_vhca_control_block* %23, i32 16, i32 0)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %68

28:                                               ; preds = %21
  %29 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %5, align 8
  %30 = call i32 @mlx5_hv_vhca_capabilities(%struct.mlx5_hv_vhca* %29, i32* %8)
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load %struct.mlx5_hv_vhca_control_block*, %struct.mlx5_hv_vhca_control_block** %7, align 8
  %35 = call i32 @memset(%struct.mlx5_hv_vhca_control_block* %34, i32 0, i32 16)
  br label %64

36:                                               ; preds = %28
  %37 = load %struct.mlx5_hv_vhca_control_block*, %struct.mlx5_hv_vhca_control_block** %7, align 8
  %38 = getelementptr inbounds %struct.mlx5_hv_vhca_control_block, %struct.mlx5_hv_vhca_control_block* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.mlx5_hv_vhca_control_block*, %struct.mlx5_hv_vhca_control_block** %7, align 8
  %45 = getelementptr inbounds %struct.mlx5_hv_vhca_control_block, %struct.mlx5_hv_vhca_control_block* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %36
  %47 = load %struct.mlx5_hv_vhca_control_block*, %struct.mlx5_hv_vhca_control_block** %7, align 8
  %48 = getelementptr inbounds %struct.mlx5_hv_vhca_control_block, %struct.mlx5_hv_vhca_control_block* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %68

55:                                               ; preds = %46
  %56 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %5, align 8
  %57 = load %struct.mlx5_hv_vhca_control_block*, %struct.mlx5_hv_vhca_control_block** %7, align 8
  %58 = call i32 @mlx5_hv_vhca_agents_control(%struct.mlx5_hv_vhca* %56, %struct.mlx5_hv_vhca_control_block* %57)
  %59 = load %struct.mlx5_hv_vhca_control_block*, %struct.mlx5_hv_vhca_control_block** %7, align 8
  %60 = getelementptr inbounds %struct.mlx5_hv_vhca_control_block, %struct.mlx5_hv_vhca_control_block* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mlx5_hv_vhca_control_block*, %struct.mlx5_hv_vhca_control_block** %7, align 8
  %63 = getelementptr inbounds %struct.mlx5_hv_vhca_control_block, %struct.mlx5_hv_vhca_control_block* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %55, %33
  %65 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %66 = load %struct.mlx5_hv_vhca_control_block*, %struct.mlx5_hv_vhca_control_block** %7, align 8
  %67 = call i32 @mlx5_hv_write_config(%struct.mlx5_core_dev* %65, %struct.mlx5_hv_vhca_control_block* %66, i32 16, i32 0)
  br label %68

68:                                               ; preds = %64, %54, %27
  %69 = load %struct.mlx5_hv_vhca_control_block*, %struct.mlx5_hv_vhca_control_block** %7, align 8
  %70 = call i32 @kfree(%struct.mlx5_hv_vhca_control_block* %69)
  br label %71

71:                                               ; preds = %68, %20
  ret void
}

declare dso_local %struct.mlx5_hv_vhca_control_block* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx5_hv_read_config(%struct.mlx5_core_dev*, %struct.mlx5_hv_vhca_control_block*, i32, i32) #1

declare dso_local i32 @mlx5_hv_vhca_capabilities(%struct.mlx5_hv_vhca*, i32*) #1

declare dso_local i32 @memset(%struct.mlx5_hv_vhca_control_block*, i32, i32) #1

declare dso_local i32 @mlx5_hv_vhca_agents_control(%struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca_control_block*) #1

declare dso_local i32 @mlx5_hv_write_config(%struct.mlx5_core_dev*, %struct.mlx5_hv_vhca_control_block*, i32, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_hv_vhca_control_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
