; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_ariadne.c_ariadne_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_ariadne.c_ariadne_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.Am79C960 = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"transmit timed out, status %04x, resetting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ariadne_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ariadne_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.Am79C960*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.Am79C960*
  store %struct.Am79C960* %7, %struct.Am79C960** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = load %struct.Am79C960*, %struct.Am79C960** %3, align 8
  %10 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %9, i32 0, i32 0
  %11 = load volatile i32, i32* %10, align 4
  %12 = call i32 @netdev_err(%struct.net_device* %8, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @ariadne_reset(%struct.net_device* %13)
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @netif_wake_queue(%struct.net_device* %15)
  ret void
}

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @ariadne_reset(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
