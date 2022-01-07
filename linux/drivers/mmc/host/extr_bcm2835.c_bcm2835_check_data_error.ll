; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_check_data_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_check_data_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SDHSTS_CRC16_ERROR = common dso_local global i32 0, align 4
@SDHSTS_FIFO_ERROR = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@SDHSTS_REW_TIME_OUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_host*, i32)* @bcm2835_check_data_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_check_data_error(%struct.bcm2835_host* %0, i32 %1) #0 {
  %3 = alloca %struct.bcm2835_host*, align 8
  %4 = alloca i32, align 4
  store %struct.bcm2835_host* %0, %struct.bcm2835_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %6 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %36

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @SDHSTS_CRC16_ERROR, align 4
  %13 = load i32, i32* @SDHSTS_FIFO_ERROR, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = load i32, i32* @EILSEQ, align 4
  %19 = sub nsw i32 0, %18
  %20 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %21 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  br label %24

24:                                               ; preds = %17, %10
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @SDHSTS_REW_TIME_OUT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load i32, i32* @ETIMEDOUT, align 4
  %31 = sub nsw i32 0, %30
  %32 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %33 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  br label %36

36:                                               ; preds = %9, %29, %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
