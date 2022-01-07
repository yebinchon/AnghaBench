; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_dim_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_dim_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32, i32, i32, i32, i32, %struct.bnad_rx_info*, i32 }
%struct.bnad_rx_info = type { %struct.bnad_rx_ctrl*, i32 }
%struct.bnad_rx_ctrl = type { i32 }
%struct.timer_list = type { i32 }

@dim_timer = common dso_local global i32 0, align 4
@BNAD_RF_DIM_TIMER_RUNNING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@BNAD_DIM_TIMER_FREQ = common dso_local global i32 0, align 4
@bnad = common dso_local global %struct.bnad* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @bnad_dim_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnad_dim_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca %struct.bnad_rx_info*, align 8
  %5 = alloca %struct.bnad_rx_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %9 = load %struct.bnad*, %struct.bnad** %3, align 8
  %10 = ptrtoint %struct.bnad* %9 to i32
  %11 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %12 = load i32, i32* @dim_timer, align 4
  %13 = call %struct.bnad* @from_timer(i32 %10, %struct.timer_list* %11, i32 %12)
  store %struct.bnad* %13, %struct.bnad** %3, align 8
  %14 = load %struct.bnad*, %struct.bnad** %3, align 8
  %15 = getelementptr inbounds %struct.bnad, %struct.bnad* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @netif_carrier_ok(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %93

20:                                               ; preds = %1
  %21 = load %struct.bnad*, %struct.bnad** %3, align 8
  %22 = getelementptr inbounds %struct.bnad, %struct.bnad* %21, i32 0, i32 2
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %71, %20
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.bnad*, %struct.bnad** %3, align 8
  %28 = getelementptr inbounds %struct.bnad, %struct.bnad* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %74

31:                                               ; preds = %25
  %32 = load %struct.bnad*, %struct.bnad** %3, align 8
  %33 = getelementptr inbounds %struct.bnad, %struct.bnad* %32, i32 0, i32 5
  %34 = load %struct.bnad_rx_info*, %struct.bnad_rx_info** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.bnad_rx_info, %struct.bnad_rx_info* %34, i64 %36
  store %struct.bnad_rx_info* %37, %struct.bnad_rx_info** %4, align 8
  %38 = load %struct.bnad_rx_info*, %struct.bnad_rx_info** %4, align 8
  %39 = getelementptr inbounds %struct.bnad_rx_info, %struct.bnad_rx_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %31
  br label %71

43:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %67, %43
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.bnad*, %struct.bnad** %3, align 8
  %47 = getelementptr inbounds %struct.bnad, %struct.bnad* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %44
  %51 = load %struct.bnad_rx_info*, %struct.bnad_rx_info** %4, align 8
  %52 = getelementptr inbounds %struct.bnad_rx_info, %struct.bnad_rx_info* %51, i32 0, i32 0
  %53 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.bnad_rx_ctrl, %struct.bnad_rx_ctrl* %53, i64 %55
  store %struct.bnad_rx_ctrl* %56, %struct.bnad_rx_ctrl** %5, align 8
  %57 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %5, align 8
  %58 = getelementptr inbounds %struct.bnad_rx_ctrl, %struct.bnad_rx_ctrl* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %50
  br label %67

62:                                               ; preds = %50
  %63 = load %struct.bnad_rx_ctrl*, %struct.bnad_rx_ctrl** %5, align 8
  %64 = getelementptr inbounds %struct.bnad_rx_ctrl, %struct.bnad_rx_ctrl* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @bna_rx_dim_update(i32 %65)
  br label %67

67:                                               ; preds = %62, %61
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %44

70:                                               ; preds = %44
  br label %71

71:                                               ; preds = %70, %42
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %25

74:                                               ; preds = %25
  %75 = load i32, i32* @BNAD_RF_DIM_TIMER_RUNNING, align 4
  %76 = load %struct.bnad*, %struct.bnad** %3, align 8
  %77 = getelementptr inbounds %struct.bnad, %struct.bnad* %76, i32 0, i32 4
  %78 = call i64 @test_bit(i32 %75, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load %struct.bnad*, %struct.bnad** %3, align 8
  %82 = getelementptr inbounds %struct.bnad, %struct.bnad* %81, i32 0, i32 3
  %83 = load i64, i64* @jiffies, align 8
  %84 = load i32, i32* @BNAD_DIM_TIMER_FREQ, align 4
  %85 = call i64 @msecs_to_jiffies(i32 %84)
  %86 = add nsw i64 %83, %85
  %87 = call i32 @mod_timer(i32* %82, i64 %86)
  br label %88

88:                                               ; preds = %80, %74
  %89 = load %struct.bnad*, %struct.bnad** %3, align 8
  %90 = getelementptr inbounds %struct.bnad, %struct.bnad* %89, i32 0, i32 2
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  br label %93

93:                                               ; preds = %88, %19
  ret void
}

declare dso_local %struct.bnad* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @netif_carrier_ok(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bna_rx_dim_update(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
