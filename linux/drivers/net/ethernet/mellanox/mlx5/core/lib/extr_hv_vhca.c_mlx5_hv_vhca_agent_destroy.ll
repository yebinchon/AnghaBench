; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_hv_vhca.c_mlx5_hv_vhca_agent_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_hv_vhca.c_mlx5_hv_vhca_agent_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_hv_vhca_agent = type { i64, i32 (%struct.mlx5_hv_vhca_agent*)*, %struct.mlx5_hv_vhca* }
%struct.mlx5_hv_vhca = type { i32, %struct.mlx5_hv_vhca_agent** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_hv_vhca_agent_destroy(%struct.mlx5_hv_vhca_agent* %0) #0 {
  %2 = alloca %struct.mlx5_hv_vhca_agent*, align 8
  %3 = alloca %struct.mlx5_hv_vhca*, align 8
  store %struct.mlx5_hv_vhca_agent* %0, %struct.mlx5_hv_vhca_agent** %2, align 8
  %4 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5_hv_vhca_agent, %struct.mlx5_hv_vhca_agent* %4, i32 0, i32 2
  %6 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %5, align 8
  store %struct.mlx5_hv_vhca* %6, %struct.mlx5_hv_vhca** %3, align 8
  %7 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_hv_vhca, %struct.mlx5_hv_vhca* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %2, align 8
  %11 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5_hv_vhca, %struct.mlx5_hv_vhca* %11, i32 0, i32 1
  %13 = load %struct.mlx5_hv_vhca_agent**, %struct.mlx5_hv_vhca_agent*** %12, align 8
  %14 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %2, align 8
  %15 = getelementptr inbounds %struct.mlx5_hv_vhca_agent, %struct.mlx5_hv_vhca_agent* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %13, i64 %16
  %18 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %17, align 8
  %19 = icmp ne %struct.mlx5_hv_vhca_agent* %10, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %3, align 8
  %25 = getelementptr inbounds %struct.mlx5_hv_vhca, %struct.mlx5_hv_vhca* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  br label %53

27:                                               ; preds = %1
  %28 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %3, align 8
  %29 = getelementptr inbounds %struct.mlx5_hv_vhca, %struct.mlx5_hv_vhca* %28, i32 0, i32 1
  %30 = load %struct.mlx5_hv_vhca_agent**, %struct.mlx5_hv_vhca_agent*** %29, align 8
  %31 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %2, align 8
  %32 = getelementptr inbounds %struct.mlx5_hv_vhca_agent, %struct.mlx5_hv_vhca_agent* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %30, i64 %33
  store %struct.mlx5_hv_vhca_agent* null, %struct.mlx5_hv_vhca_agent** %34, align 8
  %35 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %3, align 8
  %36 = getelementptr inbounds %struct.mlx5_hv_vhca, %struct.mlx5_hv_vhca* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %2, align 8
  %39 = getelementptr inbounds %struct.mlx5_hv_vhca_agent, %struct.mlx5_hv_vhca_agent* %38, i32 0, i32 1
  %40 = load i32 (%struct.mlx5_hv_vhca_agent*)*, i32 (%struct.mlx5_hv_vhca_agent*)** %39, align 8
  %41 = icmp ne i32 (%struct.mlx5_hv_vhca_agent*)* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %27
  %43 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %2, align 8
  %44 = getelementptr inbounds %struct.mlx5_hv_vhca_agent, %struct.mlx5_hv_vhca_agent* %43, i32 0, i32 1
  %45 = load i32 (%struct.mlx5_hv_vhca_agent*)*, i32 (%struct.mlx5_hv_vhca_agent*)** %44, align 8
  %46 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %2, align 8
  %47 = call i32 %45(%struct.mlx5_hv_vhca_agent* %46)
  br label %48

48:                                               ; preds = %42, %27
  %49 = load %struct.mlx5_hv_vhca_agent*, %struct.mlx5_hv_vhca_agent** %2, align 8
  %50 = call i32 @kfree(%struct.mlx5_hv_vhca_agent* %49)
  %51 = load %struct.mlx5_hv_vhca*, %struct.mlx5_hv_vhca** %3, align 8
  %52 = call i32 @mlx5_hv_vhca_agents_update(%struct.mlx5_hv_vhca* %51)
  br label %53

53:                                               ; preds = %48, %23
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.mlx5_hv_vhca_agent*) #1

declare dso_local i32 @mlx5_hv_vhca_agents_update(%struct.mlx5_hv_vhca*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
