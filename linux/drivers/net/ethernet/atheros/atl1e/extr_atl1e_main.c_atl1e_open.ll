; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.atl1e_adapter = type { i32, i32 }

@__AT_TESTING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @atl1e_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1e_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.atl1e_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.atl1e_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.atl1e_adapter* %7, %struct.atl1e_adapter** %4, align 8
  %8 = load i32, i32* @__AT_TESTING, align 4
  %9 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %9, i32 0, i32 1
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %51

16:                                               ; preds = %1
  %17 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %4, align 8
  %18 = call i32 @atl1e_init_ring_resources(%struct.atl1e_adapter* %17)
  %19 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %4, align 8
  %20 = call i32 @atl1e_setup_ring_resources(%struct.atl1e_adapter* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %51

26:                                               ; preds = %16
  %27 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %4, align 8
  %28 = call i32 @atl1e_request_irq(%struct.atl1e_adapter* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %44

33:                                               ; preds = %26
  %34 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %4, align 8
  %35 = call i32 @atl1e_up(%struct.atl1e_adapter* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %41

40:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %51

41:                                               ; preds = %39
  %42 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %4, align 8
  %43 = call i32 @atl1e_free_irq(%struct.atl1e_adapter* %42)
  br label %44

44:                                               ; preds = %41, %32
  %45 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %4, align 8
  %46 = call i32 @atl1e_free_ring_resources(%struct.atl1e_adapter* %45)
  %47 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %47, i32 0, i32 0
  %49 = call i32 @atl1e_reset_hw(i32* %48)
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %44, %40, %24, %13
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.atl1e_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @atl1e_init_ring_resources(%struct.atl1e_adapter*) #1

declare dso_local i32 @atl1e_setup_ring_resources(%struct.atl1e_adapter*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atl1e_request_irq(%struct.atl1e_adapter*) #1

declare dso_local i32 @atl1e_up(%struct.atl1e_adapter*) #1

declare dso_local i32 @atl1e_free_irq(%struct.atl1e_adapter*) #1

declare dso_local i32 @atl1e_free_ring_resources(%struct.atl1e_adapter*) #1

declare dso_local i32 @atl1e_reset_hw(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
