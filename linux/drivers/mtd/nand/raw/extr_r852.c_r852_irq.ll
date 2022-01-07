; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r852_device = type { i32, i32, i32, i64, i32, i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@R852_CARD_IRQ_STA = common dso_local global i32 0, align 4
@R852_CARD_IRQ_INSERT = common dso_local global i32 0, align 4
@R852_CARD_IRQ_REMOVE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@R852_DMA_IRQ_STA = common dso_local global i32 0, align 4
@R852_DMA_IRQ_MASK = common dso_local global i32 0, align 4
@R852_DMA_IRQ_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"received dma error IRQ\00", align 1
@EIO = common dso_local global i32 0, align 4
@DMA_INTERNAL = common dso_local global i64 0, align 8
@R852_DMA_IRQ_INTERNAL = common dso_local global i32 0, align 4
@DMA_MEMORY = common dso_local global i64 0, align 8
@R852_DMA_IRQ_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"bad dma IRQ status = %x\00", align 1
@R852_CARD_STA_CD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"strange card status = %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @r852_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r852_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.r852_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.r852_device*
  store %struct.r852_device* %11, %struct.r852_device** %5, align 8
  %12 = load i32, i32* @IRQ_NONE, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %14 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %13, i32 0, i32 4
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %18 = load i32, i32* @R852_CARD_IRQ_STA, align 4
  %19 = call i32 @r852_read_reg(%struct.r852_device* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %21 = load i32, i32* @R852_CARD_IRQ_STA, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @r852_write_reg(%struct.r852_device* %20, i32 %21, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @R852_CARD_IRQ_INSERT, align 4
  %26 = load i32, i32* @R852_CARD_IRQ_REMOVE, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %2
  %31 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @R852_CARD_IRQ_INSERT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %40 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %42 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @WARN_ON(i32 %43)
  %45 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %46 = call i32 @r852_disable_irqs(%struct.r852_device* %45)
  %47 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %48 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %30
  br label %175

52:                                               ; preds = %30
  %53 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %54 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %56 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %59 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %58, i32 0, i32 6
  %60 = call i32 @msecs_to_jiffies(i32 100)
  %61 = call i32 @queue_delayed_work(i32 %57, i32* %59, i32 %60)
  br label %175

62:                                               ; preds = %2
  %63 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %64 = load i32, i32* @R852_DMA_IRQ_STA, align 4
  %65 = call i32 @r852_read_reg_dword(%struct.r852_device* %63, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %67 = load i32, i32* @R852_DMA_IRQ_STA, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @r852_write_reg_dword(%struct.r852_device* %66, i32 %67, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @R852_DMA_IRQ_MASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %159

74:                                               ; preds = %62
  %75 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @R852_DMA_IRQ_ERROR, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %74
  %81 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %82 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  %85 = call i32 @r852_dma_done(%struct.r852_device* %82, i32 %84)
  %86 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %87 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %86, i32 0, i32 5
  %88 = call i32 @complete(i32* %87)
  br label %175

89:                                               ; preds = %74
  %90 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %91 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @WARN_ON_ONCE(i32 %94)
  %96 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %97 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  br label %175

101:                                              ; preds = %89
  %102 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %103 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @DMA_INTERNAL, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %101
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @R852_DMA_IRQ_INTERNAL, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load i64, i64* @DMA_MEMORY, align 8
  %114 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %115 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %114, i32 0, i32 3
  store i64 %113, i64* %115, align 8
  %116 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %117 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %112, %107, %101
  %121 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %122 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @DMA_MEMORY, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %139

126:                                              ; preds = %120
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @R852_DMA_IRQ_MEMORY, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = load i64, i64* @DMA_INTERNAL, align 8
  %133 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %134 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %133, i32 0, i32 3
  store i64 %132, i64* %134, align 8
  %135 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %136 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %131, %126, %120
  %140 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %141 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %142, 2
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %146 = call i32 @r852_dma_enable(%struct.r852_device* %145)
  br label %147

147:                                              ; preds = %144, %139
  %148 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %149 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 3
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %154 = call i32 @r852_dma_done(%struct.r852_device* %153, i32 0)
  %155 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %156 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %155, i32 0, i32 5
  %157 = call i32 @complete(i32* %156)
  br label %158

158:                                              ; preds = %152, %147
  br label %175

159:                                              ; preds = %62
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i32, i32* %7, align 4
  %164 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %162, %159
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* @R852_CARD_STA_CD, align 4
  %168 = xor i32 %167, -1
  %169 = and i32 %166, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %165
  %172 = load i32, i32* %6, align 4
  %173 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %171, %165
  br label %175

175:                                              ; preds = %174, %158, %100, %80, %52, %51
  %176 = load %struct.r852_device*, %struct.r852_device** %5, align 8
  %177 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %176, i32 0, i32 4
  %178 = load i64, i64* %8, align 8
  %179 = call i32 @spin_unlock_irqrestore(i32* %177, i64 %178)
  %180 = load i32, i32* %9, align 4
  ret i32 %180
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @r852_read_reg(%struct.r852_device*, i32) #1

declare dso_local i32 @r852_write_reg(%struct.r852_device*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @r852_disable_irqs(%struct.r852_device*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @r852_read_reg_dword(%struct.r852_device*, i32) #1

declare dso_local i32 @r852_write_reg_dword(%struct.r852_device*, i32, i32) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @r852_dma_done(%struct.r852_device*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @r852_dma_enable(%struct.r852_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
