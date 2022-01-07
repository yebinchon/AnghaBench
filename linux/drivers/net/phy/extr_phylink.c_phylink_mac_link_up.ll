; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_mac_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_mac_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink = type { i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__*, i32, %struct.net_device* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32, i32, i32, i32)* }
%struct.net_device = type { i32 }
%struct.phylink_link_state = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Link is Up - %s/%s - flow control %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phylink*, i64, i64)* @phylink_mac_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phylink_mac_link_up(%struct.phylink* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.phylink_link_state, align 4
  %5 = alloca %struct.phylink*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = bitcast %struct.phylink_link_state* %4 to { i64, i64 }*
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  store i64 %1, i64* %8, align 4
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  store i64 %2, i64* %9, align 4
  store %struct.phylink* %0, %struct.phylink** %5, align 8
  %10 = load %struct.phylink*, %struct.phylink** %5, align 8
  %11 = getelementptr inbounds %struct.phylink, %struct.phylink* %10, i32 0, i32 6
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %6, align 8
  %13 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %4, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.phylink*, %struct.phylink** %5, align 8
  %16 = getelementptr inbounds %struct.phylink, %struct.phylink* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 8
  %17 = load %struct.phylink*, %struct.phylink** %5, align 8
  %18 = getelementptr inbounds %struct.phylink, %struct.phylink* %17, i32 0, i32 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %20, align 8
  %22 = load %struct.phylink*, %struct.phylink** %5, align 8
  %23 = getelementptr inbounds %struct.phylink, %struct.phylink* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.phylink*, %struct.phylink** %5, align 8
  %26 = getelementptr inbounds %struct.phylink, %struct.phylink* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.phylink*, %struct.phylink** %5, align 8
  %29 = getelementptr inbounds %struct.phylink, %struct.phylink* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.phylink*, %struct.phylink** %5, align 8
  %33 = getelementptr inbounds %struct.phylink, %struct.phylink* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %21(i32 %24, i32 %27, i32 %31, i32 %34)
  %36 = load %struct.net_device*, %struct.net_device** %6, align 8
  %37 = icmp ne %struct.net_device* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %3
  %39 = load %struct.net_device*, %struct.net_device** %6, align 8
  %40 = call i32 @netif_carrier_on(%struct.net_device* %39)
  br label %41

41:                                               ; preds = %38, %3
  %42 = load %struct.phylink*, %struct.phylink** %5, align 8
  %43 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %4, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @phy_speed_to_str(i32 %44)
  %46 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %4, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @phy_duplex_to_str(i32 %47)
  %49 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %4, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @phylink_pause_to_str(i32 %50)
  %52 = call i32 @phylink_info(%struct.phylink* %42, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48, i32 %51)
  ret void
}

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @phylink_info(%struct.phylink*, i8*, i32, i32, i32) #1

declare dso_local i32 @phy_speed_to_str(i32) #1

declare dso_local i32 @phy_duplex_to_str(i32) #1

declare dso_local i32 @phylink_pause_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
