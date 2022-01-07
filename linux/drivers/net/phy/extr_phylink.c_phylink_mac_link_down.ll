; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_mac_link_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_mac_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink = type { i32, i32, i32, %struct.TYPE_2__*, %struct.net_device* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32)* }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Link is Down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phylink*)* @phylink_mac_link_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phylink_mac_link_down(%struct.phylink* %0) #0 {
  %2 = alloca %struct.phylink*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.phylink* %0, %struct.phylink** %2, align 8
  %4 = load %struct.phylink*, %struct.phylink** %2, align 8
  %5 = getelementptr inbounds %struct.phylink, %struct.phylink* %4, i32 0, i32 4
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call i32 @netif_carrier_off(%struct.net_device* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.phylink*, %struct.phylink** %2, align 8
  %14 = getelementptr inbounds %struct.phylink, %struct.phylink* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %16, align 8
  %18 = load %struct.phylink*, %struct.phylink** %2, align 8
  %19 = getelementptr inbounds %struct.phylink, %struct.phylink* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.phylink*, %struct.phylink** %2, align 8
  %22 = getelementptr inbounds %struct.phylink, %struct.phylink* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.phylink*, %struct.phylink** %2, align 8
  %25 = getelementptr inbounds %struct.phylink, %struct.phylink* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %17(i32 %20, i32 %23, i32 %26)
  %28 = load %struct.phylink*, %struct.phylink** %2, align 8
  %29 = call i32 @phylink_info(%struct.phylink* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @phylink_info(%struct.phylink*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
