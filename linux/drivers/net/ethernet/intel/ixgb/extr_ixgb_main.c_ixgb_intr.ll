; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgb_adapter = type { i32, %struct.ixgb_hw, i32, i32 }
%struct.ixgb_hw = type { i32 }

@ICR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IXGB_INT_RXSEQ = common dso_local global i32 0, align 4
@IXGB_INT_LSC = common dso_local global i32 0, align 4
@__IXGB_DOWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IMC = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ixgb_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgb_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ixgb_adapter*, align 8
  %8 = alloca %struct.ixgb_hw*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.ixgb_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.ixgb_adapter* %13, %struct.ixgb_adapter** %7, align 8
  %14 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %15 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %14, i32 0, i32 1
  store %struct.ixgb_hw* %15, %struct.ixgb_hw** %8, align 8
  %16 = load %struct.ixgb_hw*, %struct.ixgb_hw** %8, align 8
  %17 = load i32, i32* @ICR, align 4
  %18 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %62

27:                                               ; preds = %2
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @IXGB_INT_RXSEQ, align 4
  %30 = load i32, i32* @IXGB_INT_LSC, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %27
  %36 = load i32, i32* @__IXGB_DOWN, align 4
  %37 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %38 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %37, i32 0, i32 3
  %39 = call i32 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %43 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %42, i32 0, i32 2
  %44 = load i32, i32* @jiffies, align 4
  %45 = call i32 @mod_timer(i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %35
  br label %47

47:                                               ; preds = %46, %27
  %48 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %49 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %48, i32 0, i32 0
  %50 = call i64 @napi_schedule_prep(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %54 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %53, i32 0, i32 1
  %55 = load i32, i32* @IMC, align 4
  %56 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %54, i32 %55, i32 -1)
  %57 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %7, align 8
  %58 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %57, i32 0, i32 0
  %59 = call i32 @__napi_schedule(i32* %58)
  br label %60

60:                                               ; preds = %52, %47
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %25
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.ixgb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @IXGB_READ_REG(%struct.ixgb_hw*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i32 @IXGB_WRITE_REG(%struct.ixgb_hw*, i32, i32) #1

declare dso_local i32 @__napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
