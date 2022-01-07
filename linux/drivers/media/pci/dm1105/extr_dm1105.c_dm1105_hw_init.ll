; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/dm1105/extr_dm1105.c_dm1105_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/dm1105/extr_dm1105.c_dm1105_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm1105_dev = type { i32 }

@DM1105_HOST_CTR = common dso_local global i32 0, align 4
@DM1105_DTALENTH = common dso_local global i32 0, align 4
@DM1105_TSCTR = common dso_local global i32 0, align 4
@DM1105_RLEN = common dso_local global i32 0, align 4
@DM1105_DMA_BYTES = common dso_local global i32 0, align 4
@DM1105_INTCNT = common dso_local global i32 0, align 4
@DM1105_IRCTR = common dso_local global i32 0, align 4
@DM1105_IR_EN = common dso_local global i32 0, align 4
@DM1105_SYS_CHK = common dso_local global i32 0, align 4
@DM1105_IRMODE = common dso_local global i32 0, align 4
@DM1105_SYSTEMCODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm1105_dev*)* @dm1105_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm1105_hw_init(%struct.dm1105_dev* %0) #0 {
  %2 = alloca %struct.dm1105_dev*, align 8
  store %struct.dm1105_dev* %0, %struct.dm1105_dev** %2, align 8
  %3 = load %struct.dm1105_dev*, %struct.dm1105_dev** %2, align 8
  %4 = call i32 @dm1105_disable_irqs(%struct.dm1105_dev* %3)
  %5 = load i32, i32* @DM1105_HOST_CTR, align 4
  %6 = call i32 @dm_writeb(i32 %5, i32 0)
  %7 = load i32, i32* @DM1105_DTALENTH, align 4
  %8 = call i32 @dm_writeb(i32 %7, i32 188)
  %9 = load i32, i32* @DM1105_TSCTR, align 4
  %10 = call i32 @dm_writew(i32 %9, i32 49418)
  %11 = load %struct.dm1105_dev*, %struct.dm1105_dev** %2, align 8
  %12 = call i32 @dm1105_dma_map(%struct.dm1105_dev* %11)
  %13 = load %struct.dm1105_dev*, %struct.dm1105_dev** %2, align 8
  %14 = call i32 @dm1105_set_dma_addr(%struct.dm1105_dev* %13)
  %15 = load i32, i32* @DM1105_RLEN, align 4
  %16 = load i32, i32* @DM1105_DMA_BYTES, align 4
  %17 = mul nsw i32 5, %16
  %18 = call i32 @dm_writel(i32 %15, i32 %17)
  %19 = load i32, i32* @DM1105_INTCNT, align 4
  %20 = call i32 @dm_writeb(i32 %19, i32 47)
  %21 = load i32, i32* @DM1105_IRCTR, align 4
  %22 = load i32, i32* @DM1105_IR_EN, align 4
  %23 = load i32, i32* @DM1105_SYS_CHK, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @dm_writeb(i32 %21, i32 %24)
  %26 = load i32, i32* @DM1105_IRMODE, align 4
  %27 = call i32 @dm_writeb(i32 %26, i32 0)
  %28 = load i32, i32* @DM1105_SYSTEMCODE, align 4
  %29 = call i32 @dm_writew(i32 %28, i32 0)
  ret i32 0
}

declare dso_local i32 @dm1105_disable_irqs(%struct.dm1105_dev*) #1

declare dso_local i32 @dm_writeb(i32, i32) #1

declare dso_local i32 @dm_writew(i32, i32) #1

declare dso_local i32 @dm1105_dma_map(%struct.dm1105_dev*) #1

declare dso_local i32 @dm1105_set_dma_addr(%struct.dm1105_dev*) #1

declare dso_local i32 @dm_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
