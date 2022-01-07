; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mcr20a.c_mcr20a_setup_rx_spi_messages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mcr20a.c_mcr20a_setup_rx_spi_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcr20a_local = type { %struct.TYPE_4__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_5__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.mcr20a_local* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@mcr20a_handle_rx_read_buf_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcr20a_local*)* @mcr20a_setup_rx_spi_messages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcr20a_setup_rx_spi_messages(%struct.mcr20a_local* %0) #0 {
  %2 = alloca %struct.mcr20a_local*, align 8
  store %struct.mcr20a_local* %0, %struct.mcr20a_local** %2, align 8
  %3 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %4 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %3, i32 0, i32 7
  %5 = call i32 @spi_message_init(%struct.TYPE_4__* %4)
  %6 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %7 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %8 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %7, i32 0, i32 7
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store %struct.mcr20a_local* %6, %struct.mcr20a_local** %9, align 8
  %10 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %11 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %14 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %13, i32 0, i32 11
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %17 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %16, i32 0, i32 9
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 4
  %19 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %20 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %19, i32 0, i32 11
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %23 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %22, i32 0, i32 9
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %26 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %29 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %28, i32 0, i32 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %32 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %31, i32 0, i32 10
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %35 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 8
  %37 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %38 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %37, i32 0, i32 9
  %39 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %40 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %39, i32 0, i32 7
  %41 = call i32 @spi_message_add_tail(%struct.TYPE_5__* %38, %struct.TYPE_4__* %40)
  %42 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %43 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %42, i32 0, i32 8
  %44 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %45 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %44, i32 0, i32 7
  %46 = call i32 @spi_message_add_tail(%struct.TYPE_5__* %43, %struct.TYPE_4__* %45)
  %47 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %48 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %47, i32 0, i32 0
  %49 = call i32 @spi_message_init(%struct.TYPE_4__* %48)
  %50 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %51 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %52 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store %struct.mcr20a_local* %50, %struct.mcr20a_local** %53, align 8
  %54 = load i32, i32* @mcr20a_handle_rx_read_buf_complete, align 4
  %55 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %56 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %59 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %62 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %65 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  store i32 %63, i32* %66, align 8
  %67 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %68 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %71 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %74 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %77 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %80 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %83 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %86 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %89 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %88, i32 0, i32 3
  %90 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %91 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %90, i32 0, i32 0
  %92 = call i32 @spi_message_add_tail(%struct.TYPE_5__* %89, %struct.TYPE_4__* %91)
  %93 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %94 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %93, i32 0, i32 2
  %95 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %96 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %95, i32 0, i32 0
  %97 = call i32 @spi_message_add_tail(%struct.TYPE_5__* %94, %struct.TYPE_4__* %96)
  %98 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %99 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %98, i32 0, i32 1
  %100 = load %struct.mcr20a_local*, %struct.mcr20a_local** %2, align 8
  %101 = getelementptr inbounds %struct.mcr20a_local, %struct.mcr20a_local* %100, i32 0, i32 0
  %102 = call i32 @spi_message_add_tail(%struct.TYPE_5__* %99, %struct.TYPE_4__* %101)
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
