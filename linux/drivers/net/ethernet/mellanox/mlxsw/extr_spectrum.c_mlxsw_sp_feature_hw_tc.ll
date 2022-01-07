; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_feature_hw_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_feature_hw_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlxsw_sp_port = type { i32, i32, i32 }

@.str = private unnamed_addr constant [59 x i8] c"Active offloaded tc filters, can't turn hw_tc_offload off\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @mlxsw_sp_feature_hw_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_feature_hw_tc(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device* %7)
  store %struct.mlxsw_sp_port* %8, %struct.mlxsw_sp_port** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %42, label %11

11:                                               ; preds = %2
  %12 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @mlxsw_sp_acl_block_rule_count(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %11
  %18 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @mlxsw_sp_acl_block_rule_count(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %24, i32 0, i32 2
  %26 = call i32 @list_empty(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23, %17, %11
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = call i32 @netdev_err(%struct.net_device* %29, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %52

33:                                               ; preds = %23
  %34 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mlxsw_sp_acl_block_disable_inc(i32 %36)
  %38 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mlxsw_sp_acl_block_disable_inc(i32 %40)
  br label %51

42:                                               ; preds = %2
  %43 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @mlxsw_sp_acl_block_disable_dec(i32 %45)
  %47 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mlxsw_sp_acl_block_disable_dec(i32 %49)
  br label %51

51:                                               ; preds = %42, %33
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %28
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @mlxsw_sp_acl_block_rule_count(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @mlxsw_sp_acl_block_disable_inc(i32) #1

declare dso_local i32 @mlxsw_sp_acl_block_disable_dec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
