; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.atl1c_adapter = type { i32, i32 }

@__AT_TESTING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @atl1c_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.atl1c_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.atl1c_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.atl1c_adapter* %7, %struct.atl1c_adapter** %4, align 8
  %8 = load i32, i32* @__AT_TESTING, align 4
  %9 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %9, i32 0, i32 1
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %41

16:                                               ; preds = %1
  %17 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %18 = call i32 @atl1c_setup_ring_resources(%struct.atl1c_adapter* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %41

24:                                               ; preds = %16
  %25 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %26 = call i32 @atl1c_up(%struct.atl1c_adapter* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %32

31:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %41

32:                                               ; preds = %30
  %33 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %34 = call i32 @atl1c_free_irq(%struct.atl1c_adapter* %33)
  %35 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %36 = call i32 @atl1c_free_ring_resources(%struct.atl1c_adapter* %35)
  %37 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %38 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %37, i32 0, i32 0
  %39 = call i32 @atl1c_reset_mac(i32* %38)
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %32, %31, %22, %13
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.atl1c_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @atl1c_setup_ring_resources(%struct.atl1c_adapter*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atl1c_up(%struct.atl1c_adapter*) #1

declare dso_local i32 @atl1c_free_irq(%struct.atl1c_adapter*) #1

declare dso_local i32 @atl1c_free_ring_resources(%struct.atl1c_adapter*) #1

declare dso_local i32 @atl1c_reset_mac(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
