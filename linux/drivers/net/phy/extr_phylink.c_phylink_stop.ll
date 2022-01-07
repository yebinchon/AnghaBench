; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink = type { i64, i32, i64, i64 }

@PHYLINK_DISABLE_STOPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phylink_stop(%struct.phylink* %0) #0 {
  %2 = alloca %struct.phylink*, align 8
  store %struct.phylink* %0, %struct.phylink** %2, align 8
  %3 = call i32 (...) @ASSERT_RTNL()
  %4 = load %struct.phylink*, %struct.phylink** %2, align 8
  %5 = getelementptr inbounds %struct.phylink, %struct.phylink* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.phylink*, %struct.phylink** %2, align 8
  %10 = getelementptr inbounds %struct.phylink, %struct.phylink* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @sfp_upstream_stop(i64 %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.phylink*, %struct.phylink** %2, align 8
  %15 = getelementptr inbounds %struct.phylink, %struct.phylink* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.phylink*, %struct.phylink** %2, align 8
  %20 = getelementptr inbounds %struct.phylink, %struct.phylink* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @phy_stop(i64 %21)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.phylink*, %struct.phylink** %2, align 8
  %25 = getelementptr inbounds %struct.phylink, %struct.phylink* %24, i32 0, i32 1
  %26 = call i32 @del_timer_sync(i32* %25)
  %27 = load %struct.phylink*, %struct.phylink** %2, align 8
  %28 = getelementptr inbounds %struct.phylink, %struct.phylink* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load %struct.phylink*, %struct.phylink** %2, align 8
  %33 = getelementptr inbounds %struct.phylink, %struct.phylink* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.phylink*, %struct.phylink** %2, align 8
  %36 = call i32 @free_irq(i64 %34, %struct.phylink* %35)
  %37 = load %struct.phylink*, %struct.phylink** %2, align 8
  %38 = getelementptr inbounds %struct.phylink, %struct.phylink* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %31, %23
  %40 = load %struct.phylink*, %struct.phylink** %2, align 8
  %41 = load i32, i32* @PHYLINK_DISABLE_STOPPED, align 4
  %42 = call i32 @phylink_run_resolve_and_disable(%struct.phylink* %40, i32 %41)
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @sfp_upstream_stop(i64) #1

declare dso_local i32 @phy_stop(i64) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @free_irq(i64, %struct.phylink*) #1

declare dso_local i32 @phylink_run_resolve_and_disable(%struct.phylink*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
