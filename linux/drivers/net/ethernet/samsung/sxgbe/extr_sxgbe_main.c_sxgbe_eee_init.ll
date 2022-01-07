; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_sxgbe_eee_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_main.c_sxgbe_eee_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sxgbe_priv_data = type { i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_9__, %struct.TYPE_8__, %struct.net_device* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32, i32, i32)* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.net_device = type { i32 }

@sxgbe_eee_ctrl_timer = common dso_local global i32 0, align 4
@eee_timer = common dso_local global i32 0, align 4
@SXGBE_DEFAULT_LPI_TIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Energy-Efficient Ethernet initialized\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sxgbe_eee_init(%struct.sxgbe_priv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sxgbe_priv_data*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.sxgbe_priv_data* %0, %struct.sxgbe_priv_data** %3, align 8
  %6 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %7 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %6, i32 0, i32 6
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %10 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %52

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @phy_init_eee(i32 %17, i32 1)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %54

21:                                               ; preds = %14
  %22 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %23 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %25 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %24, i32 0, i32 4
  %26 = load i32, i32* @sxgbe_eee_ctrl_timer, align 4
  %27 = call i32 @timer_setup(%struct.TYPE_9__* %25, i32 %26, i32 0)
  %28 = load i32, i32* @eee_timer, align 4
  %29 = call i32 @SXGBE_LPI_TIMER(i32 %28)
  %30 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %31 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %34 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %33, i32 0, i32 4
  %35 = call i32 @add_timer(%struct.TYPE_9__* %34)
  %36 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %37 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %36, i32 0, i32 3
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %41, align 8
  %43 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %44 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SXGBE_DEFAULT_LPI_TIMER, align 4
  %47 = load %struct.sxgbe_priv_data*, %struct.sxgbe_priv_data** %3, align 8
  %48 = getelementptr inbounds %struct.sxgbe_priv_data, %struct.sxgbe_priv_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 %42(i32 %45, i32 %46, i32 %49)
  %51 = call i32 @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %52

52:                                               ; preds = %21, %1
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %20
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @phy_init_eee(i32, i32) #1

declare dso_local i32 @timer_setup(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @SXGBE_LPI_TIMER(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_9__*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
