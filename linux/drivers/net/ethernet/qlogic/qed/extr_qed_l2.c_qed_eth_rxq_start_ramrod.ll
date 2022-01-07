; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_eth_rxq_start_ramrod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_eth_rxq_start_ramrod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_queue_cid = type { i64, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.rx_queue_start_ramrod_data = type { i32, i32, i32, i32, i8*, i32, i8*, i64, i8*, i32, i32, i32, i8* }
%struct.qed_spq_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rx_queue_start_ramrod_data }
%struct.qed_sp_init_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@QED_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"opaque_fid=0x%x, cid=0x%x, rx_qzone=0x%x, vport_id=0x%x, sb_id=0x%x\0A\00", align 1
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@ETH_RAMROD_RX_QUEUE_START = common dso_local global i32 0, align 4
@PROTOCOLID_ETH = common dso_local global i32 0, align 4
@QED_QUEUE_CID_SELF = common dso_local global i64 0, align 8
@QED_QCID_LEGACY_VF_RX_PROD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Queue%s is meant for VF rxq[%02x]\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" [legacy]\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_eth_rxq_start_ramrod(%struct.qed_hwfn* %0, %struct.qed_queue_cid* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.qed_hwfn*, align 8
  %9 = alloca %struct.qed_queue_cid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rx_queue_start_ramrod_data*, align 8
  %15 = alloca %struct.qed_spq_entry*, align 8
  %16 = alloca %struct.qed_sp_init_data, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %8, align 8
  store %struct.qed_queue_cid* %1, %struct.qed_queue_cid** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.rx_queue_start_ramrod_data* null, %struct.rx_queue_start_ramrod_data** %14, align 8
  store %struct.qed_spq_entry* null, %struct.qed_spq_entry** %15, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %17, align 4
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %22 = load i32, i32* @QED_MSG_SP, align 4
  %23 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %9, align 8
  %24 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %9, align 8
  %29 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %9, align 8
  %32 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %9, align 8
  %36 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %9, align 8
  %40 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (%struct.qed_hwfn*, i32, i8*, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %21, i32 %22, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %30, i32 %34, i32 %38, i32 %41)
  %43 = call i32 @memset(%struct.qed_sp_init_data* %16, i32 0, i32 12)
  %44 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %9, align 8
  %45 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %16, i32 0, i32 2
  store i32 %46, i32* %47, align 4
  %48 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %9, align 8
  %49 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %16, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %53 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %16, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %55 = load i32, i32* @ETH_RAMROD_RX_QUEUE_START, align 4
  %56 = load i32, i32* @PROTOCOLID_ETH, align 4
  %57 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %54, %struct.qed_spq_entry** %15, i32 %55, i32 %56, %struct.qed_sp_init_data* %16)
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %6
  %61 = load i32, i32* %17, align 4
  store i32 %61, i32* %7, align 4
  br label %155

62:                                               ; preds = %6
  %63 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %15, align 8
  %64 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store %struct.rx_queue_start_ramrod_data* %65, %struct.rx_queue_start_ramrod_data** %14, align 8
  %66 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %9, align 8
  %67 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = call i8* @cpu_to_le16(i32 %68)
  %70 = load %struct.rx_queue_start_ramrod_data*, %struct.rx_queue_start_ramrod_data** %14, align 8
  %71 = getelementptr inbounds %struct.rx_queue_start_ramrod_data, %struct.rx_queue_start_ramrod_data* %70, i32 0, i32 12
  store i8* %69, i8** %71, align 8
  %72 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %9, align 8
  %73 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.rx_queue_start_ramrod_data*, %struct.rx_queue_start_ramrod_data** %14, align 8
  %76 = getelementptr inbounds %struct.rx_queue_start_ramrod_data, %struct.rx_queue_start_ramrod_data* %75, i32 0, i32 11
  store i32 %74, i32* %76, align 8
  %77 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %9, align 8
  %78 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.rx_queue_start_ramrod_data*, %struct.rx_queue_start_ramrod_data** %14, align 8
  %82 = getelementptr inbounds %struct.rx_queue_start_ramrod_data, %struct.rx_queue_start_ramrod_data* %81, i32 0, i32 10
  store i32 %80, i32* %82, align 4
  %83 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %9, align 8
  %84 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.rx_queue_start_ramrod_data*, %struct.rx_queue_start_ramrod_data** %14, align 8
  %88 = getelementptr inbounds %struct.rx_queue_start_ramrod_data, %struct.rx_queue_start_ramrod_data* %87, i32 0, i32 9
  store i32 %86, i32* %88, align 8
  %89 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %9, align 8
  %90 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i8* @cpu_to_le16(i32 %92)
  %94 = load %struct.rx_queue_start_ramrod_data*, %struct.rx_queue_start_ramrod_data** %14, align 8
  %95 = getelementptr inbounds %struct.rx_queue_start_ramrod_data, %struct.rx_queue_start_ramrod_data* %94, i32 0, i32 8
  store i8* %93, i8** %95, align 8
  %96 = load %struct.rx_queue_start_ramrod_data*, %struct.rx_queue_start_ramrod_data** %14, align 8
  %97 = getelementptr inbounds %struct.rx_queue_start_ramrod_data, %struct.rx_queue_start_ramrod_data* %96, i32 0, i32 7
  store i64 0, i64* %97, align 8
  %98 = load %struct.rx_queue_start_ramrod_data*, %struct.rx_queue_start_ramrod_data** %14, align 8
  %99 = getelementptr inbounds %struct.rx_queue_start_ramrod_data, %struct.rx_queue_start_ramrod_data* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i8* @cpu_to_le16(i32 %100)
  %102 = load %struct.rx_queue_start_ramrod_data*, %struct.rx_queue_start_ramrod_data** %14, align 8
  %103 = getelementptr inbounds %struct.rx_queue_start_ramrod_data, %struct.rx_queue_start_ramrod_data* %102, i32 0, i32 6
  store i8* %101, i8** %103, align 8
  %104 = load %struct.rx_queue_start_ramrod_data*, %struct.rx_queue_start_ramrod_data** %14, align 8
  %105 = getelementptr inbounds %struct.rx_queue_start_ramrod_data, %struct.rx_queue_start_ramrod_data* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @DMA_REGPAIR_LE(i32 %106, i32 %107)
  %109 = load i32, i32* %13, align 4
  %110 = call i8* @cpu_to_le16(i32 %109)
  %111 = load %struct.rx_queue_start_ramrod_data*, %struct.rx_queue_start_ramrod_data** %14, align 8
  %112 = getelementptr inbounds %struct.rx_queue_start_ramrod_data, %struct.rx_queue_start_ramrod_data* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  %113 = load %struct.rx_queue_start_ramrod_data*, %struct.rx_queue_start_ramrod_data** %14, align 8
  %114 = getelementptr inbounds %struct.rx_queue_start_ramrod_data, %struct.rx_queue_start_ramrod_data* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @DMA_REGPAIR_LE(i32 %115, i32 %116)
  %118 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %9, align 8
  %119 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @QED_QUEUE_CID_SELF, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %151

123:                                              ; preds = %62
  %124 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %9, align 8
  %125 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @QED_QCID_LEGACY_VF_RX_PROD, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  store i32 %132, i32* %18, align 4
  %133 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %9, align 8
  %134 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.rx_queue_start_ramrod_data*, %struct.rx_queue_start_ramrod_data** %14, align 8
  %137 = getelementptr inbounds %struct.rx_queue_start_ramrod_data, %struct.rx_queue_start_ramrod_data* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %139 = load i32, i32* @QED_MSG_SP, align 4
  %140 = load i32, i32* %18, align 4
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %144 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %9, align 8
  %145 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (%struct.qed_hwfn*, i32, i8*, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %138, i32 %139, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %143, i32 %146)
  %148 = load i32, i32* %18, align 4
  %149 = load %struct.rx_queue_start_ramrod_data*, %struct.rx_queue_start_ramrod_data** %14, align 8
  %150 = getelementptr inbounds %struct.rx_queue_start_ramrod_data, %struct.rx_queue_start_ramrod_data* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %123, %62
  %152 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %153 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %15, align 8
  %154 = call i32 @qed_spq_post(%struct.qed_hwfn* %152, %struct.qed_spq_entry* %153, i32* null)
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %151, %60
  %156 = load i32, i32* %7, align 4
  ret i32 %156
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
