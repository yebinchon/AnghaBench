; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_uli526x.c_uli526x_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_uli526x.c_uli526x_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.uli526x_board_info = type { i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__*, i32, i64, i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"uli526x_open\00", align 1
@CR6_DEFAULT = common dso_local global i32 0, align 4
@uli526x_cr6_user_set = common dso_local global i32 0, align 4
@ULI526X_TXTH_256 = common dso_local global i32 0, align 4
@CR0_DEFAULT = common dso_local global i32 0, align 4
@uli526x_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@uli526x_timer = common dso_local global i32 0, align 4
@ULI526X_TIMER_WUT = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @uli526x_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uli526x_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uli526x_board_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.uli526x_board_info* @netdev_priv(%struct.net_device* %6)
  store %struct.uli526x_board_info* %7, %struct.uli526x_board_info** %5, align 8
  %8 = call i32 @ULI526X_DBUG(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0)
  %9 = load i32, i32* @CR6_DEFAULT, align 4
  %10 = load i32, i32* @uli526x_cr6_user_set, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %5, align 8
  %13 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %5, align 8
  %15 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %14, i32 0, i32 9
  store i64 0, i64* %15, align 8
  %16 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %5, align 8
  %17 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %16, i32 0, i32 8
  store i64 0, i64* %17, align 8
  %18 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %5, align 8
  %19 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i32 @netif_carrier_off(%struct.net_device* %20)
  %22 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %5, align 8
  %23 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %22, i32 0, i32 7
  store i64 0, i64* %23, align 8
  %24 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %5, align 8
  %25 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %24, i32 0, i32 2
  store i32 15, i32* %25, align 8
  %26 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %5, align 8
  %27 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %26, i32 0, i32 3
  store i32 480, i32* %27, align 4
  %28 = load i32, i32* @ULI526X_TXTH_256, align 4
  %29 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %5, align 8
  %30 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load i32, i32* @CR0_DEFAULT, align 4
  %34 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %5, align 8
  %35 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = call i32 @uli526x_init(%struct.net_device* %36)
  %38 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %5, align 8
  %39 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %38, i32 0, i32 5
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @uli526x_interrupt, align 4
  %44 = load i32, i32* @IRQF_SHARED, align 4
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = call i32 @request_irq(i32 %42, i32 %43, i32 %44, i32 %47, %struct.net_device* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %1
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %72

54:                                               ; preds = %1
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = call i32 @netif_wake_queue(%struct.net_device* %55)
  %57 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %5, align 8
  %58 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %57, i32 0, i32 4
  %59 = load i32, i32* @uli526x_timer, align 4
  %60 = call i32 @timer_setup(%struct.TYPE_5__* %58, i32 %59, i32 0)
  %61 = load i64, i64* @ULI526X_TIMER_WUT, align 8
  %62 = load i32, i32* @HZ, align 4
  %63 = mul nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %61, %64
  %66 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %5, align 8
  %67 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i64 %65, i64* %68, align 8
  %69 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %5, align 8
  %70 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %69, i32 0, i32 4
  %71 = call i32 @add_timer(%struct.TYPE_5__* %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %54, %52
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.uli526x_board_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ULI526X_DBUG(i32, i8*, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @uli526x_init(%struct.net_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @timer_setup(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
