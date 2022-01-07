; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_rx.c_gve_rx_flip_buff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_rx.c_gve_rx_flip_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_rx_slot_page_info = type { i32 }
%struct.gve_rx_data_slot = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gve_rx_slot_page_info*, %struct.gve_rx_data_slot*)* @gve_rx_flip_buff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gve_rx_flip_buff(%struct.gve_rx_slot_page_info* %0, %struct.gve_rx_data_slot* %1) #0 {
  %3 = alloca %struct.gve_rx_slot_page_info*, align 8
  %4 = alloca %struct.gve_rx_data_slot*, align 8
  %5 = alloca i32, align 4
  store %struct.gve_rx_slot_page_info* %0, %struct.gve_rx_slot_page_info** %3, align 8
  store %struct.gve_rx_data_slot* %1, %struct.gve_rx_data_slot** %4, align 8
  %6 = load %struct.gve_rx_data_slot*, %struct.gve_rx_data_slot** %4, align 8
  %7 = getelementptr inbounds %struct.gve_rx_data_slot, %struct.gve_rx_data_slot* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @be64_to_cpu(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = sdiv i32 %10, 2
  %12 = load %struct.gve_rx_slot_page_info*, %struct.gve_rx_slot_page_info** %3, align 8
  %13 = getelementptr inbounds %struct.gve_rx_slot_page_info, %struct.gve_rx_slot_page_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = xor i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = sdiv i32 %16, 2
  %18 = load i32, i32* %5, align 4
  %19 = xor i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @cpu_to_be64(i32 %20)
  %22 = load %struct.gve_rx_data_slot*, %struct.gve_rx_data_slot** %4, align 8
  %23 = getelementptr inbounds %struct.gve_rx_data_slot, %struct.gve_rx_data_slot* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  ret void
}

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
