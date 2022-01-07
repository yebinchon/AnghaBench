; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_init_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_init_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftgmac100 = type { i64, i32, i32 }

@FTGMAC100_INT_ALL = common dso_local global i32 0, align 4
@FTGMAC100_OFFSET_IER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftgmac100*, i32)* @ftgmac100_init_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftgmac100_init_all(%struct.ftgmac100* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ftgmac100*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ftgmac100* %0, %struct.ftgmac100** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %8 = call i32 @ftgmac100_init_rings(%struct.ftgmac100* %7)
  %9 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %10 = call i32 @ftgmac100_alloc_rx_buffers(%struct.ftgmac100* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %40

18:                                               ; preds = %13, %2
  %19 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %20 = call i32 @ftgmac100_init_hw(%struct.ftgmac100* %19)
  %21 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %22 = call i32 @ftgmac100_config_pause(%struct.ftgmac100* %21)
  %23 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %24 = call i32 @ftgmac100_start_hw(%struct.ftgmac100* %23)
  %25 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %26 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %25, i32 0, i32 2
  %27 = call i32 @napi_enable(i32* %26)
  %28 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %29 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @netif_start_queue(i32 %30)
  %32 = load i32, i32* @FTGMAC100_INT_ALL, align 4
  %33 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %34 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @FTGMAC100_OFFSET_IER, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @iowrite32(i32 %32, i64 %37)
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %18, %16
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @ftgmac100_init_rings(%struct.ftgmac100*) #1

declare dso_local i32 @ftgmac100_alloc_rx_buffers(%struct.ftgmac100*) #1

declare dso_local i32 @ftgmac100_init_hw(%struct.ftgmac100*) #1

declare dso_local i32 @ftgmac100_config_pause(%struct.ftgmac100*) #1

declare dso_local i32 @ftgmac100_start_hw(%struct.ftgmac100*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @netif_start_queue(i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
