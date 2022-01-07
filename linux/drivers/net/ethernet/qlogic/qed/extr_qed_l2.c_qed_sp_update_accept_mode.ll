; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_sp_update_accept_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_sp_update_accept_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.vport_update_ramrod_data = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i8* }
%struct.qed_filter_accept_flags = type { i32, i32, i64, i64 }

@ETH_VPORT_RX_MODE_UCAST_DROP_ALL = common dso_local global i32 0, align 4
@QED_ACCEPT_UCAST_MATCHED = common dso_local global i32 0, align 4
@QED_ACCEPT_UCAST_UNMATCHED = common dso_local global i32 0, align 4
@ETH_VPORT_RX_MODE_UCAST_ACCEPT_UNMATCHED = common dso_local global i32 0, align 4
@ETH_VPORT_RX_MODE_MCAST_DROP_ALL = common dso_local global i32 0, align 4
@QED_ACCEPT_MCAST_MATCHED = common dso_local global i32 0, align 4
@QED_ACCEPT_MCAST_UNMATCHED = common dso_local global i32 0, align 4
@ETH_VPORT_RX_MODE_MCAST_ACCEPT_ALL = common dso_local global i32 0, align 4
@ETH_VPORT_RX_MODE_BCAST_ACCEPT_ALL = common dso_local global i32 0, align 4
@QED_ACCEPT_BCAST = common dso_local global i32 0, align 4
@ETH_VPORT_RX_MODE_ACCEPT_ANY_VNI = common dso_local global i32 0, align 4
@QED_ACCEPT_ANY_VNI = common dso_local global i32 0, align 4
@QED_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"p_ramrod->rx_mode.state = 0x%x\0A\00", align 1
@ETH_VPORT_TX_MODE_UCAST_DROP_ALL = common dso_local global i32 0, align 4
@QED_ACCEPT_NONE = common dso_local global i32 0, align 4
@ETH_VPORT_TX_MODE_MCAST_DROP_ALL = common dso_local global i32 0, align 4
@ETH_VPORT_TX_MODE_MCAST_ACCEPT_ALL = common dso_local global i32 0, align 4
@ETH_VPORT_TX_MODE_UCAST_ACCEPT_ALL = common dso_local global i32 0, align 4
@ETH_VPORT_TX_MODE_BCAST_ACCEPT_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"p_ramrod->tx_mode.state = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.vport_update_ramrod_data*, %struct.qed_filter_accept_flags*)* @qed_sp_update_accept_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_sp_update_accept_mode(%struct.qed_hwfn* %0, %struct.vport_update_ramrod_data* %1, %struct.qed_filter_accept_flags* byval(%struct.qed_filter_accept_flags) align 8 %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.vport_update_ramrod_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.vport_update_ramrod_data* %1, %struct.vport_update_ramrod_data** %5, align 8
  %10 = getelementptr inbounds %struct.qed_filter_accept_flags, %struct.qed_filter_accept_flags* %2, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %5, align 8
  %13 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i64 %11, i64* %14, align 8
  %15 = getelementptr inbounds %struct.qed_filter_accept_flags, %struct.qed_filter_accept_flags* %2, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %5, align 8
  %18 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  %20 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %5, align 8
  %21 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %120

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.qed_filter_accept_flags, %struct.qed_filter_accept_flags* %2, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @ETH_VPORT_RX_MODE_UCAST_DROP_ALL, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @QED_ACCEPT_UCAST_MATCHED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @QED_ACCEPT_UCAST_UNMATCHED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %34, %25
  %42 = phi i1 [ true, %25 ], [ %40, %34 ]
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @SET_FIELD(i32 %28, i32 %29, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @ETH_VPORT_RX_MODE_UCAST_ACCEPT_UNMATCHED, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @QED_ACCEPT_UCAST_UNMATCHED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @SET_FIELD(i32 %46, i32 %47, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @ETH_VPORT_RX_MODE_MCAST_DROP_ALL, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @QED_ACCEPT_MCAST_MATCHED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %41
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @QED_ACCEPT_MCAST_UNMATCHED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  br label %69

69:                                               ; preds = %62, %41
  %70 = phi i1 [ true, %41 ], [ %68, %62 ]
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @SET_FIELD(i32 %56, i32 %57, i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @ETH_VPORT_RX_MODE_MCAST_ACCEPT_ALL, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @QED_ACCEPT_MCAST_MATCHED, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %69
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @QED_ACCEPT_MCAST_UNMATCHED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = xor i1 %85, true
  br label %87

87:                                               ; preds = %80, %69
  %88 = phi i1 [ false, %69 ], [ %86, %80 ]
  %89 = zext i1 %88 to i32
  %90 = call i32 @SET_FIELD(i32 %74, i32 %75, i32 %89)
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @ETH_VPORT_RX_MODE_BCAST_ACCEPT_ALL, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @QED_ACCEPT_BCAST, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = call i32 @SET_FIELD(i32 %91, i32 %92, i32 %99)
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @ETH_VPORT_RX_MODE_ACCEPT_ANY_VNI, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @QED_ACCEPT_ANY_VNI, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = call i32 @SET_FIELD(i32 %101, i32 %102, i32 %109)
  %111 = load i32, i32* %7, align 4
  %112 = call i8* @cpu_to_le16(i32 %111)
  %113 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %5, align 8
  %114 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i8* %112, i8** %115, align 8
  %116 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %117 = load i32, i32* @QED_MSG_SP, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %116, i32 %117, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %87, %3
  %121 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %5, align 8
  %122 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %202

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.qed_filter_accept_flags, %struct.qed_filter_accept_flags* %2, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @ETH_VPORT_TX_MODE_UCAST_DROP_ALL, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @QED_ACCEPT_NONE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = call i32 @SET_FIELD(i32 %129, i32 %130, i32 %137)
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* @ETH_VPORT_TX_MODE_MCAST_DROP_ALL, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @QED_ACCEPT_NONE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = call i32 @SET_FIELD(i32 %139, i32 %140, i32 %147)
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* @ETH_VPORT_TX_MODE_MCAST_ACCEPT_ALL, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @QED_ACCEPT_MCAST_MATCHED, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %126
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @QED_ACCEPT_MCAST_UNMATCHED, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  %160 = xor i1 %159, true
  %161 = xor i1 %160, true
  br label %162

162:                                              ; preds = %155, %126
  %163 = phi i1 [ false, %126 ], [ %161, %155 ]
  %164 = zext i1 %163 to i32
  %165 = call i32 @SET_FIELD(i32 %149, i32 %150, i32 %164)
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* @ETH_VPORT_TX_MODE_UCAST_ACCEPT_ALL, align 4
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* @QED_ACCEPT_UCAST_MATCHED, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %162
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @QED_ACCEPT_UCAST_UNMATCHED, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  %177 = xor i1 %176, true
  %178 = xor i1 %177, true
  br label %179

179:                                              ; preds = %172, %162
  %180 = phi i1 [ false, %162 ], [ %178, %172 ]
  %181 = zext i1 %180 to i32
  %182 = call i32 @SET_FIELD(i32 %166, i32 %167, i32 %181)
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* @ETH_VPORT_TX_MODE_BCAST_ACCEPT_ALL, align 4
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* @QED_ACCEPT_BCAST, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  %189 = xor i1 %188, true
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = call i32 @SET_FIELD(i32 %183, i32 %184, i32 %191)
  %193 = load i32, i32* %9, align 4
  %194 = call i8* @cpu_to_le16(i32 %193)
  %195 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %5, align 8
  %196 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  store i8* %194, i8** %197, align 8
  %198 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %199 = load i32, i32* @QED_MSG_SP, align 4
  %200 = load i32, i32* %9, align 4
  %201 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %198, i32 %199, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %200)
  br label %202

202:                                              ; preds = %179, %120
  ret void
}

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
