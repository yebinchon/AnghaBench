; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_set_bus_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_set_bus_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_mmc_host = type { i32 }

@REG_WIDTH = common dso_local global i32 0, align 4
@SDXC_WIDTH1 = common dso_local global i32 0, align 4
@SDXC_WIDTH4 = common dso_local global i32 0, align 4
@SDXC_WIDTH8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sunxi_mmc_host*, i8)* @sunxi_mmc_set_bus_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_mmc_set_bus_width(%struct.sunxi_mmc_host* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.sunxi_mmc_host*, align 8
  %4 = alloca i8, align 1
  store %struct.sunxi_mmc_host* %0, %struct.sunxi_mmc_host** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  switch i32 %6, label %22 [
    i32 130, label %7
    i32 129, label %12
    i32 128, label %17
  ]

7:                                                ; preds = %2
  %8 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %9 = load i32, i32* @REG_WIDTH, align 4
  %10 = load i32, i32* @SDXC_WIDTH1, align 4
  %11 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %8, i32 %9, i32 %10)
  br label %22

12:                                               ; preds = %2
  %13 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %14 = load i32, i32* @REG_WIDTH, align 4
  %15 = load i32, i32* @SDXC_WIDTH4, align 4
  %16 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %13, i32 %14, i32 %15)
  br label %22

17:                                               ; preds = %2
  %18 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %19 = load i32, i32* @REG_WIDTH, align 4
  %20 = load i32, i32* @SDXC_WIDTH8, align 4
  %21 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %2, %17, %12, %7
  ret void
}

declare dso_local i32 @mmc_writel(%struct.sunxi_mmc_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
