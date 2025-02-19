; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_configure_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_configure_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, %struct.igb_ring** }
%struct.igb_ring = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*)* @igb_configure_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_configure_rx(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.igb_ring*, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %5 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %6 = call i32 @igb_set_default_mac_filter(%struct.igb_adapter* %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %27, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %7
  %14 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %14, i32 0, i32 1
  %16 = load %struct.igb_ring**, %struct.igb_ring*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.igb_ring*, %struct.igb_ring** %16, i64 %18
  %20 = load %struct.igb_ring*, %struct.igb_ring** %19, align 8
  store %struct.igb_ring* %20, %struct.igb_ring** %4, align 8
  %21 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %22 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %23 = call i32 @igb_set_rx_buffer_len(%struct.igb_adapter* %21, %struct.igb_ring* %22)
  %24 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %25 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %26 = call i32 @igb_configure_rx_ring(%struct.igb_adapter* %24, %struct.igb_ring* %25)
  br label %27

27:                                               ; preds = %13
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %7

30:                                               ; preds = %7
  ret void
}

declare dso_local i32 @igb_set_default_mac_filter(%struct.igb_adapter*) #1

declare dso_local i32 @igb_set_rx_buffer_len(%struct.igb_adapter*, %struct.igb_ring*) #1

declare dso_local i32 @igb_configure_rx_ring(%struct.igb_adapter*, %struct.igb_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
