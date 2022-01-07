; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/sta2x11/extr_sta2x11_vip.c_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/sta2x11/extr_sta2x11_vip.c_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.sta2x11_vip = type { i32, i32 }

@DVP_ITM = common dso_local global i32 0, align 4
@DVP_IT_VSB = common dso_local global i32 0, align 4
@DVP_IT_VST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.vb2_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sta2x11_vip*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %7 = call %struct.sta2x11_vip* @vb2_get_drv_priv(%struct.vb2_queue* %6)
  store %struct.sta2x11_vip* %7, %struct.sta2x11_vip** %5, align 8
  %8 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %5, align 8
  %9 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %8, i32 0, i32 1
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %5, align 8
  %12 = load i32, i32* @DVP_ITM, align 4
  %13 = load i32, i32* @DVP_IT_VSB, align 4
  %14 = load i32, i32* @DVP_IT_VST, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @reg_write(%struct.sta2x11_vip* %11, i32 %12, i32 %15)
  %17 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %5, align 8
  %18 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %17, i32 0, i32 1
  %19 = call i32 @spin_unlock_irq(i32* %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %5, align 8
  %24 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %5, align 8
  %25 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @start_dma(%struct.sta2x11_vip* %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %2
  ret i32 0
}

declare dso_local %struct.sta2x11_vip* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @reg_write(%struct.sta2x11_vip*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @start_dma(%struct.sta2x11_vip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
