; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_intr_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_intr_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_adapter = type { i32, i32, %struct.TYPE_3__, i32, %struct.igc_hw, %struct.igc_q_vector** }
%struct.TYPE_3__ = type { i32 }
%struct.igc_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.igc_q_vector = type { i32 }

@IGC_ICR = common dso_local global i32 0, align 4
@IGC_ICR_DRSTA = common dso_local global i32 0, align 4
@IGC_ICR_DOUTSYNC = common dso_local global i32 0, align 4
@IGC_ICR_RXSEQ = common dso_local global i32 0, align 4
@IGC_ICR_LSC = common dso_local global i32 0, align 4
@__IGC_DOWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @igc_intr_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igc_intr_msi(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.igc_adapter*, align 8
  %6 = alloca %struct.igc_q_vector*, align 8
  %7 = alloca %struct.igc_hw*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.igc_adapter*
  store %struct.igc_adapter* %10, %struct.igc_adapter** %5, align 8
  %11 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %11, i32 0, i32 5
  %13 = load %struct.igc_q_vector**, %struct.igc_q_vector*** %12, align 8
  %14 = getelementptr inbounds %struct.igc_q_vector*, %struct.igc_q_vector** %13, i64 0
  %15 = load %struct.igc_q_vector*, %struct.igc_q_vector** %14, align 8
  store %struct.igc_q_vector* %15, %struct.igc_q_vector** %6, align 8
  %16 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %16, i32 0, i32 4
  store %struct.igc_hw* %17, %struct.igc_hw** %7, align 8
  %18 = load i32, i32* @IGC_ICR, align 4
  %19 = call i32 @rd32(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.igc_q_vector*, %struct.igc_q_vector** %6, align 8
  %21 = call i32 @igc_write_itr(%struct.igc_q_vector* %20)
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @IGC_ICR_DRSTA, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %28 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %27, i32 0, i32 3
  %29 = call i32 @schedule_work(i32* %28)
  br label %30

30:                                               ; preds = %26, %2
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @IGC_ICR_DOUTSYNC, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %37 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %35, %30
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @IGC_ICR_RXSEQ, align 4
  %44 = load i32, i32* @IGC_ICR_LSC, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %41
  %49 = load %struct.igc_hw*, %struct.igc_hw** %7, align 8
  %50 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = load i32, i32* @__IGC_DOWN, align 4
  %53 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %54 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %53, i32 0, i32 1
  %55 = call i32 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %48
  %58 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %59 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %58, i32 0, i32 0
  %60 = load i64, i64* @jiffies, align 8
  %61 = add nsw i64 %60, 1
  %62 = call i32 @mod_timer(i32* %59, i64 %61)
  br label %63

63:                                               ; preds = %57, %48
  br label %64

64:                                               ; preds = %63, %41
  %65 = load %struct.igc_q_vector*, %struct.igc_q_vector** %6, align 8
  %66 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %65, i32 0, i32 0
  %67 = call i32 @napi_schedule(i32* %66)
  %68 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %68
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @igc_write_itr(%struct.igc_q_vector*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
