; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32, i32, i64, i32, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@BNX2_FLAG_USING_MSI = common dso_local global i32 0, align 4
@BNX2_FLAG_ONE_SHOT_MSI = common dso_local global i32 0, align 4
@BNX2_FW_RX_DROP_COUNT = common dso_local global i32 0, align 4
@BNX2_FLAG_BROKEN_STATS = common dso_local global i32 0, align 4
@BNX2_HC_COMMAND = common dso_local global i32 0, align 4
@BNX2_HC_COMMAND_STATS_NOW = common dso_local global i32 0, align 4
@BNX2_PHY_FLAG_SERDES = common dso_local global i32 0, align 4
@BNX2_CHIP_5706 = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@bp = common dso_local global %struct.bnx2* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @bnx2_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.bnx2*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %5 = ptrtoint %struct.bnx2* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @timer, align 4
  %8 = call %struct.bnx2* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.bnx2* %8, %struct.bnx2** %3, align 8
  %9 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %10 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @netif_running(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %93

15:                                               ; preds = %1
  %16 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %17 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %16, i32 0, i32 7
  %18 = call i64 @atomic_read(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %84

21:                                               ; preds = %15
  %22 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %23 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BNX2_FLAG_USING_MSI, align 4
  %26 = load i32, i32* @BNX2_FLAG_ONE_SHOT_MSI, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = load i32, i32* @BNX2_FLAG_USING_MSI, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %33 = call i32 @bnx2_chk_missed_msi(%struct.bnx2* %32)
  br label %34

34:                                               ; preds = %31, %21
  %35 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %36 = call i32 @bnx2_send_heart_beat(%struct.bnx2* %35)
  %37 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %38 = load i32, i32* @BNX2_FW_RX_DROP_COUNT, align 4
  %39 = call i32 @bnx2_reg_rd_ind(%struct.bnx2* %37, i32 %38)
  %40 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %41 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %40, i32 0, i32 6
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  %44 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %45 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @BNX2_FLAG_BROKEN_STATS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %34
  %51 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %52 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %57 = load i32, i32* @BNX2_HC_COMMAND, align 4
  %58 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %59 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @BNX2_HC_COMMAND_STATS_NOW, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @BNX2_WR(%struct.bnx2* %56, i32 %57, i32 %62)
  br label %64

64:                                               ; preds = %55, %50, %34
  %65 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %66 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @BNX2_PHY_FLAG_SERDES, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %64
  %72 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %73 = call i64 @BNX2_CHIP(%struct.bnx2* %72)
  %74 = load i64, i64* @BNX2_CHIP_5706, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %78 = call i32 @bnx2_5706_serdes_timer(%struct.bnx2* %77)
  br label %82

79:                                               ; preds = %71
  %80 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %81 = call i32 @bnx2_5708_serdes_timer(%struct.bnx2* %80)
  br label %82

82:                                               ; preds = %79, %76
  br label %83

83:                                               ; preds = %82, %64
  br label %84

84:                                               ; preds = %83, %20
  %85 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %86 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %85, i32 0, i32 4
  %87 = load i64, i64* @jiffies, align 8
  %88 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %89 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %87, %90
  %92 = call i32 @mod_timer(i32* %86, i64 %91)
  br label %93

93:                                               ; preds = %84, %14
  ret void
}

declare dso_local %struct.bnx2* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @bnx2_chk_missed_msi(%struct.bnx2*) #1

declare dso_local i32 @bnx2_send_heart_beat(%struct.bnx2*) #1

declare dso_local i32 @bnx2_reg_rd_ind(%struct.bnx2*, i32) #1

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

declare dso_local i64 @BNX2_CHIP(%struct.bnx2*) #1

declare dso_local i32 @bnx2_5706_serdes_timer(%struct.bnx2*) #1

declare dso_local i32 @bnx2_5708_serdes_timer(%struct.bnx2*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
