; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_intr_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_intr_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, %struct.TYPE_3__, i32, %struct.e1000_hw, %struct.igb_q_vector** }
%struct.TYPE_3__ = type { i32 }
%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.igb_q_vector = type { i32 }

@E1000_ICR = common dso_local global i32 0, align 4
@E1000_ICR_DRSTA = common dso_local global i32 0, align 4
@E1000_ICR_DOUTSYNC = common dso_local global i32 0, align 4
@E1000_ICR_RXSEQ = common dso_local global i32 0, align 4
@E1000_ICR_LSC = common dso_local global i32 0, align 4
@__IGB_DOWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@E1000_ICR_TS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @igb_intr_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_intr_msi(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.igb_adapter*, align 8
  %6 = alloca %struct.igb_q_vector*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.igb_adapter*
  store %struct.igb_adapter* %10, %struct.igb_adapter** %5, align 8
  %11 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %11, i32 0, i32 5
  %13 = load %struct.igb_q_vector**, %struct.igb_q_vector*** %12, align 8
  %14 = getelementptr inbounds %struct.igb_q_vector*, %struct.igb_q_vector** %13, i64 0
  %15 = load %struct.igb_q_vector*, %struct.igb_q_vector** %14, align 8
  store %struct.igb_q_vector* %15, %struct.igb_q_vector** %6, align 8
  %16 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %16, i32 0, i32 4
  store %struct.e1000_hw* %17, %struct.e1000_hw** %7, align 8
  %18 = load i32, i32* @E1000_ICR, align 4
  %19 = call i32 @rd32(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.igb_q_vector*, %struct.igb_q_vector** %6, align 8
  %21 = call i32 @igb_write_itr(%struct.igb_q_vector* %20)
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @E1000_ICR_DRSTA, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %28 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %27, i32 0, i32 3
  %29 = call i32 @schedule_work(i32* %28)
  br label %30

30:                                               ; preds = %26, %2
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @E1000_ICR_DOUTSYNC, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %37 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %35, %30
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @E1000_ICR_RXSEQ, align 4
  %44 = load i32, i32* @E1000_ICR_LSC, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %41
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %50 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = load i32, i32* @__IGB_DOWN, align 4
  %53 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %54 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %53, i32 0, i32 1
  %55 = call i32 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %48
  %58 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %59 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %58, i32 0, i32 0
  %60 = load i64, i64* @jiffies, align 8
  %61 = add nsw i64 %60, 1
  %62 = call i32 @mod_timer(i32* %59, i64 %61)
  br label %63

63:                                               ; preds = %57, %48
  br label %64

64:                                               ; preds = %63, %41
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @E1000_ICR_TS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %71 = call i32 @igb_tsync_interrupt(%struct.igb_adapter* %70)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load %struct.igb_q_vector*, %struct.igb_q_vector** %6, align 8
  %74 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %73, i32 0, i32 0
  %75 = call i32 @napi_schedule(i32* %74)
  %76 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %76
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @igb_write_itr(%struct.igb_q_vector*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @igb_tsync_interrupt(%struct.igb_adapter*) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
