; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_handle_err_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_handle_err_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slic_device = type { %struct.slic_stats }
%struct.slic_stats = type { i32 }

@SLIC_ISR_RMISS = common dso_local global i32 0, align 4
@rx_buff_miss = common dso_local global i32 0, align 4
@SLIC_ISR_XDROP = common dso_local global i32 0, align 4
@tx_dropped = common dso_local global i32 0, align 4
@irq_errs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slic_device*, i32)* @slic_handle_err_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_handle_err_irq(%struct.slic_device* %0, i32 %1) #0 {
  %3 = alloca %struct.slic_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.slic_stats*, align 8
  store %struct.slic_device* %0, %struct.slic_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %7 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %6, i32 0, i32 0
  store %struct.slic_stats* %7, %struct.slic_stats** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @SLIC_ISR_RMISS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %14 = load i32, i32* @rx_buff_miss, align 4
  %15 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SLIC_ISR_XDROP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %23 = load i32, i32* @tx_dropped, align 4
  %24 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @SLIC_ISR_RMISS, align 4
  %28 = load i32, i32* @SLIC_ISR_XDROP, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = load %struct.slic_stats*, %struct.slic_stats** %5, align 8
  %34 = load i32, i32* @irq_errs, align 4
  %35 = call i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %25
  ret void
}

declare dso_local i32 @SLIC_INC_STATS_COUNTER(%struct.slic_stats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
