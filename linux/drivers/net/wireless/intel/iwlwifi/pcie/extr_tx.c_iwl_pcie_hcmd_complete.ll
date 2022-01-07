; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_hcmd_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_hcmd_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32, i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.iwl_device_cmd = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.iwl_cmd_meta = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, %struct.iwl_rx_packet* }
%struct.iwl_trans_pcie = type { i64, i32, i32, %struct.iwl_txq** }
%struct.iwl_txq = type { i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.iwl_cmd_meta, %struct.iwl_device_cmd* }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [73 x i8] c"wrong command queue %d (should be %d), sequence 0x%X readp=%d writep=%d\0A\00", align 1
@CMD_WANT_SKB = common dso_local global i32 0, align 4
@CMD_WANT_ASYNC_CALLBACK = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4
@STATUS_SYNC_HCMD_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"HCMD_ACTIVE already clear for command %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Clearing HCMD_ACTIVE for command %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_pcie_hcmd_complete(%struct.iwl_trans* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iwl_device_cmd*, align 8
  %13 = alloca %struct.iwl_cmd_meta*, align 8
  %14 = alloca %struct.iwl_trans_pcie*, align 8
  %15 = alloca %struct.iwl_txq*, align 8
  %16 = alloca %struct.page*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %17 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %18 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %17)
  store %struct.iwl_rx_packet* %18, %struct.iwl_rx_packet** %5, align 8
  %19 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %20 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le16_to_cpu(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @SEQ_TO_QUEUE(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @SEQ_TO_INDEX(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %29 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %28)
  store %struct.iwl_trans_pcie* %29, %struct.iwl_trans_pcie** %14, align 8
  %30 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %14, align 8
  %31 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %30, i32 0, i32 3
  %32 = load %struct.iwl_txq**, %struct.iwl_txq*** %31, align 8
  %33 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %14, align 8
  %34 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.iwl_txq*, %struct.iwl_txq** %32, i64 %35
  %37 = load %struct.iwl_txq*, %struct.iwl_txq** %36, align 8
  store %struct.iwl_txq* %37, %struct.iwl_txq** %15, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %14, align 8
  %41 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %14, align 8
  %47 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.iwl_txq*, %struct.iwl_txq** %15, align 8
  %52 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.iwl_txq*, %struct.iwl_txq** %15, align 8
  %55 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @WARN(i32 %44, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %49, i32 %50, i32 %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %2
  %60 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %61 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %62 = call i32 @iwl_print_hex_error(%struct.iwl_trans* %60, %struct.iwl_rx_packet* %61, i32 32)
  br label %182

63:                                               ; preds = %2
  %64 = load %struct.iwl_txq*, %struct.iwl_txq** %15, align 8
  %65 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %64, i32 0, i32 0
  %66 = call i32 @spin_lock_bh(i32* %65)
  %67 = load %struct.iwl_txq*, %struct.iwl_txq** %15, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @iwl_pcie_get_cmd_index(%struct.iwl_txq* %67, i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = load %struct.iwl_txq*, %struct.iwl_txq** %15, align 8
  %71 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %76, align 8
  store %struct.iwl_device_cmd* %77, %struct.iwl_device_cmd** %12, align 8
  %78 = load %struct.iwl_txq*, %struct.iwl_txq** %15, align 8
  %79 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %78, i32 0, i32 1
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store %struct.iwl_cmd_meta* %84, %struct.iwl_cmd_meta** %13, align 8
  %85 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %12, align 8
  %86 = getelementptr inbounds %struct.iwl_device_cmd, %struct.iwl_device_cmd* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %7, align 4
  %89 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %12, align 8
  %90 = getelementptr inbounds %struct.iwl_device_cmd, %struct.iwl_device_cmd* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @iwl_cmd_id(i32 %92, i32 %93, i32 0)
  store i32 %94, i32* %8, align 4
  %95 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %96 = load %struct.iwl_cmd_meta*, %struct.iwl_cmd_meta** %13, align 8
  %97 = load %struct.iwl_txq*, %struct.iwl_txq** %15, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @iwl_pcie_tfd_unmap(%struct.iwl_trans* %95, %struct.iwl_cmd_meta* %96, %struct.iwl_txq* %97, i32 %98)
  %100 = load %struct.iwl_cmd_meta*, %struct.iwl_cmd_meta** %13, align 8
  %101 = getelementptr inbounds %struct.iwl_cmd_meta, %struct.iwl_cmd_meta* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @CMD_WANT_SKB, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %63
  %107 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %108 = call %struct.page* @rxb_steal_page(%struct.iwl_rx_cmd_buffer* %107)
  store %struct.page* %108, %struct.page** %16, align 8
  %109 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %110 = load %struct.iwl_cmd_meta*, %struct.iwl_cmd_meta** %13, align 8
  %111 = getelementptr inbounds %struct.iwl_cmd_meta, %struct.iwl_cmd_meta* %110, i32 0, i32 1
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  store %struct.iwl_rx_packet* %109, %struct.iwl_rx_packet** %113, align 8
  %114 = load %struct.page*, %struct.page** %16, align 8
  %115 = call i64 @page_address(%struct.page* %114)
  %116 = load %struct.iwl_cmd_meta*, %struct.iwl_cmd_meta** %13, align 8
  %117 = getelementptr inbounds %struct.iwl_cmd_meta, %struct.iwl_cmd_meta* %116, i32 0, i32 1
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  store i64 %115, i64* %119, align 8
  %120 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %14, align 8
  %121 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.iwl_cmd_meta*, %struct.iwl_cmd_meta** %13, align 8
  %124 = getelementptr inbounds %struct.iwl_cmd_meta, %struct.iwl_cmd_meta* %123, i32 0, i32 1
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  store i32 %122, i32* %126, align 8
  br label %127

127:                                              ; preds = %106, %63
  %128 = load %struct.iwl_cmd_meta*, %struct.iwl_cmd_meta** %13, align 8
  %129 = getelementptr inbounds %struct.iwl_cmd_meta, %struct.iwl_cmd_meta* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @CMD_WANT_ASYNC_CALLBACK, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %127
  %135 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %136 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %12, align 8
  %139 = call i32 @iwl_op_mode_async_cb(i32 %137, %struct.iwl_device_cmd* %138)
  br label %140

140:                                              ; preds = %134, %127
  %141 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @iwl_pcie_cmdq_reclaim(%struct.iwl_trans* %141, i32 %142, i32 %143)
  %145 = load %struct.iwl_cmd_meta*, %struct.iwl_cmd_meta** %13, align 8
  %146 = getelementptr inbounds %struct.iwl_cmd_meta, %struct.iwl_cmd_meta* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @CMD_ASYNC, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %176, label %151

151:                                              ; preds = %140
  %152 = load i32, i32* @STATUS_SYNC_HCMD_ACTIVE, align 4
  %153 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %154 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %153, i32 0, i32 0
  %155 = call i32 @test_bit(i32 %152, i32* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %151
  %158 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %159 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @iwl_get_cmd_string(%struct.iwl_trans* %159, i32 %160)
  %162 = call i32 @IWL_WARN(%struct.iwl_trans* %158, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %157, %151
  %164 = load i32, i32* @STATUS_SYNC_HCMD_ACTIVE, align 4
  %165 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %166 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %165, i32 0, i32 0
  %167 = call i32 @clear_bit(i32 %164, i32* %166)
  %168 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %169 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %170 = load i32, i32* %8, align 4
  %171 = call i32 @iwl_get_cmd_string(%struct.iwl_trans* %169, i32 %170)
  %172 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %168, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %171)
  %173 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %14, align 8
  %174 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %173, i32 0, i32 1
  %175 = call i32 @wake_up(i32* %174)
  br label %176

176:                                              ; preds = %163, %140
  %177 = load %struct.iwl_cmd_meta*, %struct.iwl_cmd_meta** %13, align 8
  %178 = getelementptr inbounds %struct.iwl_cmd_meta, %struct.iwl_cmd_meta* %177, i32 0, i32 0
  store i32 0, i32* %178, align 8
  %179 = load %struct.iwl_txq*, %struct.iwl_txq** %15, align 8
  %180 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %179, i32 0, i32 0
  %181 = call i32 @spin_unlock_bh(i32* %180)
  br label %182

182:                                              ; preds = %176, %59
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @SEQ_TO_QUEUE(i32) #1

declare dso_local i32 @SEQ_TO_INDEX(i32) #1

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i64 @WARN(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @iwl_print_hex_error(%struct.iwl_trans*, %struct.iwl_rx_packet*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @iwl_pcie_get_cmd_index(%struct.iwl_txq*, i32) #1

declare dso_local i32 @iwl_cmd_id(i32, i32, i32) #1

declare dso_local i32 @iwl_pcie_tfd_unmap(%struct.iwl_trans*, %struct.iwl_cmd_meta*, %struct.iwl_txq*, i32) #1

declare dso_local %struct.page* @rxb_steal_page(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @iwl_op_mode_async_cb(i32, %struct.iwl_device_cmd*) #1

declare dso_local i32 @iwl_pcie_cmdq_reclaim(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @iwl_get_cmd_string(%struct.iwl_trans*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
