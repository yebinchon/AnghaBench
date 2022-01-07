; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_msix_other.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_msix_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, i32, %struct.TYPE_3__, i32, %struct.e1000_hw }
%struct.TYPE_3__ = type { i32 }
%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@E1000_ICR = common dso_local global i32 0, align 4
@E1000_ICR_DRSTA = common dso_local global i32 0, align 4
@E1000_ICR_DOUTSYNC = common dso_local global i32 0, align 4
@E1000_ICR_VMMB = common dso_local global i32 0, align 4
@E1000_ICR_LSC = common dso_local global i32 0, align 4
@__IGB_DOWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@E1000_ICR_TS = common dso_local global i32 0, align 4
@E1000_EIMS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @igb_msix_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_msix_other(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.igb_adapter*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.igb_adapter*
  store %struct.igb_adapter* %9, %struct.igb_adapter** %5, align 8
  %10 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %10, i32 0, i32 5
  store %struct.e1000_hw* %11, %struct.e1000_hw** %6, align 8
  %12 = load i32, i32* @E1000_ICR, align 4
  %13 = call i32 @rd32(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @E1000_ICR_DRSTA, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %20 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %19, i32 0, i32 4
  %21 = call i32 @schedule_work(i32* %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @E1000_ICR_DOUTSYNC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %29 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %34 = call i32 @igb_check_wvbr(%struct.igb_adapter* %33)
  br label %35

35:                                               ; preds = %27, %22
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @E1000_ICR_VMMB, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %42 = call i32 @igb_msg_task(%struct.igb_adapter* %41)
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @E1000_ICR_LSC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %43
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %50 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = load i32, i32* @__IGB_DOWN, align 4
  %53 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %54 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %53, i32 0, i32 2
  %55 = call i32 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %48
  %58 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %59 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %58, i32 0, i32 1
  %60 = load i64, i64* @jiffies, align 8
  %61 = add nsw i64 %60, 1
  %62 = call i32 @mod_timer(i32* %59, i64 %61)
  br label %63

63:                                               ; preds = %57, %48
  br label %64

64:                                               ; preds = %63, %43
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @E1000_ICR_TS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %71 = call i32 @igb_tsync_interrupt(%struct.igb_adapter* %70)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i32, i32* @E1000_EIMS, align 4
  %74 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %75 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @wr32(i32 %73, i32 %76)
  %78 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %78
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @igb_check_wvbr(%struct.igb_adapter*) #1

declare dso_local i32 @igb_msg_task(%struct.igb_adapter*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @igb_tsync_interrupt(%struct.igb_adapter*) #1

declare dso_local i32 @wr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
