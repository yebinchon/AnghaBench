; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alteon/extr_acenic.c_ace_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alteon/extr_acenic.c_ace_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ace_private = type { i32, i64, i32, i64, i32, i32, i32, i32, i32 }

@RX_LOW_STD_THRES = common dso_local global i32 0, align 4
@RX_RING_SIZE = common dso_local global i64 0, align 8
@RX_LOW_MINI_THRES = common dso_local global i32 0, align 4
@RX_MINI_SIZE = common dso_local global i64 0, align 8
@RX_LOW_JUMBO_THRES = common dso_local global i32 0, align 4
@RX_JUMBO_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ace_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ace_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ace_private*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.net_device*
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ace_private* @netdev_priv(%struct.net_device* %8)
  store %struct.ace_private* %9, %struct.ace_private** %4, align 8
  %10 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %11 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %10, i32 0, i32 8
  %12 = call i32 @atomic_read(i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @RX_LOW_STD_THRES, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %18 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %17, i32 0, i32 7
  %19 = call i32 @test_and_set_bit(i32 0, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = load i64, i64* @RX_RING_SIZE, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = sub nsw i64 %23, %25
  %27 = call i32 @ace_load_std_rx_ring(%struct.net_device* %22, i64 %26)
  br label %28

28:                                               ; preds = %21, %16, %1
  %29 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %30 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %31, 2
  br i1 %32, label %33, label %53

33:                                               ; preds = %28
  %34 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %35 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %34, i32 0, i32 6
  %36 = call i32 @atomic_read(i32* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @RX_LOW_MINI_THRES, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %42 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %41, i32 0, i32 5
  %43 = call i32 @test_and_set_bit(i32 0, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = load i64, i64* @RX_MINI_SIZE, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %47, %49
  %51 = call i32 @ace_load_mini_rx_ring(%struct.net_device* %46, i64 %50)
  br label %52

52:                                               ; preds = %45, %40, %33
  br label %53

53:                                               ; preds = %52, %28
  %54 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %55 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %54, i32 0, i32 4
  %56 = call i32 @atomic_read(i32* %55)
  store i32 %56, i32* %5, align 4
  %57 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %58 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %53
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @RX_LOW_JUMBO_THRES, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %67 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %66, i32 0, i32 2
  %68 = call i32 @test_and_set_bit(i32 0, i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %65
  %71 = load %struct.net_device*, %struct.net_device** %3, align 8
  %72 = load i64, i64* @RX_JUMBO_SIZE, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = sub nsw i64 %72, %74
  %76 = call i32 @ace_load_jumbo_rx_ring(%struct.net_device* %71, i64 %75)
  br label %77

77:                                               ; preds = %70, %65, %61, %53
  %78 = load %struct.ace_private*, %struct.ace_private** %4, align 8
  %79 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  ret void
}

declare dso_local %struct.ace_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @ace_load_std_rx_ring(%struct.net_device*, i64) #1

declare dso_local i32 @ace_load_mini_rx_ring(%struct.net_device*, i64) #1

declare dso_local i32 @ace_load_jumbo_rx_ring(%struct.net_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
