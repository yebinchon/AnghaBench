; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_hp100_clear_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_hp100_clear_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.hp100_private = type { i32 }

@MAC_CTRL = common dso_local global i32 0, align 4
@DROPPED = common dso_local global i32 0, align 4
@CRC = common dso_local global i32 0, align 4
@ABORT = common dso_local global i32 0, align 4
@PERFORMANCE = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@dev = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hp100_private*, i32)* @hp100_clear_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hp100_clear_stats(%struct.hp100_private* %0, i32 %1) #0 {
  %3 = alloca %struct.hp100_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.hp100_private* %0, %struct.hp100_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hp100_private*, %struct.hp100_private** %3, align 8
  %7 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load i32, i32* @MAC_CTRL, align 4
  %11 = call i32 @hp100_page(i32 %10)
  %12 = load i32, i32* @DROPPED, align 4
  %13 = call i32 @hp100_inw(i32 %12)
  %14 = load i32, i32* @CRC, align 4
  %15 = call i32 @hp100_inb(i32 %14)
  %16 = load i32, i32* @ABORT, align 4
  %17 = call i32 @hp100_inb(i32 %16)
  %18 = load i32, i32* @PERFORMANCE, align 4
  %19 = call i32 @hp100_page(i32 %18)
  %20 = load %struct.hp100_private*, %struct.hp100_private** %3, align 8
  %21 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %20, i32 0, i32 0
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hp100_page(i32) #1

declare dso_local i32 @hp100_inw(i32) #1

declare dso_local i32 @hp100_inb(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
