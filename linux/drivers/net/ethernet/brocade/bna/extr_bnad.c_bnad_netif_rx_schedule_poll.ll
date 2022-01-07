; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_netif_rx_schedule_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_netif_rx_schedule_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32 }
%struct.bna_ccb = type { i64 }
%struct.bnad_rx_ctrl = type { i32, %struct.napi_struct }
%struct.napi_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnad*, %struct.bna_ccb*)* @bnad_netif_rx_schedule_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnad_netif_rx_schedule_poll(%struct.bnad* %0, %struct.bna_ccb* %1) #0 {
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca %struct.bna_ccb*, align 8
  %5 = alloca %struct.bnad_rx_ctrl*, align 8
  %6 = alloca %struct.napi_struct*, align 8
  store %struct.bnad* %0, %struct.bnad** %3, align 8
  store %struct.bna_ccb* %1, %struct.bna_ccb** %4, align 8
  %7 = load %struct.bna_ccb*, %struct.bna_ccb** %4, align 8
  %8 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.bnad_rx_ctrl*
  store %struct.bnad_rx_ctrl* %10, %struct.bnad_rx_ctrl** %5, align 8
  %11 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %5, align 8
  %12 = getelementptr inbounds %struct.bnad_rx_ctrl, %struct.bnad_rx_ctrl* %11, i32 0, i32 1
  store %struct.napi_struct* %12, %struct.napi_struct** %6, align 8
  %13 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %14 = call i32 @napi_schedule_prep(%struct.napi_struct* %13)
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %19 = call i32 @__napi_schedule(%struct.napi_struct* %18)
  %20 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %5, align 8
  %21 = getelementptr inbounds %struct.bnad_rx_ctrl, %struct.bnad_rx_ctrl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %17, %2
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @napi_schedule_prep(%struct.napi_struct*) #1

declare dso_local i32 @__napi_schedule(%struct.napi_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
