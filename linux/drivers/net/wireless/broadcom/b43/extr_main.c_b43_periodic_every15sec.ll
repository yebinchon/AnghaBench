; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_periodic_every15sec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_periodic_every15sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, i32, i32, i32*, i32, %struct.TYPE_3__, %struct.b43_phy }
%struct.TYPE_3__ = type { i64 }
%struct.b43_phy = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.b43_wldev*)* }

@B43_SHM_SCRATCH = common dso_local global i32 0, align 4
@B43_WATCHDOG_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Firmware watchdog: The firmware died!\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Firmware watchdog\00", align 1
@B43_PHY_TX_BADNESS_LIMIT = common dso_local global i32 0, align 4
@B43_DBG_VERBOSESTATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_periodic_every15sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_periodic_every15sec(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %6 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %5, i32 0, i32 6
  store %struct.b43_phy* %6, %struct.b43_phy** %3, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %1
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %14 = load i32, i32* @B43_SHM_SCRATCH, align 4
  %15 = load i32, i32* @B43_WATCHDOG_REG, align 4
  %16 = call i32 @b43_shm_read16(%struct.b43_wldev* %13, i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %12
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %22 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @b43err(i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %26 = call i32 @b43_controller_restart(%struct.b43_wldev* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %54

27:                                               ; preds = %12
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %29 = load i32, i32* @B43_SHM_SCRATCH, align 4
  %30 = load i32, i32* @B43_WATCHDOG_REG, align 4
  %31 = call i32 @b43_shm_write16(%struct.b43_wldev* %28, i32 %29, i32 %30, i32 1)
  br label %32

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %35 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (%struct.b43_wldev*)*, i32 (%struct.b43_wldev*)** %37, align 8
  %39 = icmp ne i32 (%struct.b43_wldev*)* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %42 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32 (%struct.b43_wldev*)*, i32 (%struct.b43_wldev*)** %44, align 8
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %47 = call i32 %45(%struct.b43_wldev* %46)
  br label %48

48:                                               ; preds = %40, %33
  %49 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %50 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %49, i32 0, i32 0
  %51 = load i32, i32* @B43_PHY_TX_BADNESS_LIMIT, align 4
  %52 = call i32 @atomic_set(i32* %50, i32 %51)
  %53 = call i32 (...) @wmb()
  br label %54

54:                                               ; preds = %48, %20
  ret void
}

declare dso_local i32 @b43_shm_read16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

declare dso_local i32 @b43_controller_restart(%struct.b43_wldev*, i8*) #1

declare dso_local i32 @b43_shm_write16(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
