; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_msix_other.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_msix_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_adapter = type { i32, i32, i32, %struct.TYPE_3__, i32, %struct.igc_hw }
%struct.TYPE_3__ = type { i32 }
%struct.igc_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IGC_ICR = common dso_local global i32 0, align 4
@IGC_ICR_DRSTA = common dso_local global i32 0, align 4
@IGC_ICR_DOUTSYNC = common dso_local global i32 0, align 4
@IGC_ICR_LSC = common dso_local global i32 0, align 4
@__IGC_DOWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IGC_EIMS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @igc_msix_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igc_msix_other(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.igc_adapter*, align 8
  %6 = alloca %struct.igc_hw*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.igc_adapter*
  store %struct.igc_adapter* %9, %struct.igc_adapter** %5, align 8
  %10 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %10, i32 0, i32 5
  store %struct.igc_hw* %11, %struct.igc_hw** %6, align 8
  %12 = load i32, i32* @IGC_ICR, align 4
  %13 = call i32 @rd32(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @IGC_ICR_DRSTA, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %20 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %19, i32 0, i32 4
  %21 = call i32 @schedule_work(i32* %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @IGC_ICR_DOUTSYNC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %29 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %27, %22
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @IGC_ICR_LSC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load %struct.igc_hw*, %struct.igc_hw** %6, align 8
  %40 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load i32, i32* @__IGC_DOWN, align 4
  %43 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %44 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %43, i32 0, i32 2
  %45 = call i32 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %38
  %48 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %49 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %48, i32 0, i32 1
  %50 = load i64, i64* @jiffies, align 8
  %51 = add nsw i64 %50, 1
  %52 = call i32 @mod_timer(i32* %49, i64 %51)
  br label %53

53:                                               ; preds = %47, %38
  br label %54

54:                                               ; preds = %53, %33
  %55 = load i32, i32* @IGC_EIMS, align 4
  %56 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %57 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @wr32(i32 %55, i32 %58)
  %60 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %60
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @wr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
