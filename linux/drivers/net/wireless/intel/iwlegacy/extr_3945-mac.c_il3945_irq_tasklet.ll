; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-mac.c_il3945_irq_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-mac.c_il3945_irq_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32, %struct.TYPE_2__, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@CSR_INT = common dso_local global i32 0, align 4
@CSR_FH_INT_STATUS = common dso_local global i32 0, align 4
@CSR39_FH_INT_RX_MASK = common dso_local global i32 0, align 4
@CSR_INT_BIT_FH_RX = common dso_local global i32 0, align 4
@CSR39_FH_INT_TX_MASK = common dso_local global i32 0, align 4
@CSR_INT_BIT_FH_TX = common dso_local global i32 0, align 4
@CSR_INT_BIT_HW_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Hardware error detected.  Restarting.\0A\00", align 1
@CSR_INT_BIT_SCD = common dso_local global i32 0, align 4
@CSR_INT_BIT_ALIVE = common dso_local global i32 0, align 4
@CSR_INT_BIT_SW_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Microcode SW error detected. Restarting 0x%X.\0A\00", align 1
@CSR_INT_BIT_WAKEUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Wakeup interrupt\0A\00", align 1
@CSR_INT_BIT_SW_RX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Tx interrupt\0A\00", align 1
@FH39_SRVC_CHNL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Unhandled INTA bits 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Disabled INTA bits 0x%08x were pending\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"   with inta_fh = 0x%08x\0A\00", align 1
@S_INT_ENABLED = common dso_local global i32 0, align 4
@CSR_INT_MASK = common dso_local global i32 0, align 4
@IL_DL_ISR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*)* @il3945_irq_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il3945_irq_tasklet(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %8 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %7, i32 0, i32 3
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %12 = load i32, i32* @CSR_INT, align 4
  %13 = call i32 @_il_rd(%struct.il_priv* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %15 = load i32, i32* @CSR_INT, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @_il_wr(%struct.il_priv* %14, i32 %15, i32 %16)
  %18 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %19 = load i32, i32* @CSR_FH_INT_STATUS, align 4
  %20 = call i32 @_il_rd(%struct.il_priv* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %22 = load i32, i32* @CSR_FH_INT_STATUS, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @_il_wr(%struct.il_priv* %21, i32 %22, i32 %23)
  %25 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %26 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %25, i32 0, i32 3
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @CSR39_FH_INT_RX_MASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load i32, i32* @CSR_INT_BIT_FH_RX, align 4
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %1
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @CSR39_FH_INT_TX_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @CSR_INT_BIT_FH_TX, align 4
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @CSR_INT_BIT_HW_ERR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %54 = call i32 @il_disable_interrupts(%struct.il_priv* %53)
  %55 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %56 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %61 = call i32 @il_irq_handle_error(%struct.il_priv* %60)
  %62 = load i32, i32* @CSR_INT_BIT_HW_ERR, align 4
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  br label %232

65:                                               ; preds = %46
  %66 = load i32, i32* @CSR_INT_BIT_SCD, align 4
  %67 = load i32, i32* @CSR_INT_BIT_ALIVE, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %3, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @CSR_INT_BIT_SW_ERR, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %65
  %77 = load i32, i32* %3, align 4
  %78 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %80 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  %84 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %85 = call i32 @il_irq_handle_error(%struct.il_priv* %84)
  %86 = load i32, i32* @CSR_INT_BIT_SW_ERR, align 4
  %87 = load i32, i32* %4, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %76, %65
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* @CSR_INT_BIT_WAKEUP, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %146

94:                                               ; preds = %89
  %95 = call i32 (i8*, ...) @D_ISR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %96 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %97 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %98 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %97, i32 0, i32 5
  %99 = call i32 @il_rx_queue_update_write_ptr(%struct.il_priv* %96, i32* %98)
  %100 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %101 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %100, i32 0, i32 3
  %102 = load i64, i64* %6, align 8
  %103 = call i32 @spin_lock_irqsave(i32* %101, i64 %102)
  %104 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %105 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %106 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = call i32 @il_txq_update_write_ptr(%struct.il_priv* %104, i32* %108)
  %110 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %111 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %112 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %111, i32 0, i32 4
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = call i32 @il_txq_update_write_ptr(%struct.il_priv* %110, i32* %114)
  %116 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %117 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %118 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  %121 = call i32 @il_txq_update_write_ptr(%struct.il_priv* %116, i32* %120)
  %122 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %123 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %124 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %123, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 3
  %127 = call i32 @il_txq_update_write_ptr(%struct.il_priv* %122, i32* %126)
  %128 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %129 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %130 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %129, i32 0, i32 4
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 4
  %133 = call i32 @il_txq_update_write_ptr(%struct.il_priv* %128, i32* %132)
  %134 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %135 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %134, i32 0, i32 3
  %136 = load i64, i64* %6, align 8
  %137 = call i32 @spin_unlock_irqrestore(i32* %135, i64 %136)
  %138 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %139 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  %143 = load i32, i32* @CSR_INT_BIT_WAKEUP, align 4
  %144 = load i32, i32* %4, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %94, %89
  %147 = load i32, i32* %3, align 4
  %148 = load i32, i32* @CSR_INT_BIT_FH_RX, align 4
  %149 = load i32, i32* @CSR_INT_BIT_SW_RX, align 4
  %150 = or i32 %148, %149
  %151 = and i32 %147, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %146
  %154 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %155 = call i32 @il3945_rx_handle(%struct.il_priv* %154)
  %156 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %157 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 8
  %161 = load i32, i32* @CSR_INT_BIT_FH_RX, align 4
  %162 = load i32, i32* @CSR_INT_BIT_SW_RX, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* %4, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %153, %146
  %167 = load i32, i32* %3, align 4
  %168 = load i32, i32* @CSR_INT_BIT_FH_TX, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %188

171:                                              ; preds = %166
  %172 = call i32 (i8*, ...) @D_ISR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %173 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %174 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 4
  %178 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %179 = load i32, i32* @CSR_FH_INT_STATUS, align 4
  %180 = call i32 @_il_wr(%struct.il_priv* %178, i32 %179, i32 64)
  %181 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %182 = load i32, i32* @FH39_SRVC_CHNL, align 4
  %183 = call i32 @FH39_TCSR_CREDIT(i32 %182)
  %184 = call i32 @il_wr(%struct.il_priv* %181, i32 %183, i32 0)
  %185 = load i32, i32* @CSR_INT_BIT_FH_TX, align 4
  %186 = load i32, i32* %4, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %4, align 4
  br label %188

188:                                              ; preds = %171, %166
  %189 = load i32, i32* %3, align 4
  %190 = load i32, i32* %4, align 4
  %191 = xor i32 %190, -1
  %192 = and i32 %189, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %205

194:                                              ; preds = %188
  %195 = load i32, i32* %3, align 4
  %196 = load i32, i32* %4, align 4
  %197 = xor i32 %196, -1
  %198 = and i32 %195, %197
  %199 = call i32 (i8*, ...) @IL_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %198)
  %200 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %201 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %202, align 8
  br label %205

205:                                              ; preds = %194, %188
  %206 = load i32, i32* %3, align 4
  %207 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %208 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = xor i32 %209, -1
  %211 = and i32 %206, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %223

213:                                              ; preds = %205
  %214 = load i32, i32* %3, align 4
  %215 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %216 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = xor i32 %217, -1
  %219 = and i32 %214, %218
  %220 = call i32 @IL_WARN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %219)
  %221 = load i32, i32* %5, align 4
  %222 = call i32 @IL_WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %221)
  br label %223

223:                                              ; preds = %213, %205
  %224 = load i32, i32* @S_INT_ENABLED, align 4
  %225 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %226 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %225, i32 0, i32 1
  %227 = call i64 @test_bit(i32 %224, i32* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %223
  %230 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %231 = call i32 @il_enable_interrupts(%struct.il_priv* %230)
  br label %232

232:                                              ; preds = %51, %229, %223
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @_il_rd(%struct.il_priv*, i32) #1

declare dso_local i32 @_il_wr(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @IL_ERR(i8*, ...) #1

declare dso_local i32 @il_disable_interrupts(%struct.il_priv*) #1

declare dso_local i32 @il_irq_handle_error(%struct.il_priv*) #1

declare dso_local i32 @D_ISR(i8*, ...) #1

declare dso_local i32 @il_rx_queue_update_write_ptr(%struct.il_priv*, i32*) #1

declare dso_local i32 @il_txq_update_write_ptr(%struct.il_priv*, i32*) #1

declare dso_local i32 @il3945_rx_handle(%struct.il_priv*) #1

declare dso_local i32 @il_wr(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @FH39_TCSR_CREDIT(i32) #1

declare dso_local i32 @IL_WARN(i8*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @il_enable_interrupts(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
