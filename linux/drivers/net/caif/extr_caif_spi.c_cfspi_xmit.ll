; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_spi.c_cfspi_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_spi.c_cfspi_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.cfspi = type { i32, i64, i32, %struct.TYPE_3__, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 (i32, i32)* }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@SPI_XFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @cfspi_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfspi_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.cfspi*, align 8
  %7 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.cfspi* null, %struct.cfspi** %6, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = icmp ne %struct.net_device* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %69

13:                                               ; preds = %2
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.cfspi* @netdev_priv(%struct.net_device* %14)
  store %struct.cfspi* %15, %struct.cfspi** %6, align 8
  %16 = load %struct.cfspi*, %struct.cfspi** %6, align 8
  %17 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %16, i32 0, i32 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32 @skb_queue_tail(%struct.TYPE_4__* %17, %struct.sk_buff* %18)
  %20 = load %struct.cfspi*, %struct.cfspi** %6, align 8
  %21 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %20, i32 0, i32 5
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load i32, i32* @SPI_XFER, align 4
  %25 = load %struct.cfspi*, %struct.cfspi** %6, align 8
  %26 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %25, i32 0, i32 7
  %27 = call i32 @test_and_set_bit(i32 %24, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %13
  %30 = load %struct.cfspi*, %struct.cfspi** %6, align 8
  %31 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %30, i32 0, i32 6
  %32 = call i32 @wake_up_interruptible(i32* %31)
  br label %33

33:                                               ; preds = %29, %13
  %34 = load %struct.cfspi*, %struct.cfspi** %6, align 8
  %35 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %34, i32 0, i32 5
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load %struct.cfspi*, %struct.cfspi** %6, align 8
  %39 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %68, label %42

42:                                               ; preds = %33
  %43 = load %struct.cfspi*, %struct.cfspi** %6, align 8
  %44 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.cfspi*, %struct.cfspi** %6, align 8
  %48 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %42
  %52 = load %struct.cfspi*, %struct.cfspi** %6, align 8
  %53 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32 (i32, i32)*, i32 (i32, i32)** %54, align 8
  %56 = icmp ne i32 (i32, i32)* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load %struct.cfspi*, %struct.cfspi** %6, align 8
  %59 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.cfspi*, %struct.cfspi** %6, align 8
  %61 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32 (i32, i32)*, i32 (i32, i32)** %62, align 8
  %64 = load %struct.cfspi*, %struct.cfspi** %6, align 8
  %65 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 %63(i32 %66, i32 0)
  br label %68

68:                                               ; preds = %57, %51, %42, %33
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %10
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.cfspi* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_queue_tail(%struct.TYPE_4__*, %struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
