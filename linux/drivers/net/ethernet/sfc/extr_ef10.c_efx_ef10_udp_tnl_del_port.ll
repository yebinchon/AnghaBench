; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_udp_tnl_del_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_udp_tnl_del_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.efx_ef10_nic_data* }
%struct.efx_ef10_nic_data = type { i32, i32 }
%struct.efx_udp_tunnel = type { i64, i32, i64 }

@MC_CMD_GET_CAPABILITIES_OUT_VXLAN_NVGRE_LBN = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Removing UDP tunnel (%s) port %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"UDP tunnel port %d remains active\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"UDP port %d is actually in use by %s, not removing\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.efx_udp_tunnel*)* @efx_ef10_udp_tnl_del_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_udp_tnl_del_port(%struct.efx_nic* %0, %struct.efx_udp_tunnel* byval(%struct.efx_udp_tunnel) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca %struct.efx_ef10_nic_data*, align 8
  %6 = alloca %struct.efx_udp_tunnel*, align 8
  %7 = alloca [8 x i8], align 1
  %8 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  %9 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %10 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %9, i32 0, i32 1
  %11 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %10, align 8
  store %struct.efx_ef10_nic_data* %11, %struct.efx_ef10_nic_data** %5, align 8
  %12 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %5, align 8
  %13 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MC_CMD_GET_CAPABILITIES_OUT_VXLAN_NVGRE_LBN, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %98

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %1, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %24 = call i32 @efx_get_udp_tunnel_type_name(i64 %22, i8* %23, i32 8)
  %25 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %26 = load i32, i32* @drv, align 4
  %27 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %28 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %31 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %1, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ntohs(i32 %32)
  %34 = call i32 (%struct.efx_nic*, i32, i32, i8*, i8*, ...) @netif_dbg(%struct.efx_nic* %25, i32 %26, i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %33)
  %35 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %5, align 8
  %36 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %35, i32 0, i32 1
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %39 = call i32 @efx_device_detach_sync(%struct.efx_nic* %38)
  %40 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %41 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %1, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.efx_udp_tunnel* @__efx_ef10_udp_tnl_lookup_port(%struct.efx_nic* %40, i32 %42)
  store %struct.efx_udp_tunnel* %43, %struct.efx_udp_tunnel** %6, align 8
  %44 = load %struct.efx_udp_tunnel*, %struct.efx_udp_tunnel** %6, align 8
  %45 = icmp ne %struct.efx_udp_tunnel* %44, null
  br i1 %45, label %46, label %90

46:                                               ; preds = %20
  %47 = load %struct.efx_udp_tunnel*, %struct.efx_udp_tunnel** %6, align 8
  %48 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %1, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %49, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %46
  %54 = load %struct.efx_udp_tunnel*, %struct.efx_udp_tunnel** %6, align 8
  %55 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, -1
  store i64 %57, i64* %55, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %61 = load i32, i32* @drv, align 4
  %62 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %63 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %1, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ntohs(i32 %66)
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 (%struct.efx_nic*, i32, i32, i8*, i8*, ...) @netif_dbg(%struct.efx_nic* %60, i32 %61, i32 %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  store i32 0, i32* %8, align 4
  br label %93

71:                                               ; preds = %53
  %72 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %73 = call i32 @efx_ef10_set_udp_tnl_ports(%struct.efx_nic* %72, i32 0)
  store i32 %73, i32* %8, align 4
  br label %93

74:                                               ; preds = %46
  %75 = load %struct.efx_udp_tunnel*, %struct.efx_udp_tunnel** %6, align 8
  %76 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %79 = call i32 @efx_get_udp_tunnel_type_name(i64 %77, i8* %78, i32 8)
  %80 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %81 = load i32, i32* @drv, align 4
  %82 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %83 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %1, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @ntohs(i32 %86)
  %88 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %89 = call i32 @netif_warn(%struct.efx_nic* %80, i32 %81, i32 %84, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %87, i8* %88)
  br label %90

90:                                               ; preds = %74, %20
  %91 = load i32, i32* @ENOENT, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %90, %71, %59
  %94 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %5, align 8
  %95 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %94, i32 0, i32 1
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %93, %19
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @efx_get_udp_tunnel_type_name(i64, i8*, i32) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @efx_device_detach_sync(%struct.efx_nic*) #1

declare dso_local %struct.efx_udp_tunnel* @__efx_ef10_udp_tnl_lookup_port(%struct.efx_nic*, i32) #1

declare dso_local i32 @efx_ef10_set_udp_tnl_ports(%struct.efx_nic*, i32) #1

declare dso_local i32 @netif_warn(%struct.efx_nic*, i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
