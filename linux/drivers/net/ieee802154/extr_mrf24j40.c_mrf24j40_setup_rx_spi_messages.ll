; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_setup_rx_spi_messages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_setup_rx_spi_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrf24j40 = type { %struct.TYPE_4__, %struct.TYPE_5__, i32, %struct.TYPE_5__, i32, %struct.TYPE_5__, i32, %struct.TYPE_4__, %struct.TYPE_5__, i32 }
%struct.TYPE_4__ = type { i32, %struct.mrf24j40* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@mrf24j40_handle_rx_read_buf_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mrf24j40*)* @mrf24j40_setup_rx_spi_messages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrf24j40_setup_rx_spi_messages(%struct.mrf24j40* %0) #0 {
  %2 = alloca %struct.mrf24j40*, align 8
  store %struct.mrf24j40* %0, %struct.mrf24j40** %2, align 8
  %3 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %4 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %3, i32 0, i32 7
  %5 = call i32 @spi_message_init(%struct.TYPE_4__* %4)
  %6 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %7 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %8 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %7, i32 0, i32 7
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store %struct.mrf24j40* %6, %struct.mrf24j40** %9, align 8
  %10 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %11 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %10, i32 0, i32 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 2, i32* %12, align 8
  %13 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %14 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %17 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %16, i32 0, i32 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 8
  %19 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %20 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %23 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %22, i32 0, i32 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %26 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %25, i32 0, i32 8
  %27 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %28 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %27, i32 0, i32 7
  %29 = call i32 @spi_message_add_tail(%struct.TYPE_5__* %26, %struct.TYPE_4__* %28)
  %30 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %31 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %30, i32 0, i32 0
  %32 = call i32 @spi_message_init(%struct.TYPE_4__* %31)
  %33 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %34 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %35 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store %struct.mrf24j40* %33, %struct.mrf24j40** %36, align 8
  %37 = load i32, i32* @mrf24j40_handle_rx_read_buf_complete, align 4
  %38 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %39 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %42 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 2, i32* %43, align 8
  %44 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %45 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %48 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 8
  %50 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %51 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %50, i32 0, i32 5
  %52 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %53 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %52, i32 0, i32 0
  %54 = call i32 @spi_message_add_tail(%struct.TYPE_5__* %51, %struct.TYPE_4__* %53)
  %55 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %56 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %59 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %62 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %61, i32 0, i32 3
  %63 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %64 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %63, i32 0, i32 0
  %65 = call i32 @spi_message_add_tail(%struct.TYPE_5__* %62, %struct.TYPE_4__* %64)
  %66 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %67 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32 2, i32* %68, align 8
  %69 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %70 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %73 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %76 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %75, i32 0, i32 1
  %77 = load %struct.mrf24j40*, %struct.mrf24j40** %2, align 8
  %78 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %77, i32 0, i32 0
  %79 = call i32 @spi_message_add_tail(%struct.TYPE_5__* %76, %struct.TYPE_4__* %78)
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
