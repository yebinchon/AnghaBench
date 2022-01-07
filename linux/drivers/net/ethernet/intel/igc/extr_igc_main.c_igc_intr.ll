; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_adapter = type { i32, i32, %struct.TYPE_3__, i32, %struct.igc_hw, %struct.igc_q_vector** }
%struct.TYPE_3__ = type { i32 }
%struct.igc_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.igc_q_vector = type { i32 }

@IGC_ICR = common dso_local global i32 0, align 4
@IGC_ICR_INT_ASSERTED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IGC_ICR_DRSTA = common dso_local global i32 0, align 4
@IGC_ICR_DOUTSYNC = common dso_local global i32 0, align 4
@IGC_ICR_RXSEQ = common dso_local global i32 0, align 4
@IGC_ICR_LSC = common dso_local global i32 0, align 4
@__IGC_DOWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @igc_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igc_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.igc_adapter*, align 8
  %7 = alloca %struct.igc_q_vector*, align 8
  %8 = alloca %struct.igc_hw*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.igc_adapter*
  store %struct.igc_adapter* %11, %struct.igc_adapter** %6, align 8
  %12 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %12, i32 0, i32 5
  %14 = load %struct.igc_q_vector**, %struct.igc_q_vector*** %13, align 8
  %15 = getelementptr inbounds %struct.igc_q_vector*, %struct.igc_q_vector** %14, i64 0
  %16 = load %struct.igc_q_vector*, %struct.igc_q_vector** %15, align 8
  store %struct.igc_q_vector* %16, %struct.igc_q_vector** %7, align 8
  %17 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %18 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %17, i32 0, i32 4
  store %struct.igc_hw* %18, %struct.igc_hw** %8, align 8
  %19 = load i32, i32* @IGC_ICR, align 4
  %20 = call i32 @rd32(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @IGC_ICR_INT_ASSERTED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %77

27:                                               ; preds = %2
  %28 = load %struct.igc_q_vector*, %struct.igc_q_vector** %7, align 8
  %29 = call i32 @igc_write_itr(%struct.igc_q_vector* %28)
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @IGC_ICR_DRSTA, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %36 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %35, i32 0, i32 3
  %37 = call i32 @schedule_work(i32* %36)
  br label %38

38:                                               ; preds = %34, %27
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @IGC_ICR_DOUTSYNC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %45 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %43, %38
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @IGC_ICR_RXSEQ, align 4
  %52 = load i32, i32* @IGC_ICR_LSC, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %49
  %57 = load %struct.igc_hw*, %struct.igc_hw** %8, align 8
  %58 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  %60 = load i32, i32* @__IGC_DOWN, align 4
  %61 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %62 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %61, i32 0, i32 1
  %63 = call i32 @test_bit(i32 %60, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %56
  %66 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  %67 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %66, i32 0, i32 0
  %68 = load i64, i64* @jiffies, align 8
  %69 = add nsw i64 %68, 1
  %70 = call i32 @mod_timer(i32* %67, i64 %69)
  br label %71

71:                                               ; preds = %65, %56
  br label %72

72:                                               ; preds = %71, %49
  %73 = load %struct.igc_q_vector*, %struct.igc_q_vector** %7, align 8
  %74 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %73, i32 0, i32 0
  %75 = call i32 @napi_schedule(i32* %74)
  %76 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %72, %25
  %78 = load i32, i32* %3, align 4
  ret i32 %78
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
