; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_port_check_rif_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_port_check_rif_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_rif** }
%struct.mlxsw_sp_rif = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@MAX_RIFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"All router interface MAC addresses must have the same prefix\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.net_device*, i8*, %struct.netlink_ext_ack*)* @mlxsw_sp_router_port_check_rif_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_router_port_check_rif_addr(%struct.mlxsw_sp* %0, %struct.net_device* %1, i8* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.mlxsw_sp_rif*, align 8
  %11 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = call i64 @netif_is_macvlan(%struct.net_device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = call i64 @netif_is_l3_master(%struct.net_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %4
  store i32 0, i32* %5, align 4
  br label %74

20:                                               ; preds = %15
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %70, %20
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MAX_RIFS, align 4
  %27 = call i32 @MLXSW_CORE_RES_GET(i32 %25, i32 %26)
  %28 = icmp slt i32 %22, %27
  br i1 %28, label %29, label %73

29:                                               ; preds = %21
  %30 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.mlxsw_sp_rif**, %struct.mlxsw_sp_rif*** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %34, i64 %36
  %38 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %37, align 8
  store %struct.mlxsw_sp_rif* %38, %struct.mlxsw_sp_rif** %10, align 8
  %39 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %10, align 8
  %40 = icmp ne %struct.mlxsw_sp_rif* %39, null
  br i1 %40, label %41, label %69

41:                                               ; preds = %29
  %42 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %10, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %42, i32 0, i32 0
  %44 = load %struct.net_device*, %struct.net_device** %43, align 8
  %45 = icmp ne %struct.net_device* %44, null
  br i1 %45, label %46, label %69

46:                                               ; preds = %41
  %47 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %10, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %47, i32 0, i32 0
  %49 = load %struct.net_device*, %struct.net_device** %48, align 8
  %50 = load %struct.net_device*, %struct.net_device** %7, align 8
  %51 = icmp ne %struct.net_device* %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %46
  %53 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %10, align 8
  %54 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %53, i32 0, i32 0
  %55 = load %struct.net_device*, %struct.net_device** %54, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %60 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ether_addr_equal_masked(i32 %57, i8* %58, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %52
  %65 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %66 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %65, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %74

69:                                               ; preds = %52, %46, %41, %29
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %21

73:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %64, %19
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i64 @netif_is_macvlan(%struct.net_device*) #1

declare dso_local i64 @netif_is_l3_master(%struct.net_device*) #1

declare dso_local i32 @MLXSW_CORE_RES_GET(i32, i32) #1

declare dso_local i32 @ether_addr_equal_masked(i32, i8*, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
