; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_irq_thread_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_irq_thread_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.mei_txe_hw = type { i32, i32, i32, i32, i32 }
%struct.list_head = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"irq thread: Interrupt Registers HHISR|HISR|SEC=%02X|%04X|%02X\0A\00", align 1
@HHISR_REG = common dso_local global i32 0, align 4
@HISR_REG = common dso_local global i32 0, align 4
@SEC_IPC_HOST_INT_STATUS_REG = common dso_local global i32 0, align 4
@TXE_INTR_READINESS_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Readiness Interrupt was received...\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"we need to start the dev.\0A\00", align 1
@MEI_DEV_RESETTING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"FW not ready: resetting.\0A\00", align 1
@TXE_INTR_ALIVENESS_BIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Aliveness Interrupt: Status: %d\0A\00", align 1
@MEI_PG_EVENT_RECEIVED = common dso_local global i32 0, align 4
@TXE_INTR_OUT_DB_BIT = common dso_local global i32 0, align 4
@MEI_DEV_POWER_DOWN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"mei_irq_read_handler ret = %d.\0A\00", align 1
@TXE_INTR_IN_READY_BIT = common dso_local global i32 0, align 4
@TXE_HBUF_DEPTH = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"mei_irq_write_handler ret = %d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"interrupt thread end ret = %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_txe_irq_thread_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mei_device*, align 8
  %6 = alloca %struct.mei_txe_hw*, align 8
  %7 = alloca %struct.list_head, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.mei_device*
  store %struct.mei_device* %11, %struct.mei_device** %5, align 8
  %12 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %13 = call %struct.mei_txe_hw* @to_txe_hw(%struct.mei_device* %12)
  store %struct.mei_txe_hw* %13, %struct.mei_txe_hw** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %15 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %6, align 8
  %18 = load i32, i32* @HHISR_REG, align 4
  %19 = call i32 @mei_txe_br_reg_read(%struct.mei_txe_hw* %17, i32 %18)
  %20 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %6, align 8
  %21 = load i32, i32* @HISR_REG, align 4
  %22 = call i32 @mei_txe_br_reg_read(%struct.mei_txe_hw* %20, i32 %21)
  %23 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %6, align 8
  %24 = load i32, i32* @SEC_IPC_HOST_INT_STATUS_REG, align 4
  %25 = call i32 @mei_txe_sec_reg_read_silent(%struct.mei_txe_hw* %23, i32 %24)
  %26 = call i32 (i32, i8*, ...) @dev_dbg(i32 %16, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %25)
  %27 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %28 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %27, i32 0, i32 3
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = call i32 @INIT_LIST_HEAD(%struct.list_head* %7)
  %31 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %32 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @to_pci_dev(i32 %33)
  %35 = call i64 @pci_dev_msi_enabled(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %39 = call i32 @mei_txe_check_and_ack_intrs(%struct.mei_device* %38, i32 1)
  br label %40

40:                                               ; preds = %37, %2
  %41 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %42 = call i32 @mei_txe_pending_interrupts(%struct.mei_device* %41)
  %43 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %44 = call i32 @mei_txe_aliveness_get(%struct.mei_device* %43)
  %45 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %6, align 8
  %46 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %48 = call i32 @mei_txe_readiness_get(%struct.mei_device* %47)
  %49 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %6, align 8
  %50 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @TXE_INTR_READINESS_BIT, align 4
  %52 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %6, align 8
  %53 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %52, i32 0, i32 2
  %54 = call i64 @test_and_clear_bit(i32 %51, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %94

56:                                               ; preds = %40
  %57 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %58 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32, i8*, ...) @dev_dbg(i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %6, align 8
  %62 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @mei_txe_readiness_is_sec_rdy(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %56
  %67 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %68 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32, i8*, ...) @dev_dbg(i32 %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %72 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %90

73:                                               ; preds = %56
  %74 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %75 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %77 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @MEI_DEV_RESETTING, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %73
  %82 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %83 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @dev_warn(i32 %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %87 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %86, i32 0, i32 5
  %88 = call i32 @schedule_work(i32* %87)
  br label %207

89:                                               ; preds = %73
  br label %90

90:                                               ; preds = %89, %66
  %91 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %92 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %91, i32 0, i32 7
  %93 = call i32 @wake_up(i32* %92)
  br label %94

94:                                               ; preds = %90, %40
  %95 = load i32, i32* @TXE_INTR_ALIVENESS_BIT, align 4
  %96 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %6, align 8
  %97 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %96, i32 0, i32 2
  %98 = call i64 @test_and_clear_bit(i32 %95, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %120

100:                                              ; preds = %94
  %101 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %102 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %6, align 8
  %105 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i32, i8*, ...) @dev_dbg(i32 %103, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* @MEI_PG_EVENT_RECEIVED, align 4
  %109 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %110 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %109, i32 0, i32 6
  store i32 %108, i32* %110, align 8
  %111 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %6, align 8
  %112 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %111, i32 0, i32 3
  %113 = call i64 @waitqueue_active(i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %100
  %116 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %6, align 8
  %117 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %116, i32 0, i32 3
  %118 = call i32 @wake_up(i32* %117)
  br label %119

119:                                              ; preds = %115, %100
  br label %120

120:                                              ; preds = %119, %94
  %121 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %122 = call i32 @mei_count_full_read_slots(%struct.mei_device* %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* @TXE_INTR_OUT_DB_BIT, align 4
  %124 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %6, align 8
  %125 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %124, i32 0, i32 2
  %126 = call i64 @test_and_clear_bit(i32 %123, i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %155

128:                                              ; preds = %120
  %129 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %130 = call i32 @mei_irq_read_handler(%struct.mei_device* %129, %struct.list_head* %7, i32* %8)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %154

133:                                              ; preds = %128
  %134 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %135 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @MEI_DEV_RESETTING, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %154

139:                                              ; preds = %133
  %140 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %141 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @MEI_DEV_POWER_DOWN, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %139
  %146 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %147 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @dev_err(i32 %148, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %149)
  %151 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %152 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %151, i32 0, i32 5
  %153 = call i32 @schedule_work(i32* %152)
  br label %207

154:                                              ; preds = %139, %133, %128
  br label %155

155:                                              ; preds = %154, %120
  %156 = load i32, i32* @TXE_INTR_IN_READY_BIT, align 4
  %157 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %6, align 8
  %158 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %157, i32 0, i32 2
  %159 = call i64 @test_and_clear_bit(i32 %156, i32* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %155
  %162 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %163 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %162, i32 0, i32 2
  store i32 1, i32* %163, align 8
  %164 = load i32, i32* @TXE_HBUF_DEPTH, align 4
  %165 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %6, align 8
  %166 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  br label %167

167:                                              ; preds = %161, %155
  %168 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %6, align 8
  %169 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %204

172:                                              ; preds = %167
  %173 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %174 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %204

177:                                              ; preds = %172
  %178 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %179 = call i8* @mei_hbuf_is_ready(%struct.mei_device* %178)
  %180 = ptrtoint i8* %179 to i32
  %181 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %182 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 8
  %183 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %184 = call i32 @mei_irq_write_handler(%struct.mei_device* %183, %struct.list_head* %7)
  store i32 %184, i32* %9, align 4
  %185 = load i32, i32* %9, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %198

187:                                              ; preds = %177
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* @EMSGSIZE, align 4
  %190 = sub nsw i32 0, %189
  %191 = icmp ne i32 %188, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %187
  %193 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %194 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %9, align 4
  %197 = call i32 @dev_err(i32 %195, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %196)
  br label %198

198:                                              ; preds = %192, %187, %177
  %199 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %200 = call i8* @mei_hbuf_is_ready(%struct.mei_device* %199)
  %201 = ptrtoint i8* %200 to i32
  %202 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %203 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 8
  br label %204

204:                                              ; preds = %198, %172, %167
  %205 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %206 = call i32 @mei_irq_compl_handler(%struct.mei_device* %205, %struct.list_head* %7)
  br label %207

207:                                              ; preds = %204, %145, %81
  %208 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %209 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %9, align 4
  %212 = call i32 (i32, i8*, ...) @dev_dbg(i32 %210, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %211)
  %213 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %214 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %213, i32 0, i32 3
  %215 = call i32 @mutex_unlock(i32* %214)
  %216 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %217 = call i32 @mei_enable_interrupts(%struct.mei_device* %216)
  %218 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %218
}

declare dso_local %struct.mei_txe_hw* @to_txe_hw(%struct.mei_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @mei_txe_br_reg_read(%struct.mei_txe_hw*, i32) #1

declare dso_local i32 @mei_txe_sec_reg_read_silent(%struct.mei_txe_hw*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i64 @pci_dev_msi_enabled(i32) #1

declare dso_local i32 @to_pci_dev(i32) #1

declare dso_local i32 @mei_txe_check_and_ack_intrs(%struct.mei_device*, i32) #1

declare dso_local i32 @mei_txe_pending_interrupts(%struct.mei_device*) #1

declare dso_local i32 @mei_txe_aliveness_get(%struct.mei_device*) #1

declare dso_local i32 @mei_txe_readiness_get(%struct.mei_device*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @mei_txe_readiness_is_sec_rdy(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @mei_count_full_read_slots(%struct.mei_device*) #1

declare dso_local i32 @mei_irq_read_handler(%struct.mei_device*, %struct.list_head*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i8* @mei_hbuf_is_ready(%struct.mei_device*) #1

declare dso_local i32 @mei_irq_write_handler(%struct.mei_device*, %struct.list_head*) #1

declare dso_local i32 @mei_irq_compl_handler(%struct.mei_device*, %struct.list_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mei_enable_interrupts(%struct.mei_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
