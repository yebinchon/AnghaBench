; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_alloc_rx_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_alloc_rx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ioc3_private = type { i32, i64, i32*, i32* }
%struct.ioc3_erxbuf = type { i64 }

@RX_BUFFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCI64_ATTR_BAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ioc3_alloc_rx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioc3_alloc_rx_bufs(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ioc3_private*, align 8
  %5 = alloca %struct.ioc3_erxbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ioc3_private* @netdev_priv(%struct.net_device* %8)
  store %struct.ioc3_private* %9, %struct.ioc3_private** %4, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %40, %1
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @RX_BUFFS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %43

14:                                               ; preds = %10
  %15 = load %struct.ioc3_private*, %struct.ioc3_private** %4, align 8
  %16 = load %struct.ioc3_private*, %struct.ioc3_private** %4, align 8
  %17 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i64 @ioc3_alloc_skb(%struct.ioc3_private* %15, i32* %21, %struct.ioc3_erxbuf** %5, i32* %6)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %49

27:                                               ; preds = %14
  %28 = load %struct.ioc3_erxbuf*, %struct.ioc3_erxbuf** %5, align 8
  %29 = getelementptr inbounds %struct.ioc3_erxbuf, %struct.ioc3_erxbuf* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @PCI64_ATTR_BAR, align 4
  %32 = call i32 @ioc3_map(i32 %30, i32 %31)
  %33 = call i32 @cpu_to_be64(i32 %32)
  %34 = load %struct.ioc3_private*, %struct.ioc3_private** %4, align 8
  %35 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  br label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %10

43:                                               ; preds = %10
  %44 = load %struct.ioc3_private*, %struct.ioc3_private** %4, align 8
  %45 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @RX_BUFFS, align 4
  %47 = load %struct.ioc3_private*, %struct.ioc3_private** %4, align 8
  %48 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %43, %24
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.ioc3_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ioc3_alloc_skb(%struct.ioc3_private*, i32*, %struct.ioc3_erxbuf**, i32*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @ioc3_map(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
