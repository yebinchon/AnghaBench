; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_reset_subtask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_reset_subtask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32, i32 }

@STMMAC_RESET_REQUESTED = common dso_local global i32 0, align 4
@STMMAC_DOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Reset adapter.\0A\00", align 1
@STMMAC_RESETING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmmac_priv*)* @stmmac_reset_subtask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_reset_subtask(%struct.stmmac_priv* %0) #0 {
  %2 = alloca %struct.stmmac_priv*, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %2, align 8
  %3 = load i32, i32* @STMMAC_RESET_REQUESTED, align 4
  %4 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %5 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %4, i32 0, i32 0
  %6 = call i32 @test_and_clear_bit(i32 %3, i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %56

9:                                                ; preds = %1
  %10 = load i32, i32* @STMMAC_DOWN, align 4
  %11 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %12 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %11, i32 0, i32 0
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %56

16:                                               ; preds = %9
  %17 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %18 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @netdev_err(i32 %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 (...) @rtnl_lock()
  %22 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %23 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @netif_trans_update(i32 %24)
  br label %26

26:                                               ; preds = %32, %16
  %27 = load i32, i32* @STMMAC_RESETING, align 4
  %28 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %29 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %28, i32 0, i32 0
  %30 = call i64 @test_and_set_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %26

34:                                               ; preds = %26
  %35 = load i32, i32* @STMMAC_DOWN, align 4
  %36 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %37 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %36, i32 0, i32 0
  %38 = call i32 @set_bit(i32 %35, i32* %37)
  %39 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %40 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_close(i32 %41)
  %43 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %44 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_open(i32 %45, i32* null)
  %47 = load i32, i32* @STMMAC_DOWN, align 4
  %48 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %49 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %48, i32 0, i32 0
  %50 = call i32 @clear_bit(i32 %47, i32* %49)
  %51 = load i32, i32* @STMMAC_RESETING, align 4
  %52 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %53 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %52, i32 0, i32 0
  %54 = call i32 @clear_bit(i32 %51, i32* %53)
  %55 = call i32 (...) @rtnl_unlock()
  br label %56

56:                                               ; preds = %34, %15, %8
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @netif_trans_update(i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dev_close(i32) #1

declare dso_local i32 @dev_open(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
