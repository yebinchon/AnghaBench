; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_dmfe.c_dmfe_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_dmfe.c_dmfe_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dmfe_board_info = type { i32, i32, i32, i64, i32, i32, %struct.TYPE_5__, i64, i64, i64, i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"dmfe_open\00", align 1
@dmfe_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@CR6_DEFAULT = common dso_local global i32 0, align 4
@dmfe_cr6_user_set = common dso_local global i32 0, align 4
@chkmode = common dso_local global i32 0, align 4
@PCI_DM9132_ID = common dso_local global i64 0, align 8
@DMFE_TXTH_256 = common dso_local global i32 0, align 4
@CR0_DEFAULT = common dso_local global i64 0, align 8
@CR6_SFT = common dso_local global i32 0, align 4
@dmfe_timer = common dso_local global i32 0, align 4
@DMFE_TIMER_WUT = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @dmfe_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmfe_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dmfe_board_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.dmfe_board_info* @netdev_priv(%struct.net_device* %7)
  store %struct.dmfe_board_info* %8, %struct.dmfe_board_info** %4, align 8
  %9 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %10 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %9, i32 0, i32 13
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = call i32 @DMFE_DBUG(i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @dmfe_interrupt, align 4
  %17 = load i32, i32* @IRQF_SHARED, align 4
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 @request_irq(i32 %15, i32 %16, i32 %17, i32 %20, %struct.net_device* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %101

27:                                               ; preds = %1
  %28 = load i32, i32* @CR6_DEFAULT, align 4
  %29 = load i32, i32* @dmfe_cr6_user_set, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %32 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %34 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %33, i32 0, i32 12
  store i64 0, i64* %34, align 8
  %35 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %36 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %35, i32 0, i32 11
  store i64 0, i64* %36, align 8
  %37 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %38 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %37, i32 0, i32 10
  store i64 0, i64* %38, align 8
  %39 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %40 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %39, i32 0, i32 9
  store i64 0, i64* %40, align 8
  %41 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %42 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %41, i32 0, i32 8
  store i64 0, i64* %42, align 8
  %43 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %44 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %43, i32 0, i32 1
  store i32 15, i32* %44, align 4
  %45 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %46 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %45, i32 0, i32 2
  store i32 480, i32* %46, align 8
  %47 = load i32, i32* @chkmode, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %27
  %50 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %51 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PCI_DM9132_ID, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %60, label %55

55:                                               ; preds = %49
  %56 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %57 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = icmp sge i32 %58, 48
  br i1 %59, label %60, label %71

60:                                               ; preds = %55, %49, %27
  %61 = load i32, i32* @DMFE_TXTH_256, align 4
  %62 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %63 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i64, i64* @CR0_DEFAULT, align 8
  %67 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %68 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %67, i32 0, i32 7
  store i64 %66, i64* %68, align 8
  %69 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %70 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %69, i32 0, i32 5
  store i32 4, i32* %70, align 4
  br label %81

71:                                               ; preds = %55
  %72 = load i32, i32* @CR6_SFT, align 4
  %73 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %74 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %78 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %77, i32 0, i32 7
  store i64 0, i64* %78, align 8
  %79 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %80 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %79, i32 0, i32 5
  store i32 1, i32* %80, align 4
  br label %81

81:                                               ; preds = %71, %60
  %82 = load %struct.net_device*, %struct.net_device** %3, align 8
  %83 = call i32 @dmfe_init_dm910x(%struct.net_device* %82)
  %84 = load %struct.net_device*, %struct.net_device** %3, align 8
  %85 = call i32 @netif_wake_queue(%struct.net_device* %84)
  %86 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %87 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %86, i32 0, i32 6
  %88 = load i32, i32* @dmfe_timer, align 4
  %89 = call i32 @timer_setup(%struct.TYPE_5__* %87, i32 %88, i32 0)
  %90 = load i64, i64* @DMFE_TIMER_WUT, align 8
  %91 = load i32, i32* @HZ, align 4
  %92 = mul nsw i32 %91, 2
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %90, %93
  %95 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %96 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %95, i32 0, i32 6
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i64 %94, i64* %97, align 8
  %98 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %4, align 8
  %99 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %98, i32 0, i32 6
  %100 = call i32 @add_timer(%struct.TYPE_5__* %99)
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %81, %25
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.dmfe_board_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DMFE_DBUG(i32, i8*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @dmfe_init_dm910x(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @timer_setup(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
