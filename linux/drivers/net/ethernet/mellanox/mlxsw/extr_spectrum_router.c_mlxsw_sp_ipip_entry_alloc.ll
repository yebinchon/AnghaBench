; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_ipip_entry_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_ipip_entry_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_ipip_entry = type { i32, i32, %struct.net_device*, i32 }
%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_ipip_ops** }
%struct.mlxsw_sp_ipip_ops = type { i32 }
%struct.net_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_ipip_entry* (%struct.mlxsw_sp*, i32, %struct.net_device*)* @mlxsw_sp_ipip_entry_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_ipip_entry* @mlxsw_sp_ipip_entry_alloc(%struct.mlxsw_sp* %0, i32 %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.mlxsw_sp_ipip_entry*, align 8
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.mlxsw_sp_ipip_ops*, align 8
  %9 = alloca %struct.mlxsw_sp_ipip_entry*, align 8
  %10 = alloca %struct.mlxsw_sp_ipip_entry*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  store %struct.mlxsw_sp_ipip_entry* null, %struct.mlxsw_sp_ipip_entry** %10, align 8
  %11 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.mlxsw_sp_ipip_ops**, %struct.mlxsw_sp_ipip_ops*** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mlxsw_sp_ipip_ops*, %struct.mlxsw_sp_ipip_ops** %15, i64 %17
  %19 = load %struct.mlxsw_sp_ipip_ops*, %struct.mlxsw_sp_ipip_ops** %18, align 8
  store %struct.mlxsw_sp_ipip_ops* %19, %struct.mlxsw_sp_ipip_ops** %8, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.mlxsw_sp_ipip_entry* @kzalloc(i32 24, i32 %20)
  store %struct.mlxsw_sp_ipip_entry* %21, %struct.mlxsw_sp_ipip_entry** %9, align 8
  %22 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %9, align 8
  %23 = icmp ne %struct.mlxsw_sp_ipip_entry* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.mlxsw_sp_ipip_entry* @ERR_PTR(i32 %26)
  store %struct.mlxsw_sp_ipip_entry* %27, %struct.mlxsw_sp_ipip_entry** %4, align 8
  br label %68

28:                                               ; preds = %3
  %29 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.net_device*, %struct.net_device** %7, align 8
  %32 = call i32 @mlxsw_sp_ipip_ol_ipip_lb_create(%struct.mlxsw_sp* %29, i32 %30, %struct.net_device* %31, i32* null)
  %33 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %9, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %9, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %28
  %41 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %9, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.mlxsw_sp_ipip_entry* @ERR_CAST(i32 %43)
  store %struct.mlxsw_sp_ipip_entry* %44, %struct.mlxsw_sp_ipip_entry** %10, align 8
  br label %64

45:                                               ; preds = %28
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %9, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.net_device*, %struct.net_device** %7, align 8
  %50 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %9, align 8
  %51 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %50, i32 0, i32 2
  store %struct.net_device* %49, %struct.net_device** %51, align 8
  %52 = load %struct.mlxsw_sp_ipip_ops*, %struct.mlxsw_sp_ipip_ops** %8, align 8
  %53 = getelementptr inbounds %struct.mlxsw_sp_ipip_ops, %struct.mlxsw_sp_ipip_ops* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %62 [
    i32 129, label %55
    i32 128, label %60
  ]

55:                                               ; preds = %45
  %56 = load %struct.net_device*, %struct.net_device** %7, align 8
  %57 = call i32 @mlxsw_sp_ipip_netdev_parms4(%struct.net_device* %56)
  %58 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %9, align 8
  %59 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %62

60:                                               ; preds = %45
  %61 = call i32 @WARN_ON(i32 1)
  br label %62

62:                                               ; preds = %45, %60, %55
  %63 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %9, align 8
  store %struct.mlxsw_sp_ipip_entry* %63, %struct.mlxsw_sp_ipip_entry** %4, align 8
  br label %68

64:                                               ; preds = %40
  %65 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %9, align 8
  %66 = call i32 @kfree(%struct.mlxsw_sp_ipip_entry* %65)
  %67 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %10, align 8
  store %struct.mlxsw_sp_ipip_entry* %67, %struct.mlxsw_sp_ipip_entry** %4, align 8
  br label %68

68:                                               ; preds = %64, %62, %24
  %69 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %4, align 8
  ret %struct.mlxsw_sp_ipip_entry* %69
}

declare dso_local %struct.mlxsw_sp_ipip_entry* @kzalloc(i32, i32) #1

declare dso_local %struct.mlxsw_sp_ipip_entry* @ERR_PTR(i32) #1

declare dso_local i32 @mlxsw_sp_ipip_ol_ipip_lb_create(%struct.mlxsw_sp*, i32, %struct.net_device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local %struct.mlxsw_sp_ipip_entry* @ERR_CAST(i32) #1

declare dso_local i32 @mlxsw_sp_ipip_netdev_parms4(%struct.net_device*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_ipip_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
