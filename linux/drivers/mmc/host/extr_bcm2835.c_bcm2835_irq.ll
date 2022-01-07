; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_host = type { i32, i32, i32, i32, i32, i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@SDHSTS = common dso_local global i64 0, align 8
@SDHSTS_BUSY_IRPT = common dso_local global i32 0, align 4
@SDHSTS_BLOCK_IRPT = common dso_local global i32 0, align 4
@SDHSTS_SDIO_IRPT = common dso_local global i32 0, align 4
@SDHSTS_DATA_FLAG = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@SDHCFG_DATA_IRPT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bcm2835_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcm2835_host*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @IRQ_NONE, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.bcm2835_host*
  store %struct.bcm2835_host* %10, %struct.bcm2835_host** %6, align 8
  %11 = load %struct.bcm2835_host*, %struct.bcm2835_host** %6, align 8
  %12 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %11, i32 0, i32 4
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.bcm2835_host*, %struct.bcm2835_host** %6, align 8
  %15 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SDHSTS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @SDHSTS_BUSY_IRPT, align 4
  %21 = load i32, i32* @SDHSTS_BLOCK_IRPT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SDHSTS_SDIO_IRPT, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SDHSTS_DATA_FLAG, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.bcm2835_host*, %struct.bcm2835_host** %6, align 8
  %28 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SDHSTS, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @SDHSTS_BLOCK_IRPT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %2
  %38 = load %struct.bcm2835_host*, %struct.bcm2835_host** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @bcm2835_check_data_error(%struct.bcm2835_host* %38, i32 %39)
  %41 = load %struct.bcm2835_host*, %struct.bcm2835_host** %6, align 8
  %42 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %37, %2
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @SDHSTS_BUSY_IRPT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.bcm2835_host*, %struct.bcm2835_host** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @bcm2835_check_cmd_error(%struct.bcm2835_host* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = load %struct.bcm2835_host*, %struct.bcm2835_host** %6, align 8
  %56 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %57, i32* %5, align 4
  br label %60

58:                                               ; preds = %49
  %59 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %58, %54
  br label %61

61:                                               ; preds = %60, %44
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @SDHSTS_DATA_FLAG, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = load %struct.bcm2835_host*, %struct.bcm2835_host** %6, align 8
  %68 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SDHCFG_DATA_IRPT_EN, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = load %struct.bcm2835_host*, %struct.bcm2835_host** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @bcm2835_data_irq(%struct.bcm2835_host* %74, i32 %75)
  %77 = load %struct.bcm2835_host*, %struct.bcm2835_host** %6, align 8
  %78 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %77, i32 0, i32 3
  store i32 1, i32* %78, align 4
  %79 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %73, %66, %61
  %81 = load %struct.bcm2835_host*, %struct.bcm2835_host** %6, align 8
  %82 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %81, i32 0, i32 4
  %83 = call i32 @spin_unlock(i32* %82)
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @bcm2835_check_data_error(%struct.bcm2835_host*, i32) #1

declare dso_local i32 @bcm2835_check_cmd_error(%struct.bcm2835_host*, i32) #1

declare dso_local i32 @bcm2835_data_irq(%struct.bcm2835_host*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
