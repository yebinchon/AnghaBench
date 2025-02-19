; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_tulip.h_tulip_restart_rxtx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_tulip.h_tulip_restart_rxtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tulip_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tulip_private*)* @tulip_restart_rxtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tulip_restart_rxtx(%struct.tulip_private* %0) #0 {
  %2 = alloca %struct.tulip_private*, align 8
  store %struct.tulip_private* %0, %struct.tulip_private** %2, align 8
  %3 = load %struct.tulip_private*, %struct.tulip_private** %2, align 8
  %4 = call i32 @tulip_stop_rxtx(%struct.tulip_private* %3)
  %5 = call i32 @udelay(i32 5)
  %6 = load %struct.tulip_private*, %struct.tulip_private** %2, align 8
  %7 = call i32 @tulip_start_rxtx(%struct.tulip_private* %6)
  ret void
}

declare dso_local i32 @tulip_stop_rxtx(%struct.tulip_private*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @tulip_start_rxtx(%struct.tulip_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
