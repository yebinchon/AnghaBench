; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_stats.c_bnx2x_stats_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_stats.c_bnx2x_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.bnx2x_eth_stats, i32, %struct.TYPE_2__ }
%struct.bnx2x_eth_stats = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }

@DMAE_COMP_VAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"storm stats were not updated for 3 times\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"brb drops %u  brb truncate %u\0A\00", align 1
@stats_comp = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_stats_update(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca %struct.bnx2x_eth_stats*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %5 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %6 = load i64*, i64** %3, align 8
  %7 = ptrtoint i64* %6 to i32
  %8 = call i64* @bnx2x_sp(%struct.bnx2x* %5, i32 %7)
  store i64* %8, i64** %3, align 8
  %9 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %10 = call i64 @bnx2x_edebug_stats_stopped(%struct.bnx2x* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %81

13:                                               ; preds = %1
  %14 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %15 = call i64 @IS_PF(%struct.bnx2x* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %13
  %18 = load i64*, i64** %3, align 8
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DMAE_COMP_VAL, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %81

23:                                               ; preds = %17
  %24 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %25 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %31 = call i32 @bnx2x_hw_stats_update(%struct.bnx2x* %30)
  br label %32

32:                                               ; preds = %29, %23
  %33 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %34 = call i64 @bnx2x_storm_stats_update(%struct.bnx2x* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %38 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = icmp eq i32 %39, 3
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %44 = call i32 (...) @bnx2x_panic()
  br label %45

45:                                               ; preds = %42, %36
  br label %81

46:                                               ; preds = %32
  br label %50

47:                                               ; preds = %13
  %48 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %49 = call i64 @bnx2x_storm_stats_update(%struct.bnx2x* %48)
  br label %50

50:                                               ; preds = %47, %46
  %51 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %52 = call i32 @bnx2x_net_stats_update(%struct.bnx2x* %51)
  %53 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %54 = call i32 @bnx2x_drv_stats_update(%struct.bnx2x* %53)
  %55 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %56 = call i64 @IS_VF(%struct.bnx2x* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %81

59:                                               ; preds = %50
  %60 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %61 = call i64 @netif_msg_timer(%struct.bnx2x* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %65 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %64, i32 0, i32 1
  store %struct.bnx2x_eth_stats* %65, %struct.bnx2x_eth_stats** %4, align 8
  %66 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %67 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %70 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %73 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @netdev_dbg(i32 %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %63, %59
  %77 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %78 = call i32 @bnx2x_hw_stats_post(%struct.bnx2x* %77)
  %79 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %80 = call i32 @bnx2x_storm_stats_post(%struct.bnx2x* %79)
  br label %81

81:                                               ; preds = %76, %58, %45, %22, %12
  ret void
}

declare dso_local i64* @bnx2x_sp(%struct.bnx2x*, i32) #1

declare dso_local i64 @bnx2x_edebug_stats_stopped(%struct.bnx2x*) #1

declare dso_local i64 @IS_PF(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_hw_stats_update(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_storm_stats_update(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @bnx2x_panic(...) #1

declare dso_local i32 @bnx2x_net_stats_update(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_drv_stats_update(%struct.bnx2x*) #1

declare dso_local i64 @IS_VF(%struct.bnx2x*) #1

declare dso_local i64 @netif_msg_timer(%struct.bnx2x*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @bnx2x_hw_stats_post(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_storm_stats_post(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
