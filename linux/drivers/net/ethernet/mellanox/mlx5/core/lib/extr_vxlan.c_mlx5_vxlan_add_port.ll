; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_vxlan.c_mlx5_vxlan_add_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_vxlan.c_mlx5_vxlan_add_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_vxlan = type { i64, i32, i32, i32, i32 }
%struct.mlx5_vxlan_port = type { i32, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"UDP port (%d) not offloaded, max number of UDP ports (%d) are already offloaded\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_vxlan_add_port(%struct.mlx5_vxlan* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_vxlan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_vxlan_port*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_vxlan* %0, %struct.mlx5_vxlan** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @ENOSPC, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.mlx5_vxlan_port* @mlx5_vxlan_lookup_port(%struct.mlx5_vxlan* %10, i32 %11)
  store %struct.mlx5_vxlan_port* %12, %struct.mlx5_vxlan_port** %6, align 8
  %13 = load %struct.mlx5_vxlan_port*, %struct.mlx5_vxlan_port** %6, align 8
  %14 = icmp ne %struct.mlx5_vxlan_port* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.mlx5_vxlan_port*, %struct.mlx5_vxlan_port** %6, align 8
  %17 = getelementptr inbounds %struct.mlx5_vxlan_port, %struct.mlx5_vxlan_port* %16, i32 0, i32 1
  %18 = call i32 @refcount_inc(i32* %17)
  store i32 0, i32* %3, align 4
  br label %98

19:                                               ; preds = %2
  %20 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5_vxlan, %struct.mlx5_vxlan* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %4, align 8
  %24 = getelementptr inbounds %struct.mlx5_vxlan, %struct.mlx5_vxlan* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %4, align 8
  %27 = getelementptr inbounds %struct.mlx5_vxlan, %struct.mlx5_vxlan* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @mlx5_vxlan_max_udp_ports(i32 %28)
  %30 = icmp sge i64 %25, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %19
  %32 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %4, align 8
  %33 = getelementptr inbounds %struct.mlx5_vxlan, %struct.mlx5_vxlan* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %4, align 8
  %37 = getelementptr inbounds %struct.mlx5_vxlan, %struct.mlx5_vxlan* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @mlx5_vxlan_max_udp_ports(i32 %38)
  %40 = call i32 @mlx5_core_info(i32 %34, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %35, i64 %39)
  %41 = load i32, i32* @ENOSPC, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %93

43:                                               ; preds = %19
  %44 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %4, align 8
  %45 = getelementptr inbounds %struct.mlx5_vxlan, %struct.mlx5_vxlan* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @mlx5_vxlan_core_add_port_cmd(i32 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %93

52:                                               ; preds = %43
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.mlx5_vxlan_port* @kzalloc(i32 12, i32 %53)
  store %struct.mlx5_vxlan_port* %54, %struct.mlx5_vxlan_port** %6, align 8
  %55 = load %struct.mlx5_vxlan_port*, %struct.mlx5_vxlan_port** %6, align 8
  %56 = icmp ne %struct.mlx5_vxlan_port* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %87

60:                                               ; preds = %52
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.mlx5_vxlan_port*, %struct.mlx5_vxlan_port** %6, align 8
  %63 = getelementptr inbounds %struct.mlx5_vxlan_port, %struct.mlx5_vxlan_port* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.mlx5_vxlan_port*, %struct.mlx5_vxlan_port** %6, align 8
  %65 = getelementptr inbounds %struct.mlx5_vxlan_port, %struct.mlx5_vxlan_port* %64, i32 0, i32 1
  %66 = call i32 @refcount_set(i32* %65, i32 1)
  %67 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %4, align 8
  %68 = getelementptr inbounds %struct.mlx5_vxlan, %struct.mlx5_vxlan* %67, i32 0, i32 3
  %69 = call i32 @spin_lock_bh(i32* %68)
  %70 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %4, align 8
  %71 = getelementptr inbounds %struct.mlx5_vxlan, %struct.mlx5_vxlan* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mlx5_vxlan_port*, %struct.mlx5_vxlan_port** %6, align 8
  %74 = getelementptr inbounds %struct.mlx5_vxlan_port, %struct.mlx5_vxlan_port* %73, i32 0, i32 0
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @hash_add(i32 %72, i32* %74, i32 %75)
  %77 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %4, align 8
  %78 = getelementptr inbounds %struct.mlx5_vxlan, %struct.mlx5_vxlan* %77, i32 0, i32 3
  %79 = call i32 @spin_unlock_bh(i32* %78)
  %80 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %4, align 8
  %81 = getelementptr inbounds %struct.mlx5_vxlan, %struct.mlx5_vxlan* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %81, align 8
  %84 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %4, align 8
  %85 = getelementptr inbounds %struct.mlx5_vxlan, %struct.mlx5_vxlan* %84, i32 0, i32 1
  %86 = call i32 @mutex_unlock(i32* %85)
  store i32 0, i32* %3, align 4
  br label %98

87:                                               ; preds = %57
  %88 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %4, align 8
  %89 = getelementptr inbounds %struct.mlx5_vxlan, %struct.mlx5_vxlan* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @mlx5_vxlan_core_del_port_cmd(i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %87, %51, %31
  %94 = load %struct.mlx5_vxlan*, %struct.mlx5_vxlan** %4, align 8
  %95 = getelementptr inbounds %struct.mlx5_vxlan, %struct.mlx5_vxlan* %94, i32 0, i32 1
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %93, %60, %15
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.mlx5_vxlan_port* @mlx5_vxlan_lookup_port(%struct.mlx5_vxlan*, i32) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @mlx5_vxlan_max_udp_ports(i32) #1

declare dso_local i32 @mlx5_core_info(i32, i8*, i32, i64) #1

declare dso_local i32 @mlx5_vxlan_core_add_port_cmd(i32, i32) #1

declare dso_local %struct.mlx5_vxlan_port* @kzalloc(i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @hash_add(i32, i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlx5_vxlan_core_del_port_cmd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
