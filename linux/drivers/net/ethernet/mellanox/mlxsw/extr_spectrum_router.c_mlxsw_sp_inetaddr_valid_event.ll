; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_inetaddr_valid_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_inetaddr_valid_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.in_validator_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_rif = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_inetaddr_valid_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.in_validator_info*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.mlxsw_sp*, align 8
  %10 = alloca %struct.mlxsw_sp_rif*, align 8
  %11 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.in_validator_info*
  store %struct.in_validator_info* %13, %struct.in_validator_info** %7, align 8
  %14 = load %struct.in_validator_info*, %struct.in_validator_info** %7, align 8
  %15 = getelementptr inbounds %struct.in_validator_info, %struct.in_validator_info* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %8, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.net_device*, %struct.net_device** %8, align 8
  %20 = call %struct.mlxsw_sp* @mlxsw_sp_lower_get(%struct.net_device* %19)
  store %struct.mlxsw_sp* %20, %struct.mlxsw_sp** %9, align 8
  %21 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %22 = icmp ne %struct.mlxsw_sp* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %55

24:                                               ; preds = %3
  %25 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %26 = load %struct.net_device*, %struct.net_device** %8, align 8
  %27 = call %struct.mlxsw_sp_rif* @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp* %25, %struct.net_device* %26)
  store %struct.mlxsw_sp_rif* %27, %struct.mlxsw_sp_rif** %10, align 8
  %28 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %10, align 8
  %29 = load %struct.net_device*, %struct.net_device** %8, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @mlxsw_sp_rif_should_config(%struct.mlxsw_sp_rif* %28, %struct.net_device* %29, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %55

34:                                               ; preds = %24
  %35 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %36 = load %struct.net_device*, %struct.net_device** %8, align 8
  %37 = load %struct.net_device*, %struct.net_device** %8, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.in_validator_info*, %struct.in_validator_info** %7, align 8
  %41 = getelementptr inbounds %struct.in_validator_info, %struct.in_validator_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @mlxsw_sp_router_port_check_rif_addr(%struct.mlxsw_sp* %35, %struct.net_device* %36, i32 %39, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %55

47:                                               ; preds = %34
  %48 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %49 = load %struct.net_device*, %struct.net_device** %8, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.in_validator_info*, %struct.in_validator_info** %7, align 8
  %52 = getelementptr inbounds %struct.in_validator_info, %struct.in_validator_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @__mlxsw_sp_inetaddr_event(%struct.mlxsw_sp* %48, %struct.net_device* %49, i64 %50, i32 %53)
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %47, %46, %33, %23
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @notifier_from_errno(i32 %56)
  ret i32 %57
}

declare dso_local %struct.mlxsw_sp* @mlxsw_sp_lower_get(%struct.net_device*) #1

declare dso_local %struct.mlxsw_sp_rif* @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp*, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_rif_should_config(%struct.mlxsw_sp_rif*, %struct.net_device*, i64) #1

declare dso_local i32 @mlxsw_sp_router_port_check_rif_addr(%struct.mlxsw_sp*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @__mlxsw_sp_inetaddr_event(%struct.mlxsw_sp*, %struct.net_device*, i64, i32) #1

declare dso_local i32 @notifier_from_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
