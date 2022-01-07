; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_device_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_device_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_bridge = type { i32, i32 }
%struct.mlxsw_sp_bridge_device = type { i32, i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_bridge*, %struct.mlxsw_sp_bridge_device*)* @mlxsw_sp_bridge_device_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_bridge_device_destroy(%struct.mlxsw_sp_bridge* %0, %struct.mlxsw_sp_bridge_device* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_bridge*, align 8
  %4 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  store %struct.mlxsw_sp_bridge* %0, %struct.mlxsw_sp_bridge** %3, align 8
  store %struct.mlxsw_sp_bridge_device* %1, %struct.mlxsw_sp_bridge_device** %4, align 8
  %5 = load %struct.mlxsw_sp_bridge*, %struct.mlxsw_sp_bridge** %3, align 8
  %6 = getelementptr inbounds %struct.mlxsw_sp_bridge, %struct.mlxsw_sp_bridge* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %4, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @mlxsw_sp_bridge_device_rifs_destroy(i32 %7, i32 %10)
  %12 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %4, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %12, i32 0, i32 3
  %14 = call i32 @list_del(i32* %13)
  %15 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %4, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.mlxsw_sp_bridge*, %struct.mlxsw_sp_bridge** %3, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_bridge, %struct.mlxsw_sp_bridge* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %19, %2
  %23 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %4, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %23, i32 0, i32 1
  %25 = call i32 @list_empty(i32* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %4, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_bridge_device, %struct.mlxsw_sp_bridge_device* %30, i32 0, i32 0
  %32 = call i32 @list_empty(i32* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %4, align 8
  %38 = call i32 @kfree(%struct.mlxsw_sp_bridge_device* %37)
  ret void
}

declare dso_local i32 @mlxsw_sp_bridge_device_rifs_destroy(i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_bridge_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
