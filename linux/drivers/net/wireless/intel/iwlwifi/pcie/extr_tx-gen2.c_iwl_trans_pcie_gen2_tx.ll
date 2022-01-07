; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_trans_pcie_gen2_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_trans_pcie_gen2_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.sk_buff = type { i64 }
%struct.iwl_device_cmd = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32, %struct.iwl_txq** }
%struct.iwl_txq = type { i32, i64, i64, i32, i64, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.iwl_cmd_meta, %struct.iwl_device_cmd*, %struct.sk_buff* }
%struct.iwl_cmd_meta = type { i64 }
%struct.iwl_tx_cmd_gen3 = type { i32 }
%struct.iwl_tx_cmd_gen2 = type { i32 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"TX on unused queue %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IWL_DEVICE_FAMILY_22560 = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_trans_pcie_gen2_tx(%struct.iwl_trans* %0, %struct.sk_buff* %1, %struct.iwl_device_cmd* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_trans*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.iwl_device_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_trans_pcie*, align 8
  %11 = alloca %struct.iwl_cmd_meta*, align 8
  %12 = alloca %struct.iwl_txq*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.iwl_device_cmd**, align 8
  %17 = alloca %struct.iwl_tx_cmd_gen3*, align 8
  %18 = alloca %struct.iwl_tx_cmd_gen2*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.iwl_device_cmd* %2, %struct.iwl_device_cmd** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %20 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %19)
  store %struct.iwl_trans_pcie* %20, %struct.iwl_trans_pcie** %10, align 8
  %21 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %10, align 8
  %22 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %21, i32 0, i32 2
  %23 = load %struct.iwl_txq**, %struct.iwl_txq*** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.iwl_txq*, %struct.iwl_txq** %23, i64 %25
  %27 = load %struct.iwl_txq*, %struct.iwl_txq** %26, align 8
  store %struct.iwl_txq* %27, %struct.iwl_txq** %12, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %10, align 8
  %30 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @test_bit(i32 %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @WARN_ONCE(i32 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %4
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %228

42:                                               ; preds = %4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = call i64 @skb_is_nonlinear(%struct.sk_buff* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %47)
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %10, align 8
  %52 = call i64 @IWL_PCIE_MAX_FRAGS(%struct.iwl_trans_pcie* %51)
  %53 = icmp sgt i64 %50, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = call i64 @__skb_linearize(%struct.sk_buff* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %228

61:                                               ; preds = %54, %46, %42
  %62 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %63 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %62, i32 0, i32 3
  %64 = call i32 @spin_lock(i32* %63)
  %65 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %66 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %67 = call i32 @iwl_queue_space(%struct.iwl_trans* %65, %struct.iwl_txq* %66)
  %68 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %69 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %105

72:                                               ; preds = %61
  %73 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %74 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %75 = call i32 @iwl_stop_queue(%struct.iwl_trans* %73, %struct.iwl_txq* %74)
  %76 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %77 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %78 = call i32 @iwl_queue_space(%struct.iwl_trans* %76, %struct.iwl_txq* %77)
  %79 = icmp slt i32 %78, 3
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %72
  %84 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i32*
  %88 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %10, align 8
  %89 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  %93 = bitcast i32* %92 to i8*
  %94 = bitcast i8* %93 to %struct.iwl_device_cmd**
  store %struct.iwl_device_cmd** %94, %struct.iwl_device_cmd*** %16, align 8
  %95 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %8, align 8
  %96 = load %struct.iwl_device_cmd**, %struct.iwl_device_cmd*** %16, align 8
  store %struct.iwl_device_cmd* %95, %struct.iwl_device_cmd** %96, align 8
  %97 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %98 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %97, i32 0, i32 7
  %99 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %100 = call i32 @__skb_queue_tail(i32* %98, %struct.sk_buff* %99)
  %101 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %102 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %101, i32 0, i32 3
  %103 = call i32 @spin_unlock(i32* %102)
  store i32 0, i32* %5, align 4
  br label %228

104:                                              ; preds = %72
  br label %105

105:                                              ; preds = %104, %61
  %106 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %107 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %108 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @iwl_pcie_get_cmd_index(%struct.iwl_txq* %106, i64 %109)
  store i32 %110, i32* %14, align 4
  %111 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %112 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %113 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %112, i32 0, i32 6
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  store %struct.sk_buff* %111, %struct.sk_buff** %118, align 8
  %119 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %8, align 8
  %120 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %121 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %120, i32 0, i32 6
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  store %struct.iwl_device_cmd* %119, %struct.iwl_device_cmd** %126, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @QUEUE_TO_SEQ(i32 %127)
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @INDEX_TO_SEQ(i32 %129)
  %131 = or i32 %128, %130
  %132 = call i32 @cpu_to_le16(i32 %131)
  %133 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %8, align 8
  %134 = getelementptr inbounds %struct.iwl_device_cmd, %struct.iwl_device_cmd* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 8
  %136 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %137 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %136, i32 0, i32 6
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  store %struct.iwl_cmd_meta* %142, %struct.iwl_cmd_meta** %11, align 8
  %143 = load %struct.iwl_cmd_meta*, %struct.iwl_cmd_meta** %11, align 8
  %144 = getelementptr inbounds %struct.iwl_cmd_meta, %struct.iwl_cmd_meta* %143, i32 0, i32 0
  store i64 0, i64* %144, align 8
  %145 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %146 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %147 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %8, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %149 = load %struct.iwl_cmd_meta*, %struct.iwl_cmd_meta** %11, align 8
  %150 = call i8* @iwl_pcie_gen2_build_tfd(%struct.iwl_trans* %145, %struct.iwl_txq* %146, %struct.iwl_device_cmd* %147, %struct.sk_buff* %148, %struct.iwl_cmd_meta* %149)
  store i8* %150, i8** %15, align 8
  %151 = load i8*, i8** %15, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %157, label %153

153:                                              ; preds = %105
  %154 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %155 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %154, i32 0, i32 3
  %156 = call i32 @spin_unlock(i32* %155)
  store i32 -1, i32* %5, align 4
  br label %228

157:                                              ; preds = %105
  %158 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %159 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %158, i32 0, i32 0
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @IWL_DEVICE_FAMILY_22560, align 8
  %164 = icmp sge i64 %162, %163
  br i1 %164, label %165, label %175

165:                                              ; preds = %157
  %166 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %8, align 8
  %167 = getelementptr inbounds %struct.iwl_device_cmd, %struct.iwl_device_cmd* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to i8*
  %170 = bitcast i8* %169 to %struct.iwl_tx_cmd_gen3*
  store %struct.iwl_tx_cmd_gen3* %170, %struct.iwl_tx_cmd_gen3** %17, align 8
  %171 = load %struct.iwl_tx_cmd_gen3*, %struct.iwl_tx_cmd_gen3** %17, align 8
  %172 = getelementptr inbounds %struct.iwl_tx_cmd_gen3, %struct.iwl_tx_cmd_gen3* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @le16_to_cpu(i32 %173)
  store i32 %174, i32* %13, align 4
  br label %185

175:                                              ; preds = %157
  %176 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %8, align 8
  %177 = getelementptr inbounds %struct.iwl_device_cmd, %struct.iwl_device_cmd* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = inttoptr i64 %178 to i8*
  %180 = bitcast i8* %179 to %struct.iwl_tx_cmd_gen2*
  store %struct.iwl_tx_cmd_gen2* %180, %struct.iwl_tx_cmd_gen2** %18, align 8
  %181 = load %struct.iwl_tx_cmd_gen2*, %struct.iwl_tx_cmd_gen2** %18, align 8
  %182 = getelementptr inbounds %struct.iwl_tx_cmd_gen2, %struct.iwl_tx_cmd_gen2* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @le16_to_cpu(i32 %183)
  store i32 %184, i32* %13, align 4
  br label %185

185:                                              ; preds = %175, %165
  %186 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %10, align 8
  %187 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %188 = load i32, i32* %13, align 4
  %189 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %190 = load i8*, i8** %15, align 8
  %191 = call i32 @iwl_pcie_gen2_get_num_tbs(%struct.iwl_trans* %189, i8* %190)
  %192 = call i32 @iwl_pcie_gen2_update_byte_tbl(%struct.iwl_trans_pcie* %186, %struct.iwl_txq* %187, i32 %188, i32 %191)
  %193 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %194 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %197 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = icmp eq i64 %195, %198
  br i1 %199, label %200, label %214

200:                                              ; preds = %185
  %201 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %202 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %201, i32 0, i32 4
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %214

205:                                              ; preds = %200
  %206 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %207 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %206, i32 0, i32 5
  %208 = load i64, i64* @jiffies, align 8
  %209 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %210 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %209, i32 0, i32 4
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %208, %211
  %213 = call i32 @mod_timer(i32* %207, i64 %212)
  br label %214

214:                                              ; preds = %205, %200, %185
  %215 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %216 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %217 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = call i64 @iwl_queue_inc_wrap(%struct.iwl_trans* %215, i64 %218)
  %220 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %221 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %220, i32 0, i32 1
  store i64 %219, i64* %221, align 8
  %222 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %223 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %224 = call i32 @iwl_pcie_gen2_txq_inc_wr_ptr(%struct.iwl_trans* %222, %struct.iwl_txq* %223)
  %225 = load %struct.iwl_txq*, %struct.iwl_txq** %12, align 8
  %226 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %225, i32 0, i32 3
  %227 = call i32 @spin_unlock(i32* %226)
  store i32 0, i32* %5, align 4
  br label %228

228:                                              ; preds = %214, %153, %83, %58, %39
  %229 = load i32, i32* %5, align 4
  ret i32 %229
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i64 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i64 @skb_is_nonlinear(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @IWL_PCIE_MAX_FRAGS(%struct.iwl_trans_pcie*) #1

declare dso_local i64 @__skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @iwl_queue_space(%struct.iwl_trans*, %struct.iwl_txq*) #1

declare dso_local i32 @iwl_stop_queue(%struct.iwl_trans*, %struct.iwl_txq*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iwl_pcie_get_cmd_index(%struct.iwl_txq*, i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @QUEUE_TO_SEQ(i32) #1

declare dso_local i32 @INDEX_TO_SEQ(i32) #1

declare dso_local i8* @iwl_pcie_gen2_build_tfd(%struct.iwl_trans*, %struct.iwl_txq*, %struct.iwl_device_cmd*, %struct.sk_buff*, %struct.iwl_cmd_meta*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @iwl_pcie_gen2_update_byte_tbl(%struct.iwl_trans_pcie*, %struct.iwl_txq*, i32, i32) #1

declare dso_local i32 @iwl_pcie_gen2_get_num_tbs(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @iwl_queue_inc_wrap(%struct.iwl_trans*, i64) #1

declare dso_local i32 @iwl_pcie_gen2_txq_inc_wr_ptr(%struct.iwl_trans*, %struct.iwl_txq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
