; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_powersave_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_powersave_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PMCS_LFEN = common dso_local global i32 0, align 4
@PMCS_LREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_adapter*)* @jme_powersave_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_powersave_phy(%struct.jme_adapter* %0) #0 {
  %2 = alloca %struct.jme_adapter*, align 8
  store %struct.jme_adapter* %0, %struct.jme_adapter** %2, align 8
  %3 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %31

7:                                                ; preds = %1
  %8 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i64 @device_may_wakeup(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %7
  %15 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %16 = call i32 @jme_set_100m_half(%struct.jme_adapter* %15)
  %17 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PMCS_LFEN, align 4
  %21 = load i32, i32* @PMCS_LREN, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %27 = call i32 @jme_wait_link(%struct.jme_adapter* %26)
  br label %28

28:                                               ; preds = %25, %14
  %29 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %30 = call i32 @jme_clear_pm_enable_wol(%struct.jme_adapter* %29)
  br label %34

31:                                               ; preds = %7, %1
  %32 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %33 = call i32 @jme_phy_off(%struct.jme_adapter* %32)
  br label %34

34:                                               ; preds = %31, %28
  ret void
}

declare dso_local i64 @device_may_wakeup(i32*) #1

declare dso_local i32 @jme_set_100m_half(%struct.jme_adapter*) #1

declare dso_local i32 @jme_wait_link(%struct.jme_adapter*) #1

declare dso_local i32 @jme_clear_pm_enable_wol(%struct.jme_adapter*) #1

declare dso_local i32 @jme_phy_off(%struct.jme_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
