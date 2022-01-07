; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc.c_tmio_mmc_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc.c_tmio_mmc_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32, i32)* }

@CTL_SD_CARD_CLK_CTL = common dso_local global i32 0, align 4
@CLK_CTL_SCLKEN = common dso_local global i32 0, align 4
@CLK_CTL_DIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*, i32)* @tmio_mmc_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmio_mmc_set_clock(%struct.tmio_mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.tmio_mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %12 = call i32 @tmio_mmc_clk_stop(%struct.tmio_mmc_host* %11)
  br label %61

13:                                               ; preds = %2
  %14 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %15 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = udiv i32 %18, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ule i32 %21, 1
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  br label %31

27:                                               ; preds = %13
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @roundup_pow_of_two(i32 %28)
  %30 = ashr i32 %29, 2
  br label %31

31:                                               ; preds = %27, %26
  %32 = phi i32 [ 0, %26 ], [ %30, %27 ]
  store i32 %32, i32* %6, align 4
  %33 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %34 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32 (i32, i32)*, i32 (i32, i32)** %36, align 8
  %38 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %39 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 %37(i32 %40, i32 %41)
  %43 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %44 = load i32, i32* @CTL_SD_CARD_CLK_CTL, align 4
  %45 = load i32, i32* @CLK_CTL_SCLKEN, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %48 = load i32, i32* @CTL_SD_CARD_CLK_CTL, align 4
  %49 = call i32 @sd_ctrl_read16(%struct.tmio_mmc_host* %47, i32 %48)
  %50 = and i32 %46, %49
  %51 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %43, i32 %44, i32 %50)
  %52 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %53 = load i32, i32* @CTL_SD_CARD_CLK_CTL, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @CLK_CTL_DIV_MASK, align 4
  %56 = and i32 %54, %55
  %57 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %52, i32 %53, i32 %56)
  %58 = call i32 @usleep_range(i32 10000, i32 11000)
  %59 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %60 = call i32 @tmio_mmc_clk_start(%struct.tmio_mmc_host* %59)
  br label %61

61:                                               ; preds = %31, %10
  ret void
}

declare dso_local i32 @tmio_mmc_clk_stop(%struct.tmio_mmc_host*) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @sd_ctrl_write16(%struct.tmio_mmc_host*, i32, i32) #1

declare dso_local i32 @sd_ctrl_read16(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @tmio_mmc_clk_start(%struct.tmio_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
