; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_setup_tx_spi_messages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_setup_tx_spi_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrf24j40 = type { %struct.TYPE_4__, %struct.TYPE_5__, i32, %struct.TYPE_4__, %struct.TYPE_5__, %struct.TYPE_5__, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_4__ = type { %struct.mrf24j40*, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@write_tx_buf_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mrf24j40*)* @mrf24j40_setup_tx_spi_messages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrf24j40_setup_tx_spi_messages(%struct.mrf24j40* %0) #0 {
  %2 = alloca %struct.mrf24j40*, align 8
  store %struct.mrf24j40* %0, %struct.mrf24j40** %2, align 8
  %3 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %4 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %3, i32 0, i32 3
  %5 = call i32 @spi_message_init(%struct.TYPE_4__* %4)
  %6 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %7 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %8 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.mrf24j40* %6, %struct.mrf24j40** %9, align 8
  %10 = load i32, i32* @write_tx_buf_complete, align 4
  %11 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %12 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i32 %10, i32* %13, align 8
  %14 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %15 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %14, i32 0, i32 7
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 2, i32* %16, align 4
  %17 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %18 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %21 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %20, i32 0, i32 7
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %24 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %23, i32 0, i32 7
  %25 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %26 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %25, i32 0, i32 3
  %27 = call i32 @spi_message_add_tail(%struct.TYPE_5__* %24, %struct.TYPE_4__* %26)
  %28 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %29 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 2, i32* %30, align 8
  %31 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %32 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %35 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %38 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %37, i32 0, i32 5
  %39 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %40 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %39, i32 0, i32 3
  %41 = call i32 @spi_message_add_tail(%struct.TYPE_5__* %38, %struct.TYPE_4__* %40)
  %42 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %43 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %42, i32 0, i32 4
  %44 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %45 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %44, i32 0, i32 3
  %46 = call i32 @spi_message_add_tail(%struct.TYPE_5__* %43, %struct.TYPE_4__* %45)
  %47 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %48 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %47, i32 0, i32 0
  %49 = call i32 @spi_message_init(%struct.TYPE_4__* %48)
  %50 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %51 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %52 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store %struct.mrf24j40* %50, %struct.mrf24j40** %53, align 8
  %54 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %55 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 2, i32* %56, align 8
  %57 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %58 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %61 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %64 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %63, i32 0, i32 1
  %65 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %66 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %65, i32 0, i32 0
  %67 = call i32 @spi_message_add_tail(%struct.TYPE_5__* %64, %struct.TYPE_4__* %66)
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
