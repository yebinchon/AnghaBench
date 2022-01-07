; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_rif = type { i8*, i8*, %struct.net_device*, i32, i32, i32, i32 }
%struct.net_device = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_rif* (i64, i8*, i8*, %struct.net_device*)* @mlxsw_sp_rif_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_rif* @mlxsw_sp_rif_alloc(i64 %0, i8* %1, i8* %2, %struct.net_device* %3) #0 {
  %5 = alloca %struct.mlxsw_sp_rif*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.mlxsw_sp_rif*, align 8
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mlxsw_sp_rif* @kzalloc(i64 %11, i32 %12)
  store %struct.mlxsw_sp_rif* %13, %struct.mlxsw_sp_rif** %10, align 8
  %14 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %10, align 8
  %15 = icmp ne %struct.mlxsw_sp_rif* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store %struct.mlxsw_sp_rif* null, %struct.mlxsw_sp_rif** %5, align 8
  br label %50

17:                                               ; preds = %4
  %18 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %10, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %18, i32 0, i32 6
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %10, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %21, i32 0, i32 5
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.net_device*, %struct.net_device** %9, align 8
  %25 = icmp ne %struct.net_device* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %17
  %27 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %10, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.net_device*, %struct.net_device** %9, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ether_addr_copy(i32 %29, i32 %32)
  %34 = load %struct.net_device*, %struct.net_device** %9, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %10, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.net_device*, %struct.net_device** %9, align 8
  %40 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %10, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %40, i32 0, i32 2
  store %struct.net_device* %39, %struct.net_device** %41, align 8
  br label %42

42:                                               ; preds = %26, %17
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %10, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %10, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %10, align 8
  store %struct.mlxsw_sp_rif* %49, %struct.mlxsw_sp_rif** %5, align 8
  br label %50

50:                                               ; preds = %42, %16
  %51 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %5, align 8
  ret %struct.mlxsw_sp_rif* %51
}

declare dso_local %struct.mlxsw_sp_rif* @kzalloc(i64, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
