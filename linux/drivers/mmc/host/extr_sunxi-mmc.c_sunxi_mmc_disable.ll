; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_mmc_host = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sunxi_mmc_host*)* @sunxi_mmc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_mmc_disable(%struct.sunxi_mmc_host* %0) #0 {
  %2 = alloca %struct.sunxi_mmc_host*, align 8
  store %struct.sunxi_mmc_host* %0, %struct.sunxi_mmc_host** %2, align 8
  %3 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %2, align 8
  %4 = call i32 @sunxi_mmc_reset_host(%struct.sunxi_mmc_host* %3)
  %5 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %2, align 8
  %6 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @clk_disable_unprepare(i32 %7)
  %9 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %2, align 8
  %10 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @clk_disable_unprepare(i32 %11)
  %13 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %2, align 8
  %14 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @clk_disable_unprepare(i32 %15)
  %17 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %2, align 8
  %18 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clk_disable_unprepare(i32 %19)
  %21 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %2, align 8
  %22 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @IS_ERR(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %2, align 8
  %28 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @reset_control_assert(i32 %29)
  br label %31

31:                                               ; preds = %26, %1
  ret void
}

declare dso_local i32 @sunxi_mmc_reset_host(%struct.sunxi_mmc_host*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
