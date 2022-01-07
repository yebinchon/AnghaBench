; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cb710-mmc.c_cb710_wait_while_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cb710-mmc.c_cb710_wait_while_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb710_slot = type { i32 }

@CB710_MMC_STATUS2_PORT = common dso_local global i32 0, align 4
@CB710_DUMP_REGS_MMC = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@CB710_MMC_STATUS_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cb710_slot*, i32)* @cb710_wait_while_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb710_wait_while_busy(%struct.cb710_slot* %0, i32 %1) #0 {
  %3 = alloca %struct.cb710_slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cb710_slot* %0, %struct.cb710_slot** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 500000, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %25, %2
  %8 = load %struct.cb710_slot*, %struct.cb710_slot** %3, align 8
  %9 = load i32, i32* @CB710_MMC_STATUS2_PORT, align 4
  %10 = call i32 @cb710_read_port_8(%struct.cb710_slot* %8, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %7
  %15 = load i32, i32* %5, align 4
  %16 = add i32 %15, -1
  store i32 %16, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = load %struct.cb710_slot*, %struct.cb710_slot** %3, align 8
  %20 = call i32 @cb710_slot_to_chip(%struct.cb710_slot* %19)
  %21 = load i32, i32* @CB710_DUMP_REGS_MMC, align 4
  %22 = call i32 @cb710_dump_regs(i32 %20, i32 %21)
  %23 = load i32, i32* @ETIMEDOUT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %27

25:                                               ; preds = %14
  %26 = call i32 @udelay(i32 1)
  br label %7

27:                                               ; preds = %18, %7
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local i32 @cb710_read_port_8(%struct.cb710_slot*, i32) #1

declare dso_local i32 @cb710_dump_regs(i32, i32) #1

declare dso_local i32 @cb710_slot_to_chip(%struct.cb710_slot*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
