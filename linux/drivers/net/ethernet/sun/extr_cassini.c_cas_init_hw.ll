; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i64, i32, i64 }

@link_up = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas*, i32)* @cas_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_init_hw(%struct.cas* %0, i32 %1) #0 {
  %3 = alloca %struct.cas*, align 8
  %4 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.cas*, %struct.cas** %3, align 8
  %9 = call i32 @cas_phy_init(%struct.cas* %8)
  br label %10

10:                                               ; preds = %7, %2
  %11 = load %struct.cas*, %struct.cas** %3, align 8
  %12 = call i32 @cas_init_pause_thresholds(%struct.cas* %11)
  %13 = load %struct.cas*, %struct.cas** %3, align 8
  %14 = call i32 @cas_init_mac(%struct.cas* %13)
  %15 = load %struct.cas*, %struct.cas** %3, align 8
  %16 = call i32 @cas_init_dma(%struct.cas* %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %10
  %20 = load %struct.cas*, %struct.cas** %3, align 8
  %21 = getelementptr inbounds %struct.cas, %struct.cas* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.cas*, %struct.cas** %3, align 8
  %23 = call i32 @cas_begin_auto_negotiation(%struct.cas* %22, i32* null)
  br label %38

24:                                               ; preds = %10
  %25 = load %struct.cas*, %struct.cas** %3, align 8
  %26 = getelementptr inbounds %struct.cas, %struct.cas* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @link_up, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.cas*, %struct.cas** %3, align 8
  %32 = call i32 @cas_set_link_modes(%struct.cas* %31)
  %33 = load %struct.cas*, %struct.cas** %3, align 8
  %34 = getelementptr inbounds %struct.cas, %struct.cas* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @netif_carrier_on(i32 %35)
  br label %37

37:                                               ; preds = %30, %24
  br label %38

38:                                               ; preds = %37, %19
  ret void
}

declare dso_local i32 @cas_phy_init(%struct.cas*) #1

declare dso_local i32 @cas_init_pause_thresholds(%struct.cas*) #1

declare dso_local i32 @cas_init_mac(%struct.cas*) #1

declare dso_local i32 @cas_init_dma(%struct.cas*) #1

declare dso_local i32 @cas_begin_auto_negotiation(%struct.cas*, i32*) #1

declare dso_local i32 @cas_set_link_modes(%struct.cas*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
