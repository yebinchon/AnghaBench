; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_trans_pcie = type { i32, i32, i32, i32, i32, i32, %struct.isr_statistics }
%struct.isr_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IWL_DL_ISR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"ISR inta 0x%08x, enabled 0x%08x(sw), enabled(hw) 0x%08x, fh 0x%08x\0A\00", align 1
@CSR_INT_MASK = common dso_local global i32 0, align 4
@CSR_FH_INT_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"We got a masked interrupt (0x%08x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Ignore interrupt, inta == 0\0A\00", align 1
@STATUS_INT_ENABLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"HARDWARE GONE?? INTA == 0x%08x\0A\00", align 1
@CSR_INT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"inta 0x%08x, enabled 0x%08x\0A\00", align 1
@CSR_INT_BIT_HW_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Hardware error detected.  Restarting.\0A\00", align 1
@CSR_INT_BIT_SCD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"Scheduler finished to transmit the frame/frames.\0A\00", align 1
@CSR_INT_BIT_ALIVE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"Alive interrupt\0A\00", align 1
@CSR_INT_BIT_RF_KILL = common dso_local global i32 0, align 4
@CSR_INT_BIT_CT_KILL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"Microcode CT kill error detected.\0A\00", align 1
@CSR_INT_BIT_SW_ERR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [48 x i8] c"Microcode SW error detected.  Restarting 0x%X.\0A\00", align 1
@CSR_INT_BIT_WAKEUP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"Wakeup interrupt\0A\00", align 1
@CSR_INT_BIT_FH_RX = common dso_local global i32 0, align 4
@CSR_INT_BIT_SW_RX = common dso_local global i32 0, align 4
@CSR_INT_BIT_RX_PERIODIC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"Rx interrupt\0A\00", align 1
@CSR_FH_INT_RX_MASK = common dso_local global i32 0, align 4
@CSR_INT_PERIODIC_REG = common dso_local global i32 0, align 4
@CSR_INT_PERIODIC_DIS = common dso_local global i32 0, align 4
@CSR_INT_PERIODIC_ENA = common dso_local global i32 0, align 4
@CSR_INT_BIT_FH_TX = common dso_local global i32 0, align 4
@CSR_FH_INT_TX_MASK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [22 x i8] c"uCode load interrupt\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Unhandled INTA bits 0x%08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Disabled INTA bits 0x%08x were pending\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_pcie_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iwl_trans*, align 8
  %7 = alloca %struct.iwl_trans_pcie*, align 8
  %8 = alloca %struct.isr_statistics*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.iwl_trans*
  store %struct.iwl_trans* %12, %struct.iwl_trans** %6, align 8
  %13 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %14 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %13)
  store %struct.iwl_trans_pcie* %14, %struct.iwl_trans_pcie** %7, align 8
  %15 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %16 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %15, i32 0, i32 6
  store %struct.isr_statistics* %16, %struct.isr_statistics** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %18 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %17, i32 0, i32 0
  %19 = call i32 @lock_map_acquire(i32* %18)
  %20 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %21 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %20, i32 0, i32 2
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %24 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %30 = call i32 @iwl_pcie_int_cause_ict(%struct.iwl_trans* %29)
  store i32 %30, i32* %9, align 4
  br label %34

31:                                               ; preds = %2
  %32 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %33 = call i32 @iwl_pcie_int_cause_non_ict(%struct.iwl_trans* %32)
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* @IWL_DL_ISR, align 4
  %36 = call i64 @iwl_have_debug_level(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %34
  %39 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %42 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %45 = load i32, i32* @CSR_INT_MASK, align 4
  %46 = call i32 @iwl_read32(%struct.iwl_trans* %44, i32 %45)
  %47 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %48 = load i32, i32* @CSR_FH_INT_STATUS, align 4
  %49 = call i32 @iwl_read32(%struct.iwl_trans* %47, i32 %48)
  %50 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_DEBUG_ISR(%struct.iwl_trans* %39, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43, i32 %46, i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %53 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %51, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %38
  %59 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %62 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %60, %64
  %66 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_DEBUG_ISR(%struct.iwl_trans* %59, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %58, %38
  br label %68

68:                                               ; preds = %67, %34
  %69 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %70 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %9, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %68
  %81 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %82 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_DEBUG_ISR(%struct.iwl_trans* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* @STATUS_INT_ENABLED, align 4
  %84 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %85 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %84, i32 0, i32 1
  %86 = call i64 @test_bit(i32 %83, i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %90 = call i32 @_iwl_enable_interrupts(%struct.iwl_trans* %89)
  br label %91

91:                                               ; preds = %88, %80
  %92 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %93 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %92, i32 0, i32 2
  %94 = call i32 @spin_unlock(i32* %93)
  %95 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %96 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %95, i32 0, i32 0
  %97 = call i32 @lock_map_release(i32* %96)
  %98 = load i32, i32* @IRQ_NONE, align 4
  store i32 %98, i32* %3, align 4
  br label %443

99:                                               ; preds = %68
  %100 = load i32, i32* %9, align 4
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %106, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %9, align 4
  %104 = and i32 %103, -16
  %105 = icmp eq i32 %104, -1515870816
  br label %106

106:                                              ; preds = %102, %99
  %107 = phi i1 [ true, %99 ], [ %105, %102 ]
  %108 = zext i1 %107 to i32
  %109 = call i64 @unlikely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @IWL_WARN(%struct.iwl_trans* %112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %116 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %115, i32 0, i32 2
  %117 = call i32 @spin_unlock(i32* %116)
  br label %438

118:                                              ; preds = %106
  %119 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %120 = load i32, i32* @CSR_INT, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %123 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = xor i32 %124, -1
  %126 = or i32 %121, %125
  %127 = call i32 @iwl_write32(%struct.iwl_trans* %119, i32 %120, i32 %126)
  %128 = load i32, i32* @IWL_DL_ISR, align 4
  %129 = call i64 @iwl_have_debug_level(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %118
  %132 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %135 = load i32, i32* @CSR_INT_MASK, align 4
  %136 = call i32 @iwl_read32(%struct.iwl_trans* %134, i32 %135)
  %137 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_DEBUG_ISR(%struct.iwl_trans* %132, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %133, i32 %136)
  br label %138

138:                                              ; preds = %131, %118
  %139 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %140 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %139, i32 0, i32 2
  %141 = call i32 @spin_unlock(i32* %140)
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @CSR_INT_BIT_HW_ERR, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %160

146:                                              ; preds = %138
  %147 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %148 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %147, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %149 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %150 = call i32 @iwl_disable_interrupts(%struct.iwl_trans* %149)
  %151 = load %struct.isr_statistics*, %struct.isr_statistics** %8, align 8
  %152 = getelementptr inbounds %struct.isr_statistics, %struct.isr_statistics* %151, i32 0, i32 8
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  %155 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %156 = call i32 @iwl_pcie_irq_handle_error(%struct.iwl_trans* %155)
  %157 = load i32, i32* @CSR_INT_BIT_HW_ERR, align 4
  %158 = load i32, i32* %10, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %10, align 4
  br label %438

160:                                              ; preds = %138
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* @CSR_INT_BIT_SCD, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %160
  %166 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %167 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_DEBUG_ISR(%struct.iwl_trans* %166, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %168 = load %struct.isr_statistics*, %struct.isr_statistics** %8, align 8
  %169 = getelementptr inbounds %struct.isr_statistics, %struct.isr_statistics* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %165, %160
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* @CSR_INT_BIT_ALIVE, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %200

177:                                              ; preds = %172
  %178 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %179 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_DEBUG_ISR(%struct.iwl_trans* %178, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %180 = load %struct.isr_statistics*, %struct.isr_statistics** %8, align 8
  %181 = getelementptr inbounds %struct.isr_statistics, %struct.isr_statistics* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 4
  %184 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %185 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %184, i32 0, i32 2
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %177
  %191 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %192 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %193 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @iwl_pcie_rxmq_restock(%struct.iwl_trans* %191, i32 %194)
  br label %196

196:                                              ; preds = %190, %177
  %197 = load i32, i32* @CSR_INT_BIT_ALIVE, align 4
  %198 = load i32, i32* %10, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %10, align 4
  br label %200

200:                                              ; preds = %196, %172
  %201 = load i32, i32* @CSR_INT_BIT_SCD, align 4
  %202 = load i32, i32* @CSR_INT_BIT_ALIVE, align 4
  %203 = or i32 %201, %202
  %204 = xor i32 %203, -1
  %205 = load i32, i32* %9, align 4
  %206 = and i32 %205, %204
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %9, align 4
  %208 = load i32, i32* @CSR_INT_BIT_RF_KILL, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %200
  %212 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %213 = call i32 @iwl_pcie_handle_rfkill_irq(%struct.iwl_trans* %212)
  %214 = load i32, i32* @CSR_INT_BIT_RF_KILL, align 4
  %215 = load i32, i32* %10, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %10, align 4
  br label %217

217:                                              ; preds = %211, %200
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* @CSR_INT_BIT_CT_KILL, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %232

222:                                              ; preds = %217
  %223 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %224 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %223, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %225 = load %struct.isr_statistics*, %struct.isr_statistics** %8, align 8
  %226 = getelementptr inbounds %struct.isr_statistics, %struct.isr_statistics* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 4
  %229 = load i32, i32* @CSR_INT_BIT_CT_KILL, align 4
  %230 = load i32, i32* %10, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %10, align 4
  br label %232

232:                                              ; preds = %222, %217
  %233 = load i32, i32* %9, align 4
  %234 = load i32, i32* @CSR_INT_BIT_SW_ERR, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %250

237:                                              ; preds = %232
  %238 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %239 = load i32, i32* %9, align 4
  %240 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %238, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i32 %239)
  %241 = load %struct.isr_statistics*, %struct.isr_statistics** %8, align 8
  %242 = getelementptr inbounds %struct.isr_statistics, %struct.isr_statistics* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %242, align 4
  %245 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %246 = call i32 @iwl_pcie_irq_handle_error(%struct.iwl_trans* %245)
  %247 = load i32, i32* @CSR_INT_BIT_SW_ERR, align 4
  %248 = load i32, i32* %10, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %10, align 4
  br label %250

250:                                              ; preds = %237, %232
  %251 = load i32, i32* %9, align 4
  %252 = load i32, i32* @CSR_INT_BIT_WAKEUP, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %269

255:                                              ; preds = %250
  %256 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %257 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_DEBUG_ISR(%struct.iwl_trans* %256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %258 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %259 = call i32 @iwl_pcie_rxq_check_wrptr(%struct.iwl_trans* %258)
  %260 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %261 = call i32 @iwl_pcie_txq_check_wrptrs(%struct.iwl_trans* %260)
  %262 = load %struct.isr_statistics*, %struct.isr_statistics** %8, align 8
  %263 = getelementptr inbounds %struct.isr_statistics, %struct.isr_statistics* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %263, align 4
  %266 = load i32, i32* @CSR_INT_BIT_WAKEUP, align 4
  %267 = load i32, i32* %10, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %10, align 4
  br label %269

269:                                              ; preds = %255, %250
  %270 = load i32, i32* %9, align 4
  %271 = load i32, i32* @CSR_INT_BIT_FH_RX, align 4
  %272 = load i32, i32* @CSR_INT_BIT_SW_RX, align 4
  %273 = or i32 %271, %272
  %274 = load i32, i32* @CSR_INT_BIT_RX_PERIODIC, align 4
  %275 = or i32 %273, %274
  %276 = and i32 %270, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %335

278:                                              ; preds = %269
  %279 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %280 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_DEBUG_ISR(%struct.iwl_trans* %279, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %281 = load i32, i32* %9, align 4
  %282 = load i32, i32* @CSR_INT_BIT_FH_RX, align 4
  %283 = load i32, i32* @CSR_INT_BIT_SW_RX, align 4
  %284 = or i32 %282, %283
  %285 = and i32 %281, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %297

287:                                              ; preds = %278
  %288 = load i32, i32* @CSR_INT_BIT_FH_RX, align 4
  %289 = load i32, i32* @CSR_INT_BIT_SW_RX, align 4
  %290 = or i32 %288, %289
  %291 = load i32, i32* %10, align 4
  %292 = or i32 %291, %290
  store i32 %292, i32* %10, align 4
  %293 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %294 = load i32, i32* @CSR_FH_INT_STATUS, align 4
  %295 = load i32, i32* @CSR_FH_INT_RX_MASK, align 4
  %296 = call i32 @iwl_write32(%struct.iwl_trans* %293, i32 %294, i32 %295)
  br label %297

297:                                              ; preds = %287, %278
  %298 = load i32, i32* %9, align 4
  %299 = load i32, i32* @CSR_INT_BIT_RX_PERIODIC, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %310

302:                                              ; preds = %297
  %303 = load i32, i32* @CSR_INT_BIT_RX_PERIODIC, align 4
  %304 = load i32, i32* %10, align 4
  %305 = or i32 %304, %303
  store i32 %305, i32* %10, align 4
  %306 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %307 = load i32, i32* @CSR_INT, align 4
  %308 = load i32, i32* @CSR_INT_BIT_RX_PERIODIC, align 4
  %309 = call i32 @iwl_write32(%struct.iwl_trans* %306, i32 %307, i32 %308)
  br label %310

310:                                              ; preds = %302, %297
  %311 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %312 = load i32, i32* @CSR_INT_PERIODIC_REG, align 4
  %313 = load i32, i32* @CSR_INT_PERIODIC_DIS, align 4
  %314 = call i32 @iwl_write8(%struct.iwl_trans* %311, i32 %312, i32 %313)
  %315 = load i32, i32* %9, align 4
  %316 = load i32, i32* @CSR_INT_BIT_FH_RX, align 4
  %317 = load i32, i32* @CSR_INT_BIT_SW_RX, align 4
  %318 = or i32 %316, %317
  %319 = and i32 %315, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %326

321:                                              ; preds = %310
  %322 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %323 = load i32, i32* @CSR_INT_PERIODIC_REG, align 4
  %324 = load i32, i32* @CSR_INT_PERIODIC_ENA, align 4
  %325 = call i32 @iwl_write8(%struct.iwl_trans* %322, i32 %323, i32 %324)
  br label %326

326:                                              ; preds = %321, %310
  %327 = load %struct.isr_statistics*, %struct.isr_statistics** %8, align 8
  %328 = getelementptr inbounds %struct.isr_statistics, %struct.isr_statistics* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %328, align 4
  %331 = call i32 (...) @local_bh_disable()
  %332 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %333 = call i32 @iwl_pcie_rx_handle(%struct.iwl_trans* %332, i32 0)
  %334 = call i32 (...) @local_bh_enable()
  br label %335

335:                                              ; preds = %326, %269
  %336 = load i32, i32* %9, align 4
  %337 = load i32, i32* @CSR_INT_BIT_FH_TX, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %359

340:                                              ; preds = %335
  %341 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %342 = load i32, i32* @CSR_FH_INT_STATUS, align 4
  %343 = load i32, i32* @CSR_FH_INT_TX_MASK, align 4
  %344 = call i32 @iwl_write32(%struct.iwl_trans* %341, i32 %342, i32 %343)
  %345 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %346 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_DEBUG_ISR(%struct.iwl_trans* %345, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %347 = load %struct.isr_statistics*, %struct.isr_statistics** %8, align 8
  %348 = getelementptr inbounds %struct.isr_statistics, %struct.isr_statistics* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %348, align 4
  %351 = load i32, i32* @CSR_INT_BIT_FH_TX, align 4
  %352 = load i32, i32* %10, align 4
  %353 = or i32 %352, %351
  store i32 %353, i32* %10, align 4
  %354 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %355 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %354, i32 0, i32 1
  store i32 1, i32* %355, align 4
  %356 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %357 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %356, i32 0, i32 3
  %358 = call i32 @wake_up(i32* %357)
  br label %359

359:                                              ; preds = %340, %335
  %360 = load i32, i32* %9, align 4
  %361 = load i32, i32* %10, align 4
  %362 = xor i32 %361, -1
  %363 = and i32 %360, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %376

365:                                              ; preds = %359
  %366 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %367 = load i32, i32* %9, align 4
  %368 = load i32, i32* %10, align 4
  %369 = xor i32 %368, -1
  %370 = and i32 %367, %369
  %371 = call i32 (%struct.iwl_trans*, i8*, ...) @IWL_ERR(%struct.iwl_trans* %366, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 %370)
  %372 = load %struct.isr_statistics*, %struct.isr_statistics** %8, align 8
  %373 = getelementptr inbounds %struct.isr_statistics, %struct.isr_statistics* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %373, align 4
  br label %376

376:                                              ; preds = %365, %359
  %377 = load i32, i32* %9, align 4
  %378 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %379 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = xor i32 %380, -1
  %382 = and i32 %377, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %393

384:                                              ; preds = %376
  %385 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %386 = load i32, i32* %9, align 4
  %387 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %388 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = xor i32 %389, -1
  %391 = and i32 %386, %390
  %392 = call i32 @IWL_WARN(%struct.iwl_trans* %385, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i32 %391)
  br label %393

393:                                              ; preds = %384, %376
  %394 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %395 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %394, i32 0, i32 2
  %396 = call i32 @spin_lock(i32* %395)
  %397 = load i32, i32* @STATUS_INT_ENABLED, align 4
  %398 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %399 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %398, i32 0, i32 1
  %400 = call i64 @test_bit(i32 %397, i32* %399)
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %405

402:                                              ; preds = %393
  %403 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %404 = call i32 @_iwl_enable_interrupts(%struct.iwl_trans* %403)
  br label %434

405:                                              ; preds = %393
  %406 = load i32, i32* %10, align 4
  %407 = load i32, i32* @CSR_INT_BIT_FH_TX, align 4
  %408 = and i32 %406, %407
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %413

410:                                              ; preds = %405
  %411 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %412 = call i32 @iwl_enable_fw_load_int(%struct.iwl_trans* %411)
  br label %433

413:                                              ; preds = %405
  %414 = load i32, i32* %10, align 4
  %415 = load i32, i32* @CSR_INT_BIT_RF_KILL, align 4
  %416 = and i32 %414, %415
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %421

418:                                              ; preds = %413
  %419 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %420 = call i32 @iwl_enable_rfkill_int(%struct.iwl_trans* %419)
  br label %432

421:                                              ; preds = %413
  %422 = load i32, i32* %10, align 4
  %423 = load i32, i32* @CSR_INT_BIT_ALIVE, align 4
  %424 = load i32, i32* @CSR_INT_BIT_FH_RX, align 4
  %425 = or i32 %423, %424
  %426 = and i32 %422, %425
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %431

428:                                              ; preds = %421
  %429 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %430 = call i32 @iwl_enable_fw_load_int_ctx_info(%struct.iwl_trans* %429)
  br label %431

431:                                              ; preds = %428, %421
  br label %432

432:                                              ; preds = %431, %418
  br label %433

433:                                              ; preds = %432, %410
  br label %434

434:                                              ; preds = %433, %402
  %435 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %7, align 8
  %436 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %435, i32 0, i32 2
  %437 = call i32 @spin_unlock(i32* %436)
  br label %438

438:                                              ; preds = %434, %146, %111
  %439 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %440 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %439, i32 0, i32 0
  %441 = call i32 @lock_map_release(i32* %440)
  %442 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %442, i32* %3, align 4
  br label %443

443:                                              ; preds = %438, %91
  %444 = load i32, i32* %3, align 4
  ret i32 %444
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @lock_map_acquire(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @iwl_pcie_int_cause_ict(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_int_cause_non_ict(%struct.iwl_trans*) #1

declare dso_local i64 @iwl_have_debug_level(i32) #1

declare dso_local i32 @IWL_DEBUG_ISR(%struct.iwl_trans*, i8*, ...) #1

declare dso_local i32 @iwl_read32(%struct.iwl_trans*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @_iwl_enable_interrupts(%struct.iwl_trans*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @lock_map_release(i32*) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, ...) #1

declare dso_local i32 @iwl_disable_interrupts(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_irq_handle_error(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_rxmq_restock(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_pcie_handle_rfkill_irq(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_rxq_check_wrptr(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_txq_check_wrptrs(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_write8(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @iwl_pcie_rx_handle(%struct.iwl_trans*, i32) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @iwl_enable_fw_load_int(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_enable_rfkill_int(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_enable_fw_load_int_ctx_info(%struct.iwl_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
