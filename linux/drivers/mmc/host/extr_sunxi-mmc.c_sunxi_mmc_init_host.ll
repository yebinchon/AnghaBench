; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_init_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_init_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_mmc_host = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@REG_FTRGL = common dso_local global i32 0, align 4
@REG_TMOUT = common dso_local global i32 0, align 4
@REG_IMASK = common dso_local global i32 0, align 4
@REG_RINTR = common dso_local global i32 0, align 4
@REG_DBGC = common dso_local global i32 0, align 4
@REG_FUNS = common dso_local global i32 0, align 4
@SDXC_CEATA_ON = common dso_local global i32 0, align 4
@REG_DLBA = common dso_local global i32 0, align 4
@REG_GCTRL = common dso_local global i32 0, align 4
@SDXC_INTERRUPT_ENABLE_BIT = common dso_local global i32 0, align 4
@SDXC_ACCESS_DONE_DIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sunxi_mmc_host*)* @sunxi_mmc_init_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_mmc_init_host(%struct.sunxi_mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sunxi_mmc_host*, align 8
  %4 = alloca i32, align 4
  store %struct.sunxi_mmc_host* %0, %struct.sunxi_mmc_host** %3, align 8
  %5 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %6 = call i64 @sunxi_mmc_reset_host(%struct.sunxi_mmc_host* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EIO, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %54

11:                                               ; preds = %1
  %12 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %13 = load i32, i32* @REG_FTRGL, align 4
  %14 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %12, i32 %13, i32 537329672)
  %15 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %16 = load i32, i32* @REG_TMOUT, align 4
  %17 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %15, i32 %16, i32 -1)
  %18 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %19 = load i32, i32* @REG_IMASK, align 4
  %20 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %21 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %18, i32 %19, i32 %22)
  %24 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %25 = load i32, i32* @REG_RINTR, align 4
  %26 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %24, i32 %25, i32 -1)
  %27 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %28 = load i32, i32* @REG_DBGC, align 4
  %29 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %27, i32 %28, i32 3563)
  %30 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %31 = load i32, i32* @REG_FUNS, align 4
  %32 = load i32, i32* @SDXC_CEATA_ON, align 4
  %33 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %30, i32 %31, i32 %32)
  %34 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %35 = load i32, i32* @REG_DLBA, align 4
  %36 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %37 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %34, i32 %35, i32 %38)
  %40 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %41 = load i32, i32* @REG_GCTRL, align 4
  %42 = call i32 @mmc_readl(%struct.sunxi_mmc_host* %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @SDXC_INTERRUPT_ENABLE_BIT, align 4
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* @SDXC_ACCESS_DONE_DIRECT, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %3, align 8
  %51 = load i32, i32* @REG_GCTRL, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %50, i32 %51, i32 %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %11, %8
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @sunxi_mmc_reset_host(%struct.sunxi_mmc_host*) #1

declare dso_local i32 @mmc_writel(%struct.sunxi_mmc_host*, i32, i32) #1

declare dso_local i32 @mmc_readl(%struct.sunxi_mmc_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
