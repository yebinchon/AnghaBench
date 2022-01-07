; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_pcie_host_spec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_pcie_host_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pcie_service_card* }
%struct.pcie_service_card = type { i64, i64, i64, i64, i64 }
%struct.host_cmd_ds_command = type { i64, i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.host_cmd_ds_pcie_details }
%struct.host_cmd_ds_pcie_details = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@HostCmd_CMD_PCIE_DESC_DETAILS = common dso_local global i64 0, align 8
@S_DS_GEN = common dso_local global i64 0, align 8
@HostCmd_ACT_GEN_SET = common dso_local global i64 0, align 8
@MWIFIEX_MAX_TXRX_BD = common dso_local global i32 0, align 4
@MWIFIEX_MAX_EVT_BD = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"sleep_cook_lo phy addr: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i64)* @mwifiex_cmd_pcie_host_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cmd_pcie_host_spec(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.host_cmd_ds_command*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.host_cmd_ds_pcie_details*, align 8
  %9 = alloca %struct.pcie_service_card*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %11 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.host_cmd_ds_pcie_details* %12, %struct.host_cmd_ds_pcie_details** %8, align 8
  %13 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %14 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.pcie_service_card*, %struct.pcie_service_card** %16, align 8
  store %struct.pcie_service_card* %17, %struct.pcie_service_card** %9, align 8
  %18 = load i64, i64* @HostCmd_CMD_PCIE_DESC_DETAILS, align 8
  %19 = call i8* @cpu_to_le16(i64 %18)
  %20 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %21 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load i64, i64* @S_DS_GEN, align 8
  %23 = add i64 88, %22
  %24 = call i8* @cpu_to_le16(i64 %23)
  %25 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %26 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %28 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.host_cmd_ds_pcie_details*, %struct.host_cmd_ds_pcie_details** %8, align 8
  %30 = call i32 @memset(%struct.host_cmd_ds_pcie_details* %29, i32 0, i32 88)
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @HostCmd_ACT_GEN_SET, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %122

35:                                               ; preds = %3
  %36 = load %struct.pcie_service_card*, %struct.pcie_service_card** %9, align 8
  %37 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i8* @cpu_to_le32(i32 %39)
  %41 = load %struct.host_cmd_ds_pcie_details*, %struct.host_cmd_ds_pcie_details** %8, align 8
  %42 = getelementptr inbounds %struct.host_cmd_ds_pcie_details, %struct.host_cmd_ds_pcie_details* %41, i32 0, i32 10
  store i8* %40, i8** %42, align 8
  %43 = load %struct.pcie_service_card*, %struct.pcie_service_card** %9, align 8
  %44 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = ashr i32 %46, 32
  %48 = call i8* @cpu_to_le32(i32 %47)
  %49 = load %struct.host_cmd_ds_pcie_details*, %struct.host_cmd_ds_pcie_details** %8, align 8
  %50 = getelementptr inbounds %struct.host_cmd_ds_pcie_details, %struct.host_cmd_ds_pcie_details* %49, i32 0, i32 9
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* @MWIFIEX_MAX_TXRX_BD, align 4
  %52 = call i8* @cpu_to_le32(i32 %51)
  %53 = load %struct.host_cmd_ds_pcie_details*, %struct.host_cmd_ds_pcie_details** %8, align 8
  %54 = getelementptr inbounds %struct.host_cmd_ds_pcie_details, %struct.host_cmd_ds_pcie_details* %53, i32 0, i32 8
  store i8* %52, i8** %54, align 8
  %55 = load %struct.pcie_service_card*, %struct.pcie_service_card** %9, align 8
  %56 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i8* @cpu_to_le32(i32 %58)
  %60 = load %struct.host_cmd_ds_pcie_details*, %struct.host_cmd_ds_pcie_details** %8, align 8
  %61 = getelementptr inbounds %struct.host_cmd_ds_pcie_details, %struct.host_cmd_ds_pcie_details* %60, i32 0, i32 7
  store i8* %59, i8** %61, align 8
  %62 = load %struct.pcie_service_card*, %struct.pcie_service_card** %9, align 8
  %63 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = ashr i32 %65, 32
  %67 = call i8* @cpu_to_le32(i32 %66)
  %68 = load %struct.host_cmd_ds_pcie_details*, %struct.host_cmd_ds_pcie_details** %8, align 8
  %69 = getelementptr inbounds %struct.host_cmd_ds_pcie_details, %struct.host_cmd_ds_pcie_details* %68, i32 0, i32 6
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* @MWIFIEX_MAX_TXRX_BD, align 4
  %71 = call i8* @cpu_to_le32(i32 %70)
  %72 = load %struct.host_cmd_ds_pcie_details*, %struct.host_cmd_ds_pcie_details** %8, align 8
  %73 = getelementptr inbounds %struct.host_cmd_ds_pcie_details, %struct.host_cmd_ds_pcie_details* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  %74 = load %struct.pcie_service_card*, %struct.pcie_service_card** %9, align 8
  %75 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i8* @cpu_to_le32(i32 %77)
  %79 = load %struct.host_cmd_ds_pcie_details*, %struct.host_cmd_ds_pcie_details** %8, align 8
  %80 = getelementptr inbounds %struct.host_cmd_ds_pcie_details, %struct.host_cmd_ds_pcie_details* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  %81 = load %struct.pcie_service_card*, %struct.pcie_service_card** %9, align 8
  %82 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = ashr i32 %84, 32
  %86 = call i8* @cpu_to_le32(i32 %85)
  %87 = load %struct.host_cmd_ds_pcie_details*, %struct.host_cmd_ds_pcie_details** %8, align 8
  %88 = getelementptr inbounds %struct.host_cmd_ds_pcie_details, %struct.host_cmd_ds_pcie_details* %87, i32 0, i32 3
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* @MWIFIEX_MAX_EVT_BD, align 4
  %90 = call i8* @cpu_to_le32(i32 %89)
  %91 = load %struct.host_cmd_ds_pcie_details*, %struct.host_cmd_ds_pcie_details** %8, align 8
  %92 = getelementptr inbounds %struct.host_cmd_ds_pcie_details, %struct.host_cmd_ds_pcie_details* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load %struct.pcie_service_card*, %struct.pcie_service_card** %9, align 8
  %94 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %121

97:                                               ; preds = %35
  %98 = load %struct.pcie_service_card*, %struct.pcie_service_card** %9, align 8
  %99 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i8* @cpu_to_le32(i32 %101)
  %103 = load %struct.host_cmd_ds_pcie_details*, %struct.host_cmd_ds_pcie_details** %8, align 8
  %104 = getelementptr inbounds %struct.host_cmd_ds_pcie_details, %struct.host_cmd_ds_pcie_details* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  %105 = load %struct.pcie_service_card*, %struct.pcie_service_card** %9, align 8
  %106 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = ashr i32 %108, 32
  %110 = call i8* @cpu_to_le32(i32 %109)
  %111 = load %struct.host_cmd_ds_pcie_details*, %struct.host_cmd_ds_pcie_details** %8, align 8
  %112 = getelementptr inbounds %struct.host_cmd_ds_pcie_details, %struct.host_cmd_ds_pcie_details* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  %113 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %114 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = load i32, i32* @INFO, align 4
  %117 = load %struct.host_cmd_ds_pcie_details*, %struct.host_cmd_ds_pcie_details** %8, align 8
  %118 = getelementptr inbounds %struct.host_cmd_ds_pcie_details, %struct.host_cmd_ds_pcie_details* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @mwifiex_dbg(%struct.TYPE_4__* %115, i32 %116, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %119)
  br label %121

121:                                              ; preds = %97, %35
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %121, %34
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @memset(%struct.host_cmd_ds_pcie_details*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.TYPE_4__*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
