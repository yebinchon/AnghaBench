; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_802_11d_domain_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_802_11d_domain_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.host_cmd_ds_command = type { i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.host_cmd_ds_802_11d_domain_info }
%struct.host_cmd_ds_802_11d_domain_info = type { i8*, %struct.mwifiex_ietypes_domain_param_set }
%struct.mwifiex_ietypes_domain_param_set = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i8*, i8* }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"info: 11D: no_of_triplet=0x%x\0A\00", align 1
@HostCmd_CMD_802_11D_DOMAIN_INFO = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_GET = common dso_local global i64 0, align 8
@S_DS_GEN = common dso_local global i32 0, align 4
@WLAN_EID_COUNTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i64)* @mwifiex_cmd_802_11d_domain_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cmd_802_11d_domain_info(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.host_cmd_ds_command*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mwifiex_adapter*, align 8
  %9 = alloca %struct.host_cmd_ds_802_11d_domain_info*, align 8
  %10 = alloca %struct.mwifiex_ietypes_domain_param_set*, align 8
  %11 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %13 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %12, i32 0, i32 0
  %14 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %13, align 8
  store %struct.mwifiex_adapter* %14, %struct.mwifiex_adapter** %8, align 8
  %15 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %16 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.host_cmd_ds_802_11d_domain_info* %17, %struct.host_cmd_ds_802_11d_domain_info** %9, align 8
  %18 = load %struct.host_cmd_ds_802_11d_domain_info*, %struct.host_cmd_ds_802_11d_domain_info** %9, align 8
  %19 = getelementptr inbounds %struct.host_cmd_ds_802_11d_domain_info, %struct.host_cmd_ds_802_11d_domain_info* %18, i32 0, i32 1
  store %struct.mwifiex_ietypes_domain_param_set* %19, %struct.mwifiex_ietypes_domain_param_set** %10, align 8
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %21 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %25 = load i32, i32* @INFO, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %24, i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @HostCmd_CMD_802_11D_DOMAIN_INFO, align 4
  %29 = call i8* @cpu_to_le16(i32 %28)
  %30 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %31 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i64, i64* %7, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i8* @cpu_to_le16(i32 %33)
  %35 = load %struct.host_cmd_ds_802_11d_domain_info*, %struct.host_cmd_ds_802_11d_domain_info** %9, align 8
  %36 = getelementptr inbounds %struct.host_cmd_ds_802_11d_domain_info, %struct.host_cmd_ds_802_11d_domain_info* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @HostCmd_ACT_GEN_GET, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %3
  %41 = load i32, i32* @S_DS_GEN, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 8, %42
  %44 = trunc i64 %43 to i32
  %45 = call i8* @cpu_to_le16(i32 %44)
  %46 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %47 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  store i32 0, i32* %4, align 4
  br label %110

48:                                               ; preds = %3
  %49 = load i32, i32* @WLAN_EID_COUNTRY, align 4
  %50 = call i8* @cpu_to_le16(i32 %49)
  %51 = load %struct.mwifiex_ietypes_domain_param_set*, %struct.mwifiex_ietypes_domain_param_set** %10, align 8
  %52 = getelementptr inbounds %struct.mwifiex_ietypes_domain_param_set, %struct.mwifiex_ietypes_domain_param_set* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i8* %50, i8** %53, align 8
  %54 = load %struct.mwifiex_ietypes_domain_param_set*, %struct.mwifiex_ietypes_domain_param_set** %10, align 8
  %55 = getelementptr inbounds %struct.mwifiex_ietypes_domain_param_set, %struct.mwifiex_ietypes_domain_param_set* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %58 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @memcpy(i32 %56, i32 %60, i32 4)
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  %65 = add i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = call i8* @cpu_to_le16(i32 %66)
  %68 = load %struct.mwifiex_ietypes_domain_param_set*, %struct.mwifiex_ietypes_domain_param_set** %10, align 8
  %69 = getelementptr inbounds %struct.mwifiex_ietypes_domain_param_set, %struct.mwifiex_ietypes_domain_param_set* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i8* %67, i8** %70, align 8
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %101

73:                                               ; preds = %48
  %74 = load %struct.mwifiex_ietypes_domain_param_set*, %struct.mwifiex_ietypes_domain_param_set** %10, align 8
  %75 = getelementptr inbounds %struct.mwifiex_ietypes_domain_param_set, %struct.mwifiex_ietypes_domain_param_set* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %78 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memcpy(i32 %76, i32 %80, i32 %84)
  %86 = load %struct.mwifiex_ietypes_domain_param_set*, %struct.mwifiex_ietypes_domain_param_set** %10, align 8
  %87 = getelementptr inbounds %struct.mwifiex_ietypes_domain_param_set, %struct.mwifiex_ietypes_domain_param_set* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @le16_to_cpu(i8* %89)
  %91 = sext i32 %90 to i64
  %92 = add i64 8, %91
  %93 = add i64 %92, 4
  %94 = load i32, i32* @S_DS_GEN, align 4
  %95 = sext i32 %94 to i64
  %96 = add i64 %93, %95
  %97 = trunc i64 %96 to i32
  %98 = call i8* @cpu_to_le16(i32 %97)
  %99 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %100 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  br label %109

101:                                              ; preds = %48
  %102 = load i32, i32* @S_DS_GEN, align 4
  %103 = sext i32 %102 to i64
  %104 = add i64 8, %103
  %105 = trunc i64 %104 to i32
  %106 = call i8* @cpu_to_le16(i32 %105)
  %107 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %108 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %101, %73
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %40
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
