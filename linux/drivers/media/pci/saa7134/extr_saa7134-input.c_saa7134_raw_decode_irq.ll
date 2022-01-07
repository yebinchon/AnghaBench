; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-input.c_saa7134_raw_decode_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-input.c_saa7134_raw_decode_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { %struct.saa7134_card_ir* }
%struct.saa7134_card_ir = type { i32, i32 }

@SAA7134_GPIO_GPMODE3 = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPRESCAN = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPSTATUS0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*)* @saa7134_raw_decode_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_raw_decode_irq(%struct.saa7134_dev* %0) #0 {
  %2 = alloca %struct.saa7134_dev*, align 8
  %3 = alloca %struct.saa7134_card_ir*, align 8
  %4 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %2, align 8
  %5 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %6 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %5, i32 0, i32 0
  %7 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %6, align 8
  store %struct.saa7134_card_ir* %7, %struct.saa7134_card_ir** %3, align 8
  %8 = load i32, i32* @SAA7134_GPIO_GPMODE3, align 4
  %9 = load i32, i32* @SAA7134_GPIO_GPRESCAN, align 4
  %10 = call i32 @saa_clearb(i32 %8, i32 %9)
  %11 = load i32, i32* @SAA7134_GPIO_GPMODE3, align 4
  %12 = load i32, i32* @SAA7134_GPIO_GPRESCAN, align 4
  %13 = call i32 @saa_setb(i32 %11, i32 %12)
  %14 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %15 = ashr i32 %14, 2
  %16 = call i32 @saa_readl(i32 %15)
  %17 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %3, align 8
  %18 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %16, %19
  store i32 %20, i32* %4, align 4
  %21 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %22 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %21, i32 0, i32 0
  %23 = load %struct.saa7134_card_ir*, %struct.saa7134_card_ir** %22, align 8
  %24 = getelementptr inbounds %struct.saa7134_card_ir, %struct.saa7134_card_ir* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @ir_raw_event_store_edge(i32 %25, i32 %29)
  ret i32 1
}

declare dso_local i32 @saa_clearb(i32, i32) #1

declare dso_local i32 @saa_setb(i32, i32) #1

declare dso_local i32 @saa_readl(i32) #1

declare dso_local i32 @ir_raw_event_store_edge(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
