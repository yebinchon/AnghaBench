; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_set_one_vlan_mac_e2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_set_one_vlan_mac_e2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_vlan_mac_obj = type { %struct.bnx2x_raw_obj }
%struct.bnx2x_raw_obj = type { i32, i32, i64 }
%struct.bnx2x_exeq_elem = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.bnx2x_vlan_mac_obj*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32*, i32 }
%struct.eth_classify_rules_ramrod_data = type { i32, %union.eth_classify_rule_cmd* }
%union.eth_classify_rule_cmd = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i32, i32, i32, i8*, i32 }

@BNX2X_VLAN_MAC_ADD = common dso_local global i32 0, align 4
@CLASSIFY_RULE_OPCODE_PAIR = common dso_local global i32 0, align 4
@BNX2X_VLAN_MAC_MOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_exeq_elem*, i32, i32)* @bnx2x_set_one_vlan_mac_e2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_set_one_vlan_mac_e2(%struct.bnx2x* %0, %struct.bnx2x_vlan_mac_obj* %1, %struct.bnx2x_exeq_elem* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  %8 = alloca %struct.bnx2x_exeq_elem*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bnx2x_raw_obj*, align 8
  %12 = alloca %struct.eth_classify_rules_ramrod_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %union.eth_classify_rule_cmd*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store %struct.bnx2x_vlan_mac_obj* %1, %struct.bnx2x_vlan_mac_obj** %7, align 8
  store %struct.bnx2x_exeq_elem* %2, %struct.bnx2x_exeq_elem** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %21 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %22 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %21, i32 0, i32 0
  store %struct.bnx2x_raw_obj* %22, %struct.bnx2x_raw_obj** %11, align 8
  %23 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %11, align 8
  %24 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.eth_classify_rules_ramrod_data*
  store %struct.eth_classify_rules_ramrod_data* %26, %struct.eth_classify_rules_ramrod_data** %12, align 8
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %13, align 4
  %29 = load %struct.eth_classify_rules_ramrod_data*, %struct.eth_classify_rules_ramrod_data** %12, align 8
  %30 = getelementptr inbounds %struct.eth_classify_rules_ramrod_data, %struct.eth_classify_rules_ramrod_data* %29, i32 0, i32 1
  %31 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %union.eth_classify_rule_cmd, %union.eth_classify_rule_cmd* %31, i64 %33
  store %union.eth_classify_rule_cmd* %34, %union.eth_classify_rule_cmd** %14, align 8
  %35 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %8, align 8
  %36 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @BNX2X_VLAN_MAC_ADD, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  store i32 %44, i32* %16, align 4
  %45 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %8, align 8
  %46 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %17, align 4
  %52 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %8, align 8
  %53 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %18, align 8
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %5
  %62 = load %struct.eth_classify_rules_ramrod_data*, %struct.eth_classify_rules_ramrod_data** %12, align 8
  %63 = call i32 @memset(%struct.eth_classify_rules_ramrod_data* %62, i32 0, i32 16)
  br label %64

64:                                               ; preds = %61, %5
  %65 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %66 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* @CLASSIFY_RULE_OPCODE_PAIR, align 4
  %69 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %70 = bitcast %union.eth_classify_rule_cmd* %69 to %struct.TYPE_10__*
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 5
  %72 = call i32 @bnx2x_vlan_mac_set_cmd_hdr_e2(%struct.bnx2x* %65, %struct.bnx2x_vlan_mac_obj* %66, i32 %67, i32 %68, i32* %71)
  %73 = load i32, i32* %17, align 4
  %74 = call i8* @cpu_to_le16(i32 %73)
  %75 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %76 = bitcast %union.eth_classify_rule_cmd* %75 to %struct.TYPE_10__*
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 4
  store i8* %74, i8** %77, align 8
  %78 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %79 = bitcast %union.eth_classify_rule_cmd* %78 to %struct.TYPE_10__*
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 3
  %81 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %82 = bitcast %union.eth_classify_rule_cmd* %81 to %struct.TYPE_10__*
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %85 = bitcast %union.eth_classify_rule_cmd* %84 to %struct.TYPE_10__*
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32*, i32** %18, align 8
  %88 = call i32 @bnx2x_set_fw_mac_addr(i32* %80, i32* %83, i32* %86, i32* %87)
  %89 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %8, align 8
  %90 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %19, align 4
  %96 = load i32, i32* %19, align 4
  %97 = call i8* @cpu_to_le16(i32 %96)
  %98 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %99 = bitcast %union.eth_classify_rule_cmd* %98 to %struct.TYPE_10__*
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  store i8* %97, i8** %100, align 8
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* @BNX2X_VLAN_MAC_MOVE, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %142

104:                                              ; preds = %64
  %105 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %106 = getelementptr inbounds %union.eth_classify_rule_cmd, %union.eth_classify_rule_cmd* %105, i32 1
  store %union.eth_classify_rule_cmd* %106, %union.eth_classify_rule_cmd** %14, align 8
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %13, align 4
  %109 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %8, align 8
  %110 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %112, align 8
  store %struct.bnx2x_vlan_mac_obj* %113, %struct.bnx2x_vlan_mac_obj** %20, align 8
  %114 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %115 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %20, align 8
  %116 = load i32, i32* @CLASSIFY_RULE_OPCODE_PAIR, align 4
  %117 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %118 = bitcast %union.eth_classify_rule_cmd* %117 to %struct.TYPE_10__*
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 5
  %120 = call i32 @bnx2x_vlan_mac_set_cmd_hdr_e2(%struct.bnx2x* %114, %struct.bnx2x_vlan_mac_obj* %115, i32 1, i32 %116, i32* %119)
  %121 = load i32, i32* %17, align 4
  %122 = call i8* @cpu_to_le16(i32 %121)
  %123 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %124 = bitcast %union.eth_classify_rule_cmd* %123 to %struct.TYPE_10__*
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 4
  store i8* %122, i8** %125, align 8
  %126 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %127 = bitcast %union.eth_classify_rule_cmd* %126 to %struct.TYPE_10__*
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 3
  %129 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %130 = bitcast %union.eth_classify_rule_cmd* %129 to %struct.TYPE_10__*
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 2
  %132 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %133 = bitcast %union.eth_classify_rule_cmd* %132 to %struct.TYPE_10__*
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load i32*, i32** %18, align 8
  %136 = call i32 @bnx2x_set_fw_mac_addr(i32* %128, i32* %131, i32* %134, i32* %135)
  %137 = load i32, i32* %19, align 4
  %138 = call i8* @cpu_to_le16(i32 %137)
  %139 = load %union.eth_classify_rule_cmd*, %union.eth_classify_rule_cmd** %14, align 8
  %140 = bitcast %union.eth_classify_rule_cmd* %139 to %struct.TYPE_10__*
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  store i8* %138, i8** %141, align 8
  br label %142

142:                                              ; preds = %104, %64
  %143 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %11, align 8
  %144 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %11, align 8
  %147 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.eth_classify_rules_ramrod_data*, %struct.eth_classify_rules_ramrod_data** %12, align 8
  %150 = getelementptr inbounds %struct.eth_classify_rules_ramrod_data, %struct.eth_classify_rules_ramrod_data* %149, i32 0, i32 0
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @bnx2x_vlan_mac_set_rdata_hdr_e2(i32 %145, i32 %148, i32* %150, i32 %151)
  ret void
}

declare dso_local i32 @memset(%struct.eth_classify_rules_ramrod_data*, i32, i32) #1

declare dso_local i32 @bnx2x_vlan_mac_set_cmd_hdr_e2(%struct.bnx2x*, %struct.bnx2x_vlan_mac_obj*, i32, i32, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @bnx2x_set_fw_mac_addr(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @bnx2x_vlan_mac_set_rdata_hdr_e2(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
