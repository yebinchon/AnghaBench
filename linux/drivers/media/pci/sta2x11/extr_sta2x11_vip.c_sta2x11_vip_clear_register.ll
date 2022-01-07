; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/sta2x11/extr_sta2x11_vip.c_sta2x11_vip_clear_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/sta2x11/extr_sta2x11_vip.c_sta2x11_vip_clear_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta2x11_vip = type { i32 }

@DVP_ITM = common dso_local global i32 0, align 4
@DVP_CTL = common dso_local global i32 0, align 4
@DVP_CTL_RST = common dso_local global i32 0, align 4
@DVP_ITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sta2x11_vip*)* @sta2x11_vip_clear_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sta2x11_vip_clear_register(%struct.sta2x11_vip* %0) #0 {
  %2 = alloca %struct.sta2x11_vip*, align 8
  store %struct.sta2x11_vip* %0, %struct.sta2x11_vip** %2, align 8
  %3 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %2, align 8
  %4 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %3, i32 0, i32 0
  %5 = call i32 @spin_lock_irq(i32* %4)
  %6 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %2, align 8
  %7 = load i32, i32* @DVP_ITM, align 4
  %8 = call i32 @reg_write(%struct.sta2x11_vip* %6, i32 %7, i32 0)
  %9 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %2, align 8
  %10 = load i32, i32* @DVP_CTL, align 4
  %11 = load i32, i32* @DVP_CTL_RST, align 4
  %12 = call i32 @reg_write(%struct.sta2x11_vip* %9, i32 %10, i32 %11)
  %13 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %2, align 8
  %14 = load i32, i32* @DVP_CTL, align 4
  %15 = call i32 @reg_write(%struct.sta2x11_vip* %13, i32 %14, i32 0)
  %16 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %2, align 8
  %17 = load i32, i32* @DVP_ITS, align 4
  %18 = call i32 @reg_read(%struct.sta2x11_vip* %16, i32 %17)
  %19 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %2, align 8
  %20 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock_irq(i32* %20)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @reg_write(%struct.sta2x11_vip*, i32, i32) #1

declare dso_local i32 @reg_read(%struct.sta2x11_vip*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
