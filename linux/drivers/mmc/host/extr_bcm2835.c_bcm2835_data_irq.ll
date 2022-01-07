; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_data_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_data_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_host = type { i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@SDHCFG_DATA_IRPT_EN = common dso_local global i32 0, align 4
@SDHCFG_BLOCK_IRPT_EN = common dso_local global i32 0, align 4
@SDHCFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_host*, i32)* @bcm2835_data_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_data_irq(%struct.bcm2835_host* %0, i32 %1) #0 {
  %3 = alloca %struct.bcm2835_host*, align 8
  %4 = alloca i32, align 4
  store %struct.bcm2835_host* %0, %struct.bcm2835_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %6 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %92

10:                                               ; preds = %2
  %11 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @bcm2835_check_data_error(%struct.bcm2835_host* %11, i32 %12)
  %14 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %15 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %74

21:                                               ; preds = %10
  %22 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %23 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MMC_DATA_WRITE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %21
  %31 = load i32, i32* @SDHCFG_DATA_IRPT_EN, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %34 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* @SDHCFG_BLOCK_IRPT_EN, align 4
  %38 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %39 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %43 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %46 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SDHCFG, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  %51 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %52 = call i32 @bcm2835_transfer_pio(%struct.bcm2835_host* %51)
  br label %73

53:                                               ; preds = %21
  %54 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %55 = call i32 @bcm2835_transfer_pio(%struct.bcm2835_host* %54)
  %56 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %57 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, -1
  store i64 %59, i64* %57, align 8
  %60 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %61 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %53
  %65 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %66 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %65, i32 0, i32 3
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64, %53
  br label %74

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %30
  br label %92

74:                                               ; preds = %71, %20
  %75 = load i32, i32* @SDHCFG_DATA_IRPT_EN, align 4
  %76 = load i32, i32* @SDHCFG_BLOCK_IRPT_EN, align 4
  %77 = or i32 %75, %76
  %78 = xor i32 %77, -1
  %79 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %80 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %84 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %87 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SDHCFG, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel(i32 %85, i64 %90)
  br label %92

92:                                               ; preds = %74, %73, %9
  ret void
}

declare dso_local i32 @bcm2835_check_data_error(%struct.bcm2835_host*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @bcm2835_transfer_pio(%struct.bcm2835_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
