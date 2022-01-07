; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_wl3501_cs.c_wl3501_md_confirm_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_wl3501_cs.c_wl3501_md_confirm_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.wl3501_card = type { i32 }
%struct.wl3501_md_confirm = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.wl3501_card*, i32)* @wl3501_md_confirm_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl3501_md_confirm_interrupt(%struct.net_device* %0, %struct.wl3501_card* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.wl3501_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl3501_md_confirm, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.wl3501_card* %1, %struct.wl3501_card** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.wl3501_card*, %struct.wl3501_card** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @wl3501_get_from_wla(%struct.wl3501_card* %9, i32 %10, %struct.wl3501_md_confirm* %7, i32 4)
  %12 = load %struct.wl3501_card*, %struct.wl3501_card** %5, align 8
  %13 = getelementptr inbounds %struct.wl3501_md_confirm, %struct.wl3501_md_confirm* %7, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @wl3501_free_tx_buffer(%struct.wl3501_card* %12, i32 %14)
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call i64 @netif_queue_stopped(%struct.net_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call i32 @netif_wake_queue(%struct.net_device* %20)
  br label %22

22:                                               ; preds = %19, %3
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @wl3501_get_from_wla(%struct.wl3501_card*, i32, %struct.wl3501_md_confirm*, i32) #1

declare dso_local i32 @wl3501_free_tx_buffer(%struct.wl3501_card*, i32) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
