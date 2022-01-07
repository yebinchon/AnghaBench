; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_set_one_mac_e2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_set_one_mac_e2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_vlan_mac_obj = type { %struct.bnx2x_raw_obj }
%struct.bnx2x_raw_obj = type { i32, i32, i32, i64 }
%struct.bnx2x_exeq_elem = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_8__, %struct.bnx2x_vlan_mac_obj* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32* }
%struct.eth_classify_rules_ramrod_data = type { i32, %union.eth_classify_rule_cmd* }
%union.eth_classify_rule_cmd = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32, i32, i32, i32 }

@BNX2X_VLAN_MAC_ADD = common dso_local global i32 0, align 4
@BNX2X_VLAN_MAC_MOVE = common dso_local global i32 0, align 4
@BNX2X_ISCSI_ETH_MAC = common dso_local global i32 0, align 4
@BNX2X_LLH_CAM_ISCSI_ETH_LINE = common dso_local global i32 0, align 4
@BNX2X_ETH_MAC = common dso_local global i32 0, align 4
@BNX2X_LLH_CAM_ETH_LINE = common dso_local global i32 0, align 4
@CLASSIFY_RULE_OPCODE_MAC = common dso_local global i32 0, align 4
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"About to %s MAC %pM for Queue %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_exeq_elem*, i32, i32)* @bnx2x_set_one_mac_e2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_set_one_mac_e2(%struct.bnx2x* %0, %struct.bnx2x_vlan_mac_obj* %1, %struct.bnx2x_exeq_elem* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  %8 = alloca %struct.bnx2x_exeq_elem*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bnx2x_raw_obj*, align 8
  %12 = alloca %struct.eth_classify_rules_ramrod_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.eth_classify_rule_cmd*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i32*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store %struct.bnx2x_vlan_mac_obj* %1, %struct.bnx2x_vlan_mac_obj** %7, align 8
  store %struct.bnx2x_exeq_elem* %2, %struct.bnx2x_exeq_elem** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %20 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %19, i32 0, i32 0
  store %struct.bnx2x_raw_obj* %20, %struct.bnx2x_raw_obj** %11, align 8
  %21 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %11, align 8
  %22 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.eth_classify_rules_ramrod_data*
  store %struct.eth_classify_rules_ramrod_data* %24, %struct.eth_classify_rules_ramrod_data** %12, align 8
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %13, align 4
  %27 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %8, align 8
  %28 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %14, align 4
  %32 = load %struct.eth_classify_rules_ramrod_data*, %struct.eth_classify_rules_ramrod_data** %12, align 8
  %33 = getelementptr inbounds %struct.eth_classify_rules_ramrod_data, %struct.eth_classify_rules_ramrod_data* %32, i32 0, i32 1
  %34 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %union.eth_classify_rule_cmd, %union.eth_classify_rule_cmd* %34, i64 %36
  store %union.eth_classify_rule_cmd* %37, %union.eth_classify_rule_cmd** %15, align 8
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* @BNX2X_VLAN_MAC_ADD, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  store i32 %42, i32* %16, align 4
  %43 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %8, align 8
  %44 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  store i64* %46, i64** %17, align 8
  %47 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %8, align 8
  %48 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %18, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @BNX2X_VLAN_MAC_MOVE, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %81

57:                                               ; preds = %5
  %58 = load i32, i32* @BNX2X_ISCSI_ETH_MAC, align 4
  %59 = load i64*, i64** %17, align 8
  %60 = call i64 @test_bit(i32 %58, i64* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %64 = load i32, i32* %16, align 4
  %65 = load i32*, i32** %18, align 8
  %66 = load i32, i32* @BNX2X_LLH_CAM_ISCSI_ETH_LINE, align 4
  %67 = call i32 @bnx2x_set_mac_in_nig(%struct.bnx2x* %63, i32 %64, i32* %65, i32 %66)
  br label %80

68:                                               ; preds = %57
  %69 = load i32, i32* @BNX2X_ETH_MAC, align 4
  %70 = load i64*, i64** %17, align 8
  %71 = call i64 @test_bit(i32 %69, i64* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %75 = load i32, i32* %16, align 4
  %76 = load i32*, i32** %18, align 8
  %77 = load i32, i32* @BNX2X_LLH_CAM_ETH_LINE, align 4
  %78 = call i32 @bnx2x_set_mac_in_nig(%struct.bnx2x* %74, i32 %75, i32* %76, i32 %77)
  br label %79

79:                                               ; preds = %73, %68
  br label %80

80:                                               ; preds = %79, %62
  br label %81

81:                                               ; preds = %80, %5
  %82 = load i32, i32* %9, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.eth_classify_rules_ramrod_data*, %struct.eth_classify_rules_ramrod_data** %12, align 8
  %86 = call i32 @memset(%struct.eth_classify_rules_ramrod_data* %85, i32 0, i32 16)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %89 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* @CLASSIFY_RULE_OPCODE_MAC, align 4
  %92 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %15, align 8
  %93 = bitcast %union.eth_classify_rule_cmd* %92 to %struct.TYPE_6__*
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 4
  %95 = call i32 @bnx2x_vlan_mac_set_cmd_hdr_e2(%struct.bnx2x* %88, %struct.bnx2x_vlan_mac_obj* %89, i32 %90, i32 %91, i32* %94)
  %96 = load i32, i32* @BNX2X_MSG_SP, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %101 = load i32*, i32** %18, align 8
  %102 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %11, align 8
  %103 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @DP(i32 %96, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %100, i32* %101, i32 %104)
  %106 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %15, align 8
  %107 = bitcast %union.eth_classify_rule_cmd* %106 to %struct.TYPE_6__*
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 3
  %109 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %15, align 8
  %110 = bitcast %union.eth_classify_rule_cmd* %109 to %struct.TYPE_6__*
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %15, align 8
  %113 = bitcast %union.eth_classify_rule_cmd* %112 to %struct.TYPE_6__*
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32*, i32** %18, align 8
  %116 = call i32 @bnx2x_set_fw_mac_addr(i32* %108, i32* %111, i32* %114, i32* %115)
  %117 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %8, align 8
  %118 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i8* @cpu_to_le16(i32 %123)
  %125 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %15, align 8
  %126 = bitcast %union.eth_classify_rule_cmd* %125 to %struct.TYPE_6__*
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  store i8* %124, i8** %127, align 8
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* @BNX2X_VLAN_MAC_MOVE, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %169

131:                                              ; preds = %87
  %132 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %15, align 8
  %133 = getelementptr inbounds %union.eth_classify_rule_cmd, %union.eth_classify_rule_cmd* %132, i32 1
  store %union.eth_classify_rule_cmd* %133, %union.eth_classify_rule_cmd** %15, align 8
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %13, align 4
  %136 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %137 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %8, align 8
  %138 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 3
  %141 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %140, align 8
  %142 = load i32, i32* @CLASSIFY_RULE_OPCODE_MAC, align 4
  %143 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %15, align 8
  %144 = bitcast %union.eth_classify_rule_cmd* %143 to %struct.TYPE_6__*
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 4
  %146 = call i32 @bnx2x_vlan_mac_set_cmd_hdr_e2(%struct.bnx2x* %136, %struct.bnx2x_vlan_mac_obj* %141, i32 1, i32 %142, i32* %145)
  %147 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %15, align 8
  %148 = bitcast %union.eth_classify_rule_cmd* %147 to %struct.TYPE_6__*
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 3
  %150 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %15, align 8
  %151 = bitcast %union.eth_classify_rule_cmd* %150 to %struct.TYPE_6__*
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  %153 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %15, align 8
  %154 = bitcast %union.eth_classify_rule_cmd* %153 to %struct.TYPE_6__*
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = load i32*, i32** %18, align 8
  %157 = call i32 @bnx2x_set_fw_mac_addr(i32* %149, i32* %152, i32* %155, i32* %156)
  %158 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %8, align 8
  %159 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i8* @cpu_to_le16(i32 %164)
  %166 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %15, align 8
  %167 = bitcast %union.eth_classify_rule_cmd* %166 to %struct.TYPE_6__*
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  store i8* %165, i8** %168, align 8
  br label %169

169:                                              ; preds = %131, %87
  %170 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %11, align 8
  %171 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %11, align 8
  %174 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.eth_classify_rules_ramrod_data*, %struct.eth_classify_rules_ramrod_data** %12, align 8
  %177 = getelementptr inbounds %struct.eth_classify_rules_ramrod_data, %struct.eth_classify_rules_ramrod_data* %176, i32 0, i32 0
  %178 = load i32, i32* %13, align 4
  %179 = call i32 @bnx2x_vlan_mac_set_rdata_hdr_e2(i32 %172, i32 %175, i32* %177, i32 %178)
  ret void
}

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @bnx2x_set_mac_in_nig(%struct.bnx2x*, i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.eth_classify_rules_ramrod_data*, i32, i32) #1

declare dso_local i32 @bnx2x_vlan_mac_set_cmd_hdr_e2(%struct.bnx2x*, %struct.bnx2x_vlan_mac_obj*, i32, i32, i32*) #1

declare dso_local i32 @DP(i32, i8*, i8*, i32*, i32) #1

declare dso_local i32 @bnx2x_set_fw_mac_addr(i32*, i32*, i32*, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @bnx2x_vlan_mac_set_rdata_hdr_e2(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
