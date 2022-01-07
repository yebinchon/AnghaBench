; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_disconnect_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_disconnect_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink = type { i32, i32, %struct.phy_device* }
%struct.phy_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phylink_disconnect_phy(%struct.phylink* %0) #0 {
  %2 = alloca %struct.phylink*, align 8
  %3 = alloca %struct.phy_device*, align 8
  store %struct.phylink* %0, %struct.phylink** %2, align 8
  %4 = call i32 (...) @ASSERT_RTNL()
  %5 = load %struct.phylink*, %struct.phylink** %2, align 8
  %6 = getelementptr inbounds %struct.phylink, %struct.phylink* %5, i32 0, i32 2
  %7 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  store %struct.phy_device* %7, %struct.phy_device** %3, align 8
  %8 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %9 = icmp ne %struct.phy_device* %8, null
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %12 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.phylink*, %struct.phylink** %2, align 8
  %15 = getelementptr inbounds %struct.phylink, %struct.phylink* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.phylink*, %struct.phylink** %2, align 8
  %18 = getelementptr inbounds %struct.phylink, %struct.phylink* %17, i32 0, i32 2
  store %struct.phy_device* null, %struct.phy_device** %18, align 8
  %19 = load %struct.phylink*, %struct.phylink** %2, align 8
  %20 = getelementptr inbounds %struct.phylink, %struct.phylink* %19, i32 0, i32 1
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %23 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.phylink*, %struct.phylink** %2, align 8
  %26 = getelementptr inbounds %struct.phylink, %struct.phylink* %25, i32 0, i32 0
  %27 = call i32 @flush_work(i32* %26)
  %28 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %29 = call i32 @phy_disconnect(%struct.phy_device* %28)
  br label %30

30:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @phy_disconnect(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
