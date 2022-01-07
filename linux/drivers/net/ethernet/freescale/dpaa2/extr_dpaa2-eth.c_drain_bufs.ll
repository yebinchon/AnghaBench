; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_drain_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_drain_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_priv = type { i32, i32 }

@DPAA2_ETH_BUFS_PER_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"dpaa2_io_service_acquire() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpaa2_eth_priv*, i32)* @drain_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drain_bufs(%struct.dpaa2_eth_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.dpaa2_eth_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @DPAA2_ETH_BUFS_PER_CMD, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  br label %13

13:                                               ; preds = %30, %2
  %14 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %15 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @dpaa2_io_service_acquire(i32* null, i32 %16, i32* %12, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %23 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @netdev_err(i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %34

26:                                               ; preds = %13
  %27 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @free_bufs(%struct.dpaa2_eth_priv* %27, i32* %12, i32 %28)
  br label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %13, label %33

33:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %33, %21
  %35 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %35)
  %36 = load i32, i32* %8, align 4
  switch i32 %36, label %38 [
    i32 0, label %37
    i32 1, label %37
  ]

37:                                               ; preds = %34, %34
  ret void

38:                                               ; preds = %34
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dpaa2_io_service_acquire(i32*, i32, i32*, i32) #2

declare dso_local i32 @netdev_err(i32, i8*) #2

declare dso_local i32 @free_bufs(%struct.dpaa2_eth_priv*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
