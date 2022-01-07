; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.e1000_adapter = type { i32, i32, i64, i64, i64, i64, i32, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@ICR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@__E1000_DOWN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@E1000_ICR_RXSEQ = common dso_local global i32 0, align 4
@E1000_ICR_LSC = common dso_local global i32 0, align 4
@IMC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @e1000_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.e1000_adapter*, align 8
  %8 = alloca %struct.e1000_hw*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.e1000_adapter* %13, %struct.e1000_adapter** %7, align 8
  %14 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %15 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %14, i32 0, i32 7
  store %struct.e1000_hw* %15, %struct.e1000_hw** %8, align 8
  %16 = load i32, i32* @ICR, align 4
  %17 = call i32 @er32(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %89

26:                                               ; preds = %2
  %27 = load i32, i32* @__E1000_DOWN, align 4
  %28 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %29 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %28, i32 0, i32 0
  %30 = call i32 @test_bit(i32 %27, i32* %29)
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %34, i32* %3, align 4
  br label %89

35:                                               ; preds = %26
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @E1000_ICR_RXSEQ, align 4
  %38 = load i32, i32* @E1000_ICR_LSC, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %35
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %45 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load i32, i32* @__E1000_DOWN, align 4
  %47 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %48 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %47, i32 0, i32 0
  %49 = call i32 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %43
  %52 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %53 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %52, i32 0, i32 6
  %54 = call i32 @schedule_delayed_work(i32* %53, i32 1)
  br label %55

55:                                               ; preds = %51, %43
  br label %56

56:                                               ; preds = %55, %35
  %57 = load i32, i32* @IMC, align 4
  %58 = call i32 @ew32(i32 %57, i32 -1)
  %59 = call i32 (...) @E1000_WRITE_FLUSH()
  %60 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %61 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %60, i32 0, i32 1
  %62 = call i32 @napi_schedule_prep(i32* %61)
  %63 = call i64 @likely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %56
  %66 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %67 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %66, i32 0, i32 5
  store i64 0, i64* %67, align 8
  %68 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %69 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %68, i32 0, i32 4
  store i64 0, i64* %69, align 8
  %70 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %71 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %70, i32 0, i32 3
  store i64 0, i64* %71, align 8
  %72 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %73 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %75 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %74, i32 0, i32 1
  %76 = call i32 @__napi_schedule(i32* %75)
  br label %87

77:                                               ; preds = %56
  %78 = load i32, i32* @__E1000_DOWN, align 4
  %79 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %80 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %79, i32 0, i32 0
  %81 = call i32 @test_bit(i32 %78, i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %85 = call i32 @e1000_irq_enable(%struct.e1000_adapter* %84)
  br label %86

86:                                               ; preds = %83, %77
  br label %87

87:                                               ; preds = %86, %65
  %88 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %33, %24
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @napi_schedule_prep(i32*) #1

declare dso_local i32 @__napi_schedule(i32*) #1

declare dso_local i32 @e1000_irq_enable(%struct.e1000_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
