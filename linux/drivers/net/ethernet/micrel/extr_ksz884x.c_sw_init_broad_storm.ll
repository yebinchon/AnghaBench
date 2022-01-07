; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_sw_init_broad_storm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_sw_init_broad_storm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TOTAL_PORT_NUM = common dso_local global i32 0, align 4
@KS8842_SWITCH_CTRL_2_OFFSET = common dso_local global i32 0, align 4
@MULTICAST_STORM_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*)* @sw_init_broad_storm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sw_init_broad_storm(%struct.ksz_hw* %0) #0 {
  %2 = alloca %struct.ksz_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %2, align 8
  %4 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %9 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %10 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @sw_cfg_broad_storm(%struct.ksz_hw* %8, i32 %13)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %23, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @TOTAL_PORT_NUM, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @sw_dis_broad_storm(%struct.ksz_hw* %20, i32 %21)
  br label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %15

26:                                               ; preds = %15
  %27 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %28 = load i32, i32* @KS8842_SWITCH_CTRL_2_OFFSET, align 4
  %29 = load i32, i32* @MULTICAST_STORM_DISABLE, align 4
  %30 = call i32 @sw_cfg(%struct.ksz_hw* %27, i32 %28, i32 %29, i32 1)
  ret void
}

declare dso_local i32 @sw_cfg_broad_storm(%struct.ksz_hw*, i32) #1

declare dso_local i32 @sw_dis_broad_storm(%struct.ksz_hw*, i32) #1

declare dso_local i32 @sw_cfg(%struct.ksz_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
