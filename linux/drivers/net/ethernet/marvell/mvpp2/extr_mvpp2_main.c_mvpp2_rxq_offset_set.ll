; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_rxq_offset_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_rxq_offset_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32 }

@MVPP2_RXQ_PACKET_OFFSET_MASK = common dso_local global i32 0, align 4
@MVPP2_RXQ_PACKET_OFFSET_OFFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*, i32, i32)* @mvpp2_rxq_offset_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_rxq_offset_set(%struct.mvpp2_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mvpp2_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = ashr i32 %8, 5
  store i32 %9, i32* %6, align 4
  %10 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %11 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @MVPP2_RXQ_CONFIG_REG(i32 %13)
  %15 = call i32 @mvpp2_read(i32 %12, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @MVPP2_RXQ_PACKET_OFFSET_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MVPP2_RXQ_PACKET_OFFSET_OFFS, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* @MVPP2_RXQ_PACKET_OFFSET_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %28 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @MVPP2_RXQ_CONFIG_REG(i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @mvpp2_write(i32 %29, i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @mvpp2_read(i32, i32) #1

declare dso_local i32 @MVPP2_RXQ_CONFIG_REG(i32) #1

declare dso_local i32 @mvpp2_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
