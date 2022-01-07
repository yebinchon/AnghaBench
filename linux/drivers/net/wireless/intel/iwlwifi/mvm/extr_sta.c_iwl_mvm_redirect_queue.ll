; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_redirect_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_redirect_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.iwl_mvm_txq = type { i32 }
%struct.iwl_scd_txq_cfg_cmd = type { i32, i32, i32, i32, i32 }

@SCD_CFG_DISABLE_QUEUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"No redirection needed on TXQ #%d\0A\00", align 1
@iwl_mvm_ac_to_tx_fifo = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Redirecting TXQ #%d to FIFO #%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Error draining queue %d before reconfig\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SCD_QUEUE_CFG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed SCD disable TXQ %d (ret=%d)\0A\00", align 1
@IWL_FRAME_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i32, i32, i32, i32, i32, i32, %struct.iwl_mvm_txq*)* @iwl_mvm_redirect_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_redirect_queue(%struct.iwl_mvm* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.iwl_mvm_txq* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_mvm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.iwl_mvm_txq*, align 8
  %18 = alloca %struct.iwl_scd_txq_cfg_cmd, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.iwl_mvm_txq* %7, %struct.iwl_mvm_txq** %17, align 8
  %21 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, %struct.iwl_scd_txq_cfg_cmd* %18, i32 0, i32 0
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, %struct.iwl_scd_txq_cfg_cmd* %18, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, %struct.iwl_scd_txq_cfg_cmd* %18, i32 0, i32 2
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, %struct.iwl_scd_txq_cfg_cmd* %18, i32 0, i32 3
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, %struct.iwl_scd_txq_cfg_cmd* %18, i32 0, i32 4
  %27 = load i32, i32* @SCD_CFG_DISABLE_QUEUE, align 4
  store i32 %27, i32* %26, align 4
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %29 = call i32 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %28)
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %8
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %186

35:                                               ; preds = %8
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %38 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sle i32 %36, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %35
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm* %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %51)
  store i32 0, i32* %9, align 4
  br label %186

53:                                               ; preds = %46, %35
  %54 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %55 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, %struct.iwl_scd_txq_cfg_cmd* %18, i32 0, i32 2
  store i32 %61, i32* %62, align 4
  %63 = load i32*, i32** @iwl_mvm_ac_to_tx_fifo, align 8
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %65 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %63, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, %struct.iwl_scd_txq_cfg_cmd* %18, i32 0, i32 3
  store i32 %74, i32* %75, align 4
  %76 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %77 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, %struct.iwl_scd_txq_cfg_cmd* %18, i32 0, i32 1
  store i32 %83, i32* %84, align 4
  %85 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %86 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @hweight16(i32 %92)
  %94 = icmp sgt i32 %93, 1
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %19, align 4
  %96 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i32*, i32** @iwl_mvm_ac_to_tx_fifo, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm* %96, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %102)
  %104 = load %struct.iwl_mvm_txq*, %struct.iwl_mvm_txq** %17, align 8
  %105 = getelementptr inbounds %struct.iwl_mvm_txq, %struct.iwl_mvm_txq* %104, i32 0, i32 0
  store i32 1, i32* %105, align 4
  %106 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %107 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @BIT(i32 %109)
  %111 = call i32 @iwl_trans_wait_tx_queues_empty(i32 %108, i32 %110)
  store i32 %111, i32* %20, align 4
  %112 = load i32, i32* %20, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %53
  %115 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_ERR(%struct.iwl_mvm* %115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @EIO, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %20, align 4
  br label %182

120:                                              ; preds = %53
  %121 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %122 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @iwl_trans_txq_disable(i32 %123, i32 %124, i32 0)
  %126 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %127 = load i32, i32* @SCD_QUEUE_CFG, align 4
  %128 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %126, i32 %127, i32 0, i32 20, %struct.iwl_scd_txq_cfg_cmd* %18)
  store i32 %128, i32* %20, align 4
  %129 = load i32, i32* %20, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %120
  %132 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %20, align 4
  %135 = call i32 (%struct.iwl_mvm*, i8*, i32, ...) @IWL_ERR(%struct.iwl_mvm* %132, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %131, %120
  %137 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %138 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %15, align 4
  %143 = call i32 @iwl_trans_txq_enable_cfg(i32 %139, i32 %140, i32 %141, i32* null, i32 %142)
  %144 = load i32, i32* %12, align 4
  %145 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %146 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %145, i32 0, i32 1
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  store i32 %144, i32* %151, align 4
  %152 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %153 = load i32, i32* %11, align 4
  %154 = load i32*, i32** @iwl_mvm_ac_to_tx_fifo, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.iwl_scd_txq_cfg_cmd, %struct.iwl_scd_txq_cfg_cmd* %18, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* @IWL_FRAME_LIMIT, align 4
  %163 = load i32, i32* %14, align 4
  %164 = call i32 @iwl_mvm_reconfig_scd(%struct.iwl_mvm* %152, i32 %153, i32 %158, i32 %160, i32 %161, i32 %162, i32 %163)
  %165 = load i32, i32* %13, align 4
  %166 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %167 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %166, i32 0, i32 1
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  store i32 %165, i32* %172, align 4
  %173 = load i32, i32* %19, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %136
  %176 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %177 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* %11, align 4
  %180 = call i32 @iwl_trans_txq_set_shared_mode(i32 %178, i32 %179, i32 1)
  br label %181

181:                                              ; preds = %175, %136
  br label %182

182:                                              ; preds = %181, %114
  %183 = load %struct.iwl_mvm_txq*, %struct.iwl_mvm_txq** %17, align 8
  %184 = getelementptr inbounds %struct.iwl_mvm_txq, %struct.iwl_mvm_txq* %183, i32 0, i32 0
  store i32 0, i32* %184, align 4
  %185 = load i32, i32* %20, align 4
  store i32 %185, i32* %9, align 4
  br label %186

186:                                              ; preds = %182, %49, %32
  %187 = load i32, i32* %9, align 4
  ret i32 %187
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm*) #1

declare dso_local i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm*, i8*, i32, ...) #1

declare dso_local i32 @hweight16(i32) #1

declare dso_local i32 @iwl_trans_wait_tx_queues_empty(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32, ...) #1

declare dso_local i32 @iwl_trans_txq_disable(i32, i32, i32) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_scd_txq_cfg_cmd*) #1

declare dso_local i32 @iwl_trans_txq_enable_cfg(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @iwl_mvm_reconfig_scd(%struct.iwl_mvm*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @iwl_trans_txq_set_shared_mode(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
