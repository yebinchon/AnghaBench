; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_hif.c_proc_pending_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_hif.c_proc_pending_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_device = type { %struct.TYPE_5__*, %struct.ath6kl_irq_proc_registers, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.ath6kl_irq_proc_registers = type { i32, i32, i32* }
%struct.TYPE_4__ = type { i32 }

@HTC_MAILBOX = common dso_local global i32 0, align 4
@ATH6KL_DBG_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"proc_pending_irqs: (dev: 0x%p)\0A\00", align 1
@HOST_INT_STATUS_ADDRESS = common dso_local global i32 0, align 4
@HIF_RD_SYNC_BYTE_INC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"lookAhead is zero!\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"pending mailbox msg, lk_ahd: 0x%X\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"valid interrupt source(s) for other interrupts: 0x%x\0A\00", align 1
@HOST_INT_STATUS_CPU = common dso_local global i32 0, align 4
@HOST_INT_STATUS_ERROR = common dso_local global i32 0, align 4
@HOST_INT_STATUS_COUNTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"bypassing irq status re-check, forcing done\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"proc_pending_irqs: (done:%d, status=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl_device*, i32*)* @proc_pending_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_pending_irqs(%struct.ath6kl_device* %0, i32* %1) #0 {
  %3 = alloca %struct.ath6kl_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ath6kl_irq_proc_registers*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath6kl_device* %0, %struct.ath6kl_device** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @HTC_MAILBOX, align 4
  %12 = shl i32 1, %11
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @ATH6KL_DBG_IRQ, align 4
  %14 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %15 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.ath6kl_device* %14)
  %16 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %17 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %87

21:                                               ; preds = %2
  %22 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %23 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @HOST_INT_STATUS_ADDRESS, align 4
  %26 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %27 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %26, i32 0, i32 1
  %28 = bitcast %struct.ath6kl_irq_proc_registers* %27 to i32*
  %29 = load i32, i32* @HIF_RD_SYNC_BYTE_INC, align 4
  %30 = call i32 @hif_read_write_sync(i32 %24, i32 %25, i32* %28, i32 16, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %155

34:                                               ; preds = %21
  %35 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %36 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %37 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %36, i32 0, i32 1
  %38 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %39 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %38, i32 0, i32 2
  %40 = call i32 @ath6kl_dump_registers(%struct.ath6kl_device* %35, %struct.ath6kl_irq_proc_registers* %37, %struct.TYPE_4__* %39)
  %41 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %42 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %41, i32 0, i32 2
  %43 = call i32 @trace_ath6kl_sdio_irq(%struct.TYPE_4__* %42, i32 4)
  %44 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %45 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.ath6kl_irq_proc_registers, %struct.ath6kl_irq_proc_registers* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %49 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %47, %51
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %86

57:                                               ; preds = %34
  %58 = load i32, i32* %9, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %63 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.ath6kl_irq_proc_registers, %struct.ath6kl_irq_proc_registers* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %57
  %70 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %71 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %70, i32 0, i32 1
  store %struct.ath6kl_irq_proc_registers* %71, %struct.ath6kl_irq_proc_registers** %5, align 8
  %72 = load %struct.ath6kl_irq_proc_registers*, %struct.ath6kl_irq_proc_registers** %5, align 8
  %73 = getelementptr inbounds %struct.ath6kl_irq_proc_registers, %struct.ath6kl_irq_proc_registers* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* @HTC_MAILBOX, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le32_to_cpu(i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %69
  %83 = call i32 @ath6kl_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %69
  br label %85

85:                                               ; preds = %84, %57
  br label %86

86:                                               ; preds = %85, %34
  br label %87

87:                                               ; preds = %86, %2
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = load i32*, i32** %4, align 8
  store i32 1, i32* %94, align 4
  br label %155

95:                                               ; preds = %90, %87
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %119

98:                                               ; preds = %95
  store i32 0, i32* %10, align 4
  %99 = load i32, i32* @ATH6KL_DBG_IRQ, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %103 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @ath6kl_htc_rxmsg_pending_handler(%struct.TYPE_5__* %104, i32 %105, i32* %10)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  br label %155

110:                                              ; preds = %98
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %110
  %114 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %115 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %114, i32 0, i32 0
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  store i64 0, i64* %117, align 8
  br label %118

118:                                              ; preds = %113, %110
  br label %119

119:                                              ; preds = %118, %95
  %120 = load i32, i32* @ATH6KL_DBG_IRQ, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %120, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @HOST_INT_STATUS_CPU, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call i64 @MS(i32 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %119
  %128 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %129 = call i32 @ath6kl_hif_proc_cpu_intr(%struct.ath6kl_device* %128)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %155

133:                                              ; preds = %127
  br label %134

134:                                              ; preds = %133, %119
  %135 = load i32, i32* @HOST_INT_STATUS_ERROR, align 4
  %136 = load i32, i32* %7, align 4
  %137 = call i64 @MS(i32 %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %134
  %140 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %141 = call i32 @ath6kl_hif_proc_err_intr(%struct.ath6kl_device* %140)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  br label %155

145:                                              ; preds = %139
  br label %146

146:                                              ; preds = %145, %134
  %147 = load i32, i32* @HOST_INT_STATUS_COUNTER, align 4
  %148 = load i32, i32* %7, align 4
  %149 = call i64 @MS(i32 %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %153 = call i32 @ath6kl_hif_proc_counter_intr(%struct.ath6kl_device* %152)
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %151, %146
  br label %155

155:                                              ; preds = %154, %144, %132, %109, %93, %33
  %156 = load i32, i32* @ATH6KL_DBG_IRQ, align 4
  %157 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %156, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %158 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %159 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %158, i32 0, i32 0
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %155
  %165 = load i32*, i32** %4, align 8
  store i32 1, i32* %165, align 4
  br label %166

166:                                              ; preds = %164, %155
  %167 = load i32, i32* @ATH6KL_DBG_IRQ, align 4
  %168 = load i32*, i32** %4, align 8
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %6, align 4
  %171 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %167, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %169, i32 %170)
  %172 = load i32, i32* %6, align 4
  ret i32 %172
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, ...) #1

declare dso_local i32 @hif_read_write_sync(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ath6kl_dump_registers(%struct.ath6kl_device*, %struct.ath6kl_irq_proc_registers*, %struct.TYPE_4__*) #1

declare dso_local i32 @trace_ath6kl_sdio_irq(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ath6kl_err(i8*) #1

declare dso_local i32 @ath6kl_htc_rxmsg_pending_handler(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i64 @MS(i32, i32) #1

declare dso_local i32 @ath6kl_hif_proc_cpu_intr(%struct.ath6kl_device*) #1

declare dso_local i32 @ath6kl_hif_proc_err_intr(%struct.ath6kl_device*) #1

declare dso_local i32 @ath6kl_hif_proc_counter_intr(%struct.ath6kl_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
