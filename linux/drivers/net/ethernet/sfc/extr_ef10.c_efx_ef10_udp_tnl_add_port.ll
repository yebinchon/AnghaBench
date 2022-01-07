; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_udp_tnl_add_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_udp_tnl_add_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.efx_ef10_nic_data* }
%struct.efx_ef10_nic_data = type { i32, i32, %struct.efx_udp_tunnel* }
%struct.efx_udp_tunnel = type { i64, i32, i32 }

@MC_CMD_GET_CAPABILITIES_OUT_VXLAN_NVGRE_LBN = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Adding UDP tunnel (%s) port %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Referencing existing tunnel entry\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"UDP port %d is already in use by %s\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"Unable to add UDP tunnel (%s) port %d; insufficient resources.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, i64, i64)* @efx_ef10_udp_tnl_add_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_udp_tnl_add_port(%struct.efx_nic* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_udp_tunnel, align 8
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca %struct.efx_ef10_nic_data*, align 8
  %8 = alloca %struct.efx_udp_tunnel*, align 8
  %9 = alloca [8 x i8], align 1
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = bitcast %struct.efx_udp_tunnel* %5 to { i64, i64 }*
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  store i64 %1, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  store i64 %2, i64* %14, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %6, align 8
  %15 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %16 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %15, i32 0, i32 1
  %17 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %16, align 8
  store %struct.efx_ef10_nic_data* %17, %struct.efx_ef10_nic_data** %7, align 8
  %18 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %7, align 8
  %19 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MC_CMD_GET_CAPABILITIES_OUT_VXLAN_NVGRE_LBN, align 4
  %22 = shl i32 1, %21
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %143

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %5, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %30 = call i32 @efx_get_udp_tunnel_type_name(i64 %28, i8* %29, i32 8)
  %31 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %32 = load i32, i32* @drv, align 4
  %33 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %34 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %37 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %5, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @ntohs(i32 %38)
  %40 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_dbg(%struct.efx_nic* %31, i32 %32, i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %39)
  %41 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %7, align 8
  %42 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %41, i32 0, i32 1
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %45 = call i32 @efx_device_detach_sync(%struct.efx_nic* %44)
  %46 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %47 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %5, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.efx_udp_tunnel* @__efx_ef10_udp_tnl_lookup_port(%struct.efx_nic* %46, i32 %48)
  store %struct.efx_udp_tunnel* %49, %struct.efx_udp_tunnel** %8, align 8
  %50 = load %struct.efx_udp_tunnel*, %struct.efx_udp_tunnel** %8, align 8
  %51 = icmp ne %struct.efx_udp_tunnel* %50, null
  br i1 %51, label %52, label %88

52:                                               ; preds = %26
  %53 = load %struct.efx_udp_tunnel*, %struct.efx_udp_tunnel** %8, align 8
  %54 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %5, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %55, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %52
  %60 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %61 = load i32, i32* @drv, align 4
  %62 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %63 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_dbg(%struct.efx_nic* %60, i32 %61, i32 %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %66 = load %struct.efx_udp_tunnel*, %struct.efx_udp_tunnel** %8, align 8
  %67 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  store i32 0, i32* %11, align 4
  br label %138

70:                                               ; preds = %52
  %71 = load %struct.efx_udp_tunnel*, %struct.efx_udp_tunnel** %8, align 8
  %72 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %75 = call i32 @efx_get_udp_tunnel_type_name(i64 %73, i8* %74, i32 8)
  %76 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %77 = load i32, i32* @drv, align 4
  %78 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %79 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %5, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @ntohs(i32 %82)
  %84 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %85 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_dbg(%struct.efx_nic* %76, i32 %77, i32 %80, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %83, i8* %84)
  %86 = load i32, i32* @EEXIST, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %11, align 4
  br label %138

88:                                               ; preds = %26
  store i64 0, i64* %10, align 8
  br label %89

89:                                               ; preds = %122, %88
  %90 = load i64, i64* %10, align 8
  %91 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %7, align 8
  %92 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %91, i32 0, i32 2
  %93 = load %struct.efx_udp_tunnel*, %struct.efx_udp_tunnel** %92, align 8
  %94 = call i64 @ARRAY_SIZE(%struct.efx_udp_tunnel* %93)
  %95 = icmp ult i64 %90, %94
  br i1 %95, label %96, label %125

96:                                               ; preds = %89
  %97 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %7, align 8
  %98 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %97, i32 0, i32 2
  %99 = load %struct.efx_udp_tunnel*, %struct.efx_udp_tunnel** %98, align 8
  %100 = load i64, i64* %10, align 8
  %101 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %99, i64 %100
  %102 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %121, label %105

105:                                              ; preds = %96
  %106 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %7, align 8
  %107 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %106, i32 0, i32 2
  %108 = load %struct.efx_udp_tunnel*, %struct.efx_udp_tunnel** %107, align 8
  %109 = load i64, i64* %10, align 8
  %110 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %108, i64 %109
  %111 = bitcast %struct.efx_udp_tunnel* %110 to i8*
  %112 = bitcast %struct.efx_udp_tunnel* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 8 %112, i64 16, i1 false)
  %113 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %7, align 8
  %114 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %113, i32 0, i32 2
  %115 = load %struct.efx_udp_tunnel*, %struct.efx_udp_tunnel** %114, align 8
  %116 = load i64, i64* %10, align 8
  %117 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %115, i64 %116
  %118 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %117, i32 0, i32 1
  store i32 1, i32* %118, align 8
  %119 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %120 = call i32 @efx_ef10_set_udp_tnl_ports(%struct.efx_nic* %119, i32 0)
  store i32 %120, i32* %11, align 4
  br label %138

121:                                              ; preds = %96
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %10, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %10, align 8
  br label %89

125:                                              ; preds = %89
  %126 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %127 = load i32, i32* @drv, align 4
  %128 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %129 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %132 = getelementptr inbounds %struct.efx_udp_tunnel, %struct.efx_udp_tunnel* %5, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i8* @ntohs(i32 %133)
  %135 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_dbg(%struct.efx_nic* %126, i32 %127, i32 %130, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i8* %131, i8* %134)
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %11, align 4
  br label %138

138:                                              ; preds = %125, %105, %70, %59
  %139 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %7, align 8
  %140 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %139, i32 0, i32 1
  %141 = call i32 @mutex_unlock(i32* %140)
  %142 = load i32, i32* %11, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %138, %25
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @efx_get_udp_tunnel_type_name(i64, i8*, i32) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, ...) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @efx_device_detach_sync(%struct.efx_nic*) #1

declare dso_local %struct.efx_udp_tunnel* @__efx_ef10_udp_tnl_lookup_port(%struct.efx_nic*, i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.efx_udp_tunnel*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @efx_ef10_set_udp_tnl_ports(%struct.efx_nic*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
