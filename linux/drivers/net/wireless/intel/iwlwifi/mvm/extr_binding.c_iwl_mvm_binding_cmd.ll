; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_binding.c_iwl_mvm_binding_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_binding.c_iwl_mvm_binding_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_mvm_iface_iterator_data = type { i32, i32*, i32*, %struct.iwl_mvm_phy_ctxt* }
%struct.iwl_mvm_phy_ctxt = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.iwl_binding_cmd = type { i8**, i8*, i8*, i8*, i8* }

@IWL_UCODE_TLV_CAPA_BINDING_CDB_SUPPORT = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IWL_LMAC_24G_INDEX = common dso_local global i64 0, align 8
@IWL_LMAC_5G_INDEX = common dso_local global i64 0, align 8
@IWL_BINDING_CMD_SIZE_V1 = common dso_local global i32 0, align 4
@MAX_MACS_IN_BINDING = common dso_local global i32 0, align 4
@FW_CTXT_INVALID = common dso_local global i64 0, align 8
@BINDING_CONTEXT_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to send binding (action:%d): %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Binding command failed: %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i64, %struct.iwl_mvm_iface_iterator_data*)* @iwl_mvm_binding_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_binding_cmd(%struct.iwl_mvm* %0, i64 %1, %struct.iwl_mvm_iface_iterator_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iwl_mvm_iface_iterator_data*, align 8
  %8 = alloca %struct.iwl_binding_cmd, align 8
  %9 = alloca %struct.iwl_mvm_phy_ctxt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.iwl_mvm_iface_iterator_data* %2, %struct.iwl_mvm_iface_iterator_data** %7, align 8
  %14 = load %struct.iwl_mvm_iface_iterator_data*, %struct.iwl_mvm_iface_iterator_data** %7, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm_iface_iterator_data, %struct.iwl_mvm_iface_iterator_data* %14, i32 0, i32 3
  %16 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %15, align 8
  store %struct.iwl_mvm_phy_ctxt* %16, %struct.iwl_mvm_phy_ctxt** %9, align 8
  %17 = call i32 @memset(%struct.iwl_binding_cmd* %8, i32 0, i32 40)
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* @IWL_UCODE_TLV_CAPA_BINDING_CDB_SUPPORT, align 4
  %23 = call i64 @fw_has_capa(i32* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %3
  store i32 40, i32* %13, align 4
  %26 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %9, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %25
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %35 = call i32 @iwl_mvm_is_cdb_supported(%struct.iwl_mvm* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33, %25
  %38 = load i64, i64* @IWL_LMAC_24G_INDEX, align 8
  %39 = call i8* @cpu_to_le32(i64 %38)
  %40 = getelementptr inbounds %struct.iwl_binding_cmd, %struct.iwl_binding_cmd* %8, i32 0, i32 4
  store i8* %39, i8** %40, align 8
  br label %45

41:                                               ; preds = %33
  %42 = load i64, i64* @IWL_LMAC_5G_INDEX, align 8
  %43 = call i8* @cpu_to_le32(i64 %42)
  %44 = getelementptr inbounds %struct.iwl_binding_cmd, %struct.iwl_binding_cmd* %8, i32 0, i32 4
  store i8* %43, i8** %44, align 8
  br label %45

45:                                               ; preds = %41, %37
  br label %48

46:                                               ; preds = %3
  %47 = load i32, i32* @IWL_BINDING_CMD_SIZE_V1, align 4
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %46, %45
  %49 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %9, align 8
  %50 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %9, align 8
  %53 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @FW_CMD_ID_AND_COLOR(i32 %51, i32 %54)
  %56 = call i8* @cpu_to_le32(i64 %55)
  %57 = getelementptr inbounds %struct.iwl_binding_cmd, %struct.iwl_binding_cmd* %8, i32 0, i32 3
  store i8* %56, i8** %57, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i8* @cpu_to_le32(i64 %58)
  %60 = getelementptr inbounds %struct.iwl_binding_cmd, %struct.iwl_binding_cmd* %8, i32 0, i32 2
  store i8* %59, i8** %60, align 8
  %61 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %9, align 8
  %62 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %9, align 8
  %65 = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, %struct.iwl_mvm_phy_ctxt* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @FW_CMD_ID_AND_COLOR(i32 %63, i32 %66)
  %68 = call i8* @cpu_to_le32(i64 %67)
  %69 = getelementptr inbounds %struct.iwl_binding_cmd, %struct.iwl_binding_cmd* %8, i32 0, i32 1
  store i8* %68, i8** %69, align 8
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %82, %48
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @MAX_MACS_IN_BINDING, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %70
  %75 = load i64, i64* @FW_CTXT_INVALID, align 8
  %76 = call i8* @cpu_to_le32(i64 %75)
  %77 = getelementptr inbounds %struct.iwl_binding_cmd, %struct.iwl_binding_cmd* %8, i32 0, i32 0
  %78 = load i8**, i8*** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  store i8* %76, i8** %81, align 8
  br label %82

82:                                               ; preds = %74
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %70

85:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %114, %85
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.iwl_mvm_iface_iterator_data*, %struct.iwl_mvm_iface_iterator_data** %7, align 8
  %89 = getelementptr inbounds %struct.iwl_mvm_iface_iterator_data, %struct.iwl_mvm_iface_iterator_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %117

92:                                               ; preds = %86
  %93 = load %struct.iwl_mvm_iface_iterator_data*, %struct.iwl_mvm_iface_iterator_data** %7, align 8
  %94 = getelementptr inbounds %struct.iwl_mvm_iface_iterator_data, %struct.iwl_mvm_iface_iterator_data* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.iwl_mvm_iface_iterator_data*, %struct.iwl_mvm_iface_iterator_data** %7, align 8
  %101 = getelementptr inbounds %struct.iwl_mvm_iface_iterator_data, %struct.iwl_mvm_iface_iterator_data* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @FW_CMD_ID_AND_COLOR(i32 %99, i32 %106)
  %108 = call i8* @cpu_to_le32(i64 %107)
  %109 = getelementptr inbounds %struct.iwl_binding_cmd, %struct.iwl_binding_cmd* %8, i32 0, i32 0
  %110 = load i8**, i8*** %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  store i8* %108, i8** %113, align 8
  br label %114

114:                                              ; preds = %92
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %86

117:                                              ; preds = %86
  store i64 0, i64* %12, align 8
  %118 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %119 = load i32, i32* @BINDING_CONTEXT_CMD, align 4
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @iwl_mvm_send_cmd_pdu_status(%struct.iwl_mvm* %118, i32 %119, i32 %120, %struct.iwl_binding_cmd* %8, i64* %12)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %126 = load i64, i64* %6, align 8
  %127 = load i32, i32* %11, align 4
  %128 = call i32 (%struct.iwl_mvm*, i8*, i64, ...) @IWL_ERR(%struct.iwl_mvm* %125, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %126, i32 %127)
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %4, align 4
  br label %141

130:                                              ; preds = %117
  %131 = load i64, i64* %12, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %135 = load i64, i64* %12, align 8
  %136 = call i32 (%struct.iwl_mvm*, i8*, i64, ...) @IWL_ERR(%struct.iwl_mvm* %134, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %135)
  %137 = load i32, i32* @EIO, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %11, align 4
  br label %139

139:                                              ; preds = %133, %130
  %140 = load i32, i32* %11, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %139, %124
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @memset(%struct.iwl_binding_cmd*, i32, i32) #1

declare dso_local i64 @fw_has_capa(i32*, i32) #1

declare dso_local i32 @iwl_mvm_is_cdb_supported(%struct.iwl_mvm*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i64 @FW_CMD_ID_AND_COLOR(i32, i32) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu_status(%struct.iwl_mvm*, i32, i32, %struct.iwl_binding_cmd*, i64*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
