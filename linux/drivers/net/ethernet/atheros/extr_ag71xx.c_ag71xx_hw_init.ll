; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32 }

@AG71XX_REG_MAC_CFG1 = common dso_local global i32 0, align 4
@MAC_CFG1_SR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag71xx*)* @ag71xx_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ag71xx_hw_init(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %3 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %4 = call i32 @ag71xx_hw_stop(%struct.ag71xx* %3)
  %5 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %6 = load i32, i32* @AG71XX_REG_MAC_CFG1, align 4
  %7 = load i32, i32* @MAC_CFG1_SR, align 4
  %8 = call i32 @ag71xx_sb(%struct.ag71xx* %5, i32 %6, i32 %7)
  %9 = call i32 @usleep_range(i32 20, i32 30)
  %10 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %11 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @reset_control_assert(i32 %12)
  %14 = call i32 @msleep(i32 100)
  %15 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %16 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @reset_control_deassert(i32 %17)
  %19 = call i32 @msleep(i32 200)
  %20 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %21 = call i32 @ag71xx_hw_setup(%struct.ag71xx* %20)
  %22 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %23 = call i32 @ag71xx_dma_reset(%struct.ag71xx* %22)
  ret void
}

declare dso_local i32 @ag71xx_hw_stop(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_sb(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @ag71xx_hw_setup(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_dma_reset(%struct.ag71xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
