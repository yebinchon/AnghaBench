; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_reset_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_reset_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_host = type { i32, i32, i64, i64 }

@SDVDD_POWER_OFF = common dso_local global i32 0, align 4
@SDVDD = common dso_local global i64 0, align 8
@SDCMD = common dso_local global i64 0, align 8
@SDARG = common dso_local global i64 0, align 8
@SDTOUT = common dso_local global i64 0, align 8
@SDCDIV = common dso_local global i64 0, align 8
@SDHSTS = common dso_local global i64 0, align 8
@SDHCFG = common dso_local global i64 0, align 8
@SDHBCT = common dso_local global i64 0, align 8
@SDHBLC = common dso_local global i64 0, align 8
@SDEDM = common dso_local global i64 0, align 8
@SDEDM_THRESHOLD_MASK = common dso_local global i32 0, align 4
@SDEDM_READ_THRESHOLD_SHIFT = common dso_local global i32 0, align 4
@SDEDM_WRITE_THRESHOLD_SHIFT = common dso_local global i32 0, align 4
@FIFO_READ_THRESHOLD = common dso_local global i32 0, align 4
@FIFO_WRITE_THRESHOLD = common dso_local global i32 0, align 4
@SDVDD_POWER_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_host*)* @bcm2835_reset_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_reset_internal(%struct.bcm2835_host* %0) #0 {
  %2 = alloca %struct.bcm2835_host*, align 8
  %3 = alloca i32, align 4
  store %struct.bcm2835_host* %0, %struct.bcm2835_host** %2, align 8
  %4 = load i32, i32* @SDVDD_POWER_OFF, align 4
  %5 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %6 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SDVDD, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @writel(i32 %4, i64 %9)
  %11 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %12 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SDCMD, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i32 0, i64 %15)
  %17 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %18 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SDARG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 0, i64 %21)
  %23 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %24 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SDTOUT, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 15728640, i64 %27)
  %29 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %30 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SDCDIV, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 0, i64 %33)
  %35 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %36 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SDHSTS, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 2040, i64 %39)
  %41 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %42 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SDHCFG, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 0, i64 %45)
  %47 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %48 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SDHBCT, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 0, i64 %51)
  %53 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %54 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SDHBLC, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 0, i64 %57)
  %59 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %60 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SDEDM, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @readl(i64 %63)
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* @SDEDM_THRESHOLD_MASK, align 4
  %66 = load i32, i32* @SDEDM_READ_THRESHOLD_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = load i32, i32* @SDEDM_THRESHOLD_MASK, align 4
  %69 = load i32, i32* @SDEDM_WRITE_THRESHOLD_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = or i32 %67, %70
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %3, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* @FIFO_READ_THRESHOLD, align 4
  %76 = load i32, i32* @SDEDM_READ_THRESHOLD_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = load i32, i32* @FIFO_WRITE_THRESHOLD, align 4
  %79 = load i32, i32* @SDEDM_WRITE_THRESHOLD_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = or i32 %77, %80
  %82 = load i32, i32* %3, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %3, align 4
  %85 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %86 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @SDEDM, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @writel(i32 %84, i64 %89)
  %91 = call i32 @msleep(i32 20)
  %92 = load i32, i32* @SDVDD_POWER_ON, align 4
  %93 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %94 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @SDVDD, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writel(i32 %92, i64 %97)
  %99 = call i32 @msleep(i32 20)
  %100 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %101 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %100, i32 0, i32 3
  store i64 0, i64* %101, align 8
  %102 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %103 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %106 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @SDHCFG, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @writel(i32 %104, i64 %109)
  %111 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %112 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %115 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @SDCDIV, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @writel(i32 %113, i64 %118)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
