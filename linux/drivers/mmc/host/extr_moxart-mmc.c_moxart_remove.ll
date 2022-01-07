; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_moxart-mmc.c_moxart_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_moxart-mmc.c_moxart_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mmc_host = type { i32 }
%struct.moxart_host = type { i64, i32, i32 }

@REG_INTERRUPT_MASK = common dso_local global i64 0, align 8
@REG_POWER_CONTROL = common dso_local global i64 0, align 8
@REG_CLOCK_CONTROL = common dso_local global i64 0, align 8
@CLK_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @moxart_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moxart_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.moxart_host*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = call %struct.mmc_host* @dev_get_drvdata(i32* %6)
  store %struct.mmc_host* %7, %struct.mmc_host** %3, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.moxart_host* @mmc_priv(%struct.mmc_host* %8)
  store %struct.moxart_host* %9, %struct.moxart_host** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call i32 @dev_set_drvdata(i32* %11, i32* null)
  %13 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %14 = icmp ne %struct.mmc_host* %13, null
  br i1 %14, label %15, label %68

15:                                               ; preds = %1
  %16 = load %struct.moxart_host*, %struct.moxart_host** %4, align 8
  %17 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @IS_ERR(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load %struct.moxart_host*, %struct.moxart_host** %4, align 8
  %23 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dma_release_channel(i32 %24)
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct.moxart_host*, %struct.moxart_host** %4, align 8
  %28 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @IS_ERR(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = load %struct.moxart_host*, %struct.moxart_host** %4, align 8
  %34 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dma_release_channel(i32 %35)
  br label %37

37:                                               ; preds = %32, %26
  %38 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %39 = call i32 @mmc_remove_host(%struct.mmc_host* %38)
  %40 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %41 = call i32 @mmc_free_host(%struct.mmc_host* %40)
  %42 = load %struct.moxart_host*, %struct.moxart_host** %4, align 8
  %43 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @REG_INTERRUPT_MASK, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 0, i64 %46)
  %48 = load %struct.moxart_host*, %struct.moxart_host** %4, align 8
  %49 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @REG_POWER_CONTROL, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 0, i64 %52)
  %54 = load %struct.moxart_host*, %struct.moxart_host** %4, align 8
  %55 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @REG_CLOCK_CONTROL, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @readl(i64 %58)
  %60 = load i32, i32* @CLK_OFF, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.moxart_host*, %struct.moxart_host** %4, align 8
  %63 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @REG_CLOCK_CONTROL, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  br label %68

68:                                               ; preds = %37, %1
  ret i32 0
}

declare dso_local %struct.mmc_host* @dev_get_drvdata(i32*) #1

declare dso_local %struct.moxart_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @dma_release_channel(i32) #1

declare dso_local i32 @mmc_remove_host(%struct.mmc_host*) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
