; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_irq_msix_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_irq_msix_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msix_entry = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, i32, i32, i32, %struct.isr_statistics, %struct.iwl_trans* }
%struct.TYPE_5__ = type { i32 }
%struct.isr_statistics = type { i32, i32, i32, i32, i32, i32 }
%struct.iwl_trans = type { i32, %struct.TYPE_6__, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }

@CSR_MSIX_FH_INT_CAUSES_AD = common dso_local global i32 0, align 4
@CSR_MSIX_HW_INT_CAUSES_AD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Ignore interrupt, inta == 0\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@IWL_DL_ISR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"ISR inta_fh 0x%08x, enabled (sw) 0x%08x (hw) 0x%08x\0A\00", align 1
@CSR_MSIX_FH_INT_MASK_AD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"We got a masked interrupt (0x%08x)\0A\00", align 1
@IWL_SHARED_IRQ_NON_RX = common dso_local global i32 0, align 4
@MSIX_FH_INT_CAUSES_Q0 = common dso_local global i32 0, align 4
@IWL_SHARED_IRQ_FIRST_RSS = common dso_local global i32 0, align 4
@MSIX_FH_INT_CAUSES_Q1 = common dso_local global i32 0, align 4
@MSIX_FH_INT_CAUSES_D2S_CH0_NUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"uCode load interrupt\0A\00", align 1
@MSIX_FH_INT_CAUSES_FH_ERR = common dso_local global i32 0, align 4
@MSIX_HW_INT_CAUSES_REG_SW_ERR = common dso_local global i32 0, align 4
@MSIX_HW_INT_CAUSES_REG_SW_ERR_V2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Microcode SW error detected. Restarting 0x%X.\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"ISR inta_hw 0x%08x, enabled (sw) 0x%08x (hw) 0x%08x\0A\00", align 1
@CSR_MSIX_HW_INT_MASK_AD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"We got a masked interrupt 0x%08x\0A\00", align 1
@MSIX_HW_INT_CAUSES_REG_ALIVE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"Alive interrupt\0A\00", align 1
@IWL_DEVICE_FAMILY_22560 = common dso_local global i64 0, align 8
@MSIX_HW_INT_CAUSES_REG_IPC = common dso_local global i32 0, align 4
@CSR_IML_RESP_ADDR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"IML transfer status: %d\0A\00", align 1
@IWL_IMAGE_RESP_FAIL = common dso_local global i32 0, align 4
@MSIX_HW_INT_CAUSES_REG_WAKEUP = common dso_local global i32 0, align 4
@IWL_D3_SLEEP_STATUS_SUSPEND = common dso_local global i32 0, align 4
@IWL_D3_SLEEP_STATUS_RESUME = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"Sx interrupt: sleep notification = 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Wakeup interrupt\0A\00", align 1
@MSIX_HW_INT_CAUSES_REG_IML = common dso_local global i32 0, align 4
@MSIX_HW_INT_CAUSES_REG_CT_KILL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"Microcode CT kill error detected.\0A\00", align 1
@MSIX_HW_INT_CAUSES_REG_RF_KILL = common dso_local global i32 0, align 4
@MSIX_HW_INT_CAUSES_REG_HW_ERR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [38 x i8] c"Hardware error detected. Restarting.\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_pcie_irq_msix_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.msix_entry*, align 8
  %7 = alloca %struct.iwl_trans_pcie*, align 8
  %8 = alloca %struct.iwl_trans*, align 8
  %9 = alloca %struct.isr_statistics*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.msix_entry*
  store %struct.msix_entry* %16, %struct.msix_entry** %6, align 8
  %17 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %18 = call %struct.iwl_trans_pcie* @iwl_pcie_get_trans_pcie(%struct.msix_entry* %17)
  store %struct.iwl_trans_pcie* %18, %struct.iwl_trans_pcie** %7, align 8
  %19 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %20 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %19, i32 0, i32 11
  %21 = load %struct.iwl_trans*, %struct.iwl_trans** %20, align 8
  store %struct.iwl_trans* %21, %struct.iwl_trans** %8, align 8
  %22 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %23 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %22, i32 0, i32 10
  store %struct.isr_statistics* %23, %struct.isr_statistics** %9, align 8
  %24 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %25 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %24, i32 0, i32 0
  %26 = call i32 @lock_map_acquire(i32* %25)
  %27 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %28 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %27, i32 0, i32 9
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %31 = load i32, i32* @CSR_MSIX_FH_INT_CAUSES_AD, align 4
  %32 = call i32 @iwl_read32(%struct.iwl_trans* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %34 = load i32, i32* @CSR_MSIX_HW_INT_CAUSES_AD, align 4
  %35 = call i32 @iwl_read32(%struct.iwl_trans* %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %37 = load i32, i32* @CSR_MSIX_FH_INT_CAUSES_AD, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @iwl_write32(%struct.iwl_trans* %36, i32 %37, i32 %38)
  %40 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %41 = load i32, i32* @CSR_MSIX_HW_INT_CAUSES_AD, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @iwl_write32(%struct.iwl_trans* %40, i32 %41, i32 %42)
  %44 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %45 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %44, i32 0, i32 9
  %46 = call i32 @spin_unlock(i32* %45)
  %47 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %48 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @trace_iwlwifi_dev_irq_msix(i32 %49, %struct.msix_entry* %50, i32 1, i32 %51, i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %2
  %63 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %64 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_DEBUG_ISR(%struct.iwl_trans* %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %66 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %65, i32 0, i32 0
  %67 = call i32 @lock_map_release(i32* %66)
  %68 = load i32, i32* @IRQ_NONE, align 4
  store i32 %68, i32* %3, align 4
  br label %382

69:                                               ; preds = %2
  %70 = load i32, i32* @IWL_DL_ISR, align 4
  %71 = call i64 @iwl_have_debug_level(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %100

73:                                               ; preds = %69
  %74 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %77 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %80 = load i32, i32* @CSR_MSIX_FH_INT_MASK_AD, align 4
  %81 = call i32 @iwl_read32(%struct.iwl_trans* %79, i32 %80)
  %82 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_DEBUG_ISR(%struct.iwl_trans* %74, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %78, i32 %81)
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %85 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = xor i32 %86, -1
  %88 = and i32 %83, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %73
  %91 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %94 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = xor i32 %95, -1
  %97 = and i32 %92, %96
  %98 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_DEBUG_ISR(%struct.iwl_trans* %91, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %90, %73
  br label %100

100:                                              ; preds = %99, %69
  %101 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %102 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %10, align 4
  %106 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %107 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @IWL_SHARED_IRQ_NON_RX, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %100
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @MSIX_FH_INT_CAUSES_Q0, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = call i32 (...) @local_bh_disable()
  %119 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %120 = call i32 @iwl_pcie_rx_handle(%struct.iwl_trans* %119, i32 0)
  %121 = call i32 (...) @local_bh_enable()
  br label %122

122:                                              ; preds = %117, %112, %100
  %123 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %124 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @IWL_SHARED_IRQ_FIRST_RSS, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %122
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @MSIX_FH_INT_CAUSES_Q1, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = call i32 (...) @local_bh_disable()
  %136 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %137 = call i32 @iwl_pcie_rx_handle(%struct.iwl_trans* %136, i32 1)
  %138 = call i32 (...) @local_bh_enable()
  br label %139

139:                                              ; preds = %134, %129, %122
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* @MSIX_FH_INT_CAUSES_D2S_CH0_NUM, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %156

144:                                              ; preds = %139
  %145 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %146 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_DEBUG_ISR(%struct.iwl_trans* %145, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %147 = load %struct.isr_statistics*, %struct.isr_statistics** %9, align 8
  %148 = getelementptr inbounds %struct.isr_statistics, %struct.isr_statistics* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 4
  %151 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %152 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %151, i32 0, i32 2
  store i32 1, i32* %152, align 8
  %153 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %154 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %153, i32 0, i32 8
  %155 = call i32 @wake_up(i32* %154)
  br label %156

156:                                              ; preds = %144, %139
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* @MSIX_FH_INT_CAUSES_FH_ERR, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %171, label %161

161:                                              ; preds = %156
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* @MSIX_HW_INT_CAUSES_REG_SW_ERR, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %161
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* @MSIX_HW_INT_CAUSES_REG_SW_ERR_V2, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %166, %161, %156
  %172 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %173 = load i32, i32* %10, align 4
  %174 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %172, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %173)
  %175 = load %struct.isr_statistics*, %struct.isr_statistics** %9, align 8
  %176 = getelementptr inbounds %struct.isr_statistics, %struct.isr_statistics* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 4
  %179 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %180 = call i32 @iwl_pcie_irq_handle_error(%struct.iwl_trans* %179)
  br label %181

181:                                              ; preds = %171, %166
  %182 = load i32, i32* @IWL_DL_ISR, align 4
  %183 = call i64 @iwl_have_debug_level(i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %212

185:                                              ; preds = %181
  %186 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %187 = load i32, i32* %11, align 4
  %188 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %189 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %192 = load i32, i32* @CSR_MSIX_HW_INT_MASK_AD, align 4
  %193 = call i32 @iwl_read32(%struct.iwl_trans* %191, i32 %192)
  %194 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_DEBUG_ISR(%struct.iwl_trans* %186, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %187, i32 %190, i32 %193)
  %195 = load i32, i32* %11, align 4
  %196 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %197 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = xor i32 %198, -1
  %200 = and i32 %195, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %211

202:                                              ; preds = %185
  %203 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %204 = load i32, i32* %11, align 4
  %205 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %206 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = xor i32 %207, -1
  %209 = and i32 %204, %208
  %210 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_DEBUG_ISR(%struct.iwl_trans* %203, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %209)
  br label %211

211:                                              ; preds = %202, %185
  br label %212

212:                                              ; preds = %211, %181
  %213 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %214 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %11, align 4
  %217 = and i32 %216, %215
  store i32 %217, i32* %11, align 4
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* @MSIX_HW_INT_CAUSES_REG_ALIVE, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %242

222:                                              ; preds = %212
  %223 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %224 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_DEBUG_ISR(%struct.iwl_trans* %223, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %225 = load %struct.isr_statistics*, %struct.isr_statistics** %9, align 8
  %226 = getelementptr inbounds %struct.isr_statistics, %struct.isr_statistics* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 4
  %229 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %230 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %229, i32 0, i32 2
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %222
  %236 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %237 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %238 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %237, i32 0, i32 7
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @iwl_pcie_rxmq_restock(%struct.iwl_trans* %236, i32 %239)
  br label %241

241:                                              ; preds = %235, %222
  br label %242

242:                                              ; preds = %241, %212
  %243 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %244 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %243, i32 0, i32 2
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @IWL_DEVICE_FAMILY_22560, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %273

250:                                              ; preds = %242
  %251 = load i32, i32* %11, align 4
  %252 = load i32, i32* @MSIX_HW_INT_CAUSES_REG_IPC, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %273

255:                                              ; preds = %250
  %256 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %257 = load i32, i32* @CSR_IML_RESP_ADDR, align 4
  %258 = call i32 @iwl_read32(%struct.iwl_trans* %256, i32 %257)
  store i32 %258, i32* %12, align 4
  %259 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %260 = load i32, i32* %12, align 4
  %261 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_DEBUG_ISR(%struct.iwl_trans* %259, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %260)
  %262 = load i32, i32* %12, align 4
  %263 = load i32, i32* @IWL_IMAGE_RESP_FAIL, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %272

265:                                              ; preds = %255
  %266 = load %struct.isr_statistics*, %struct.isr_statistics** %9, align 8
  %267 = getelementptr inbounds %struct.isr_statistics, %struct.isr_statistics* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %267, align 4
  %270 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %271 = call i32 @iwl_pcie_irq_handle_error(%struct.iwl_trans* %270)
  br label %272

272:                                              ; preds = %265, %255
  br label %314

273:                                              ; preds = %250, %242
  %274 = load i32, i32* %11, align 4
  %275 = load i32, i32* @MSIX_HW_INT_CAUSES_REG_WAKEUP, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %313

278:                                              ; preds = %273
  %279 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %280 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %279, i32 0, i32 6
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @le32_to_cpu(i32 %283)
  store i32 %284, i32* %13, align 4
  %285 = load i32, i32* %13, align 4
  %286 = load i32, i32* @IWL_D3_SLEEP_STATUS_SUSPEND, align 4
  %287 = icmp eq i32 %285, %286
  br i1 %287, label %292, label %288

288:                                              ; preds = %278
  %289 = load i32, i32* %13, align 4
  %290 = load i32, i32* @IWL_D3_SLEEP_STATUS_RESUME, align 4
  %291 = icmp eq i32 %289, %290
  br i1 %291, label %292, label %301

292:                                              ; preds = %288, %278
  %293 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %294 = load i32, i32* %13, align 4
  %295 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_DEBUG_ISR(%struct.iwl_trans* %293, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %294)
  %296 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %297 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %296, i32 0, i32 4
  store i32 1, i32* %297, align 8
  %298 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %299 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %298, i32 0, i32 5
  %300 = call i32 @wake_up(i32* %299)
  br label %312

301:                                              ; preds = %288
  %302 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %303 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_DEBUG_ISR(%struct.iwl_trans* %302, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %304 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %305 = call i32 @iwl_pcie_rxq_check_wrptr(%struct.iwl_trans* %304)
  %306 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %307 = call i32 @iwl_pcie_txq_check_wrptrs(%struct.iwl_trans* %306)
  %308 = load %struct.isr_statistics*, %struct.isr_statistics** %9, align 8
  %309 = getelementptr inbounds %struct.isr_statistics, %struct.isr_statistics* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %309, align 4
  br label %312

312:                                              ; preds = %301, %292
  br label %313

313:                                              ; preds = %312, %273
  br label %314

314:                                              ; preds = %313, %272
  %315 = load i32, i32* %11, align 4
  %316 = load i32, i32* @MSIX_HW_INT_CAUSES_REG_IML, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %337

319:                                              ; preds = %314
  %320 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %321 = load i32, i32* @CSR_IML_RESP_ADDR, align 4
  %322 = call i32 @iwl_read32(%struct.iwl_trans* %320, i32 %321)
  store i32 %322, i32* %14, align 4
  %323 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %324 = load i32, i32* %14, align 4
  %325 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_DEBUG_ISR(%struct.iwl_trans* %323, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %324)
  %326 = load i32, i32* %14, align 4
  %327 = load i32, i32* @IWL_IMAGE_RESP_FAIL, align 4
  %328 = icmp eq i32 %326, %327
  br i1 %328, label %329, label %336

329:                                              ; preds = %319
  %330 = load %struct.isr_statistics*, %struct.isr_statistics** %9, align 8
  %331 = getelementptr inbounds %struct.isr_statistics, %struct.isr_statistics* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %331, align 4
  %334 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %335 = call i32 @iwl_pcie_irq_handle_error(%struct.iwl_trans* %334)
  br label %336

336:                                              ; preds = %329, %319
  br label %337

337:                                              ; preds = %336, %314
  %338 = load i32, i32* %11, align 4
  %339 = load i32, i32* @MSIX_HW_INT_CAUSES_REG_CT_KILL, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %349

342:                                              ; preds = %337
  %343 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %344 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %343, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %345 = load %struct.isr_statistics*, %struct.isr_statistics** %9, align 8
  %346 = getelementptr inbounds %struct.isr_statistics, %struct.isr_statistics* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %346, align 4
  br label %349

349:                                              ; preds = %342, %337
  %350 = load i32, i32* %11, align 4
  %351 = load i32, i32* @MSIX_HW_INT_CAUSES_REG_RF_KILL, align 4
  %352 = and i32 %350, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %357

354:                                              ; preds = %349
  %355 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %356 = call i32 @iwl_pcie_handle_rfkill_irq(%struct.iwl_trans* %355)
  br label %357

357:                                              ; preds = %354, %349
  %358 = load i32, i32* %11, align 4
  %359 = load i32, i32* @MSIX_HW_INT_CAUSES_REG_HW_ERR, align 4
  %360 = and i32 %358, %359
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %374

362:                                              ; preds = %357
  %363 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %364 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %363, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0))
  %365 = load %struct.isr_statistics*, %struct.isr_statistics** %9, align 8
  %366 = getelementptr inbounds %struct.isr_statistics, %struct.isr_statistics* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %366, align 4
  %369 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %370 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %370, i32 0, i32 0
  store i32 1, i32* %371, align 4
  %372 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %373 = call i32 @iwl_pcie_irq_handle_error(%struct.iwl_trans* %372)
  br label %374

374:                                              ; preds = %362, %357
  %375 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %376 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %377 = call i32 @iwl_pcie_clear_irq(%struct.iwl_trans* %375, %struct.msix_entry* %376)
  %378 = load %struct.iwl_trans*, %struct.iwl_trans** %8, align 8
  %379 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %378, i32 0, i32 0
  %380 = call i32 @lock_map_release(i32* %379)
  %381 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %381, i32* %3, align 4
  br label %382

382:                                              ; preds = %374, %62
  %383 = load i32, i32* %3, align 4
  ret i32 %383
}

declare dso_local %struct.iwl_trans_pcie* @iwl_pcie_get_trans_pcie(%struct.msix_entry*) #1

declare dso_local i32 @lock_map_acquire(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @iwl_read32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @trace_iwlwifi_dev_irq_msix(i32, %struct.msix_entry*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IWL_DEBUG_ISR(%struct.iwl_trans*, i8*, ...) #1

declare dso_local i32 @lock_map_release(i32*) #1

declare dso_local i64 @iwl_have_debug_level(i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @iwl_pcie_rx_handle(%struct.iwl_trans*, i32) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, ...) #1

declare dso_local i32 @iwl_pcie_irq_handle_error(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_rxmq_restock(%struct.iwl_trans*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @iwl_pcie_rxq_check_wrptr(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_txq_check_wrptrs(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_handle_rfkill_irq(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_clear_irq(%struct.iwl_trans*, %struct.msix_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
