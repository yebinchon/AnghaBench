; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_rx_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_rx_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }
%struct.rx_ring_info = type { i32 }

@RX_DMA_CTL_STAT_CHAN_FATAL = common dso_local global i32 0, align 4
@RX_DMA_CTL_STAT_PORT_FATAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"RX channel %u error, stat[%llx]\0A\00", align 1
@RX_DMA_CTL_WRITE_CLEAR_ERRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, %struct.rx_ring_info*)* @niu_rx_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_rx_error(%struct.niu* %0, %struct.rx_ring_info* %1) #0 {
  %3 = alloca %struct.niu*, align 8
  %4 = alloca %struct.rx_ring_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  store %struct.rx_ring_info* %1, %struct.rx_ring_info** %4, align 8
  %7 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %8 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @RX_DMA_CTL_STAT(i32 %9)
  %11 = call i32 @nr64(i32 %10)
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @RX_DMA_CTL_STAT_CHAN_FATAL, align 4
  %14 = load i32, i32* @RX_DMA_CTL_STAT_PORT_FATAL, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load %struct.niu*, %struct.niu** %3, align 8
  %26 = getelementptr inbounds %struct.niu, %struct.niu* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %29 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = call i32 @netdev_err(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %32)
  %34 = load %struct.niu*, %struct.niu** %3, align 8
  %35 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @niu_log_rxchan_errors(%struct.niu* %34, %struct.rx_ring_info* %35, i32 %36)
  br label %38

38:                                               ; preds = %24, %21
  %39 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %40 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @RX_DMA_CTL_STAT(i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @RX_DMA_CTL_WRITE_CLEAR_ERRS, align 4
  %45 = and i32 %43, %44
  %46 = call i32 @nw64(i32 %42, i32 %45)
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @nr64(i32) #1

declare dso_local i32 @RX_DMA_CTL_STAT(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, i64) #1

declare dso_local i32 @niu_log_rxchan_errors(%struct.niu*, %struct.rx_ring_info*, i32) #1

declare dso_local i32 @nw64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
