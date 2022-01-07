; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mcr20a.c_mcr20a_setup_irq_spi_messages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mcr20a.c_mcr20a_setup_irq_spi_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcr20a_local = type { %struct.TYPE_4__, %struct.TYPE_5__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.mcr20a_local* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@mcr20a_irq_status_complete = common dso_local global i32 0, align 4
@MCR20A_IRQSTS_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcr20a_local*)* @mcr20a_setup_irq_spi_messages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcr20a_setup_irq_spi_messages(%struct.mcr20a_local* %0) #0 {
  %2 = alloca %struct.mcr20a_local*, align 8
  store %struct.mcr20a_local* %0, %struct.mcr20a_local** %2, align 8
  %3 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %4 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %3, i32 0, i32 0
  %5 = call i32 @spi_message_init(%struct.TYPE_4__* %4)
  %6 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %7 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %8 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store %struct.mcr20a_local* %6, %struct.mcr20a_local** %9, align 8
  %10 = load i32, i32* @mcr20a_irq_status_complete, align 4
  %11 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %12 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 8
  %14 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %15 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %18 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %21 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 4
  %23 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %24 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %27 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @MCR20A_IRQSTS_NUM, align 4
  %30 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %31 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %34 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %37 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %40 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %39, i32 0, i32 2
  %41 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %42 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %41, i32 0, i32 0
  %43 = call i32 @spi_message_add_tail(%struct.TYPE_5__* %40, %struct.TYPE_4__* %42)
  %44 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %45 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %44, i32 0, i32 1
  %46 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %47 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %46, i32 0, i32 0
  %48 = call i32 @spi_message_add_tail(%struct.TYPE_5__* %45, %struct.TYPE_4__* %47)
  ret void
}

declare dso_local i32 @spi_message_init(%struct.TYPE_4__*) #1

declare dso_local i32 @spi_message_add_tail(%struct.TYPE_5__*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
