; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sky2_port = type { i64, i32, i32, %struct.sky2_hw* }
%struct.sky2_hw = type { i32 }

@timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"tx timeout\0A\00", align 1
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"transmit ring %u .. %u report=%u done=%u\0A\00", align 1
@STAT_TXA1_RIDX = common dso_local global i32 0, align 4
@STAT_TXA2_RIDX = common dso_local global i32 0, align 4
@txqaddr = common dso_local global i32* null, align 8
@Q_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @sky2_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sky2_port*, align 8
  %4 = alloca %struct.sky2_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %5)
  store %struct.sky2_port* %6, %struct.sky2_port** %3, align 8
  %7 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %8 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %7, i32 0, i32 3
  %9 = load %struct.sky2_hw*, %struct.sky2_hw** %8, align 8
  store %struct.sky2_hw* %9, %struct.sky2_hw** %4, align 8
  %10 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %11 = load i32, i32* @timer, align 4
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @netif_err(%struct.sky2_port* %10, i32 %11, %struct.net_device* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @KERN_DEBUG, align 4
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %17 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %20 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %23 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %24 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @STAT_TXA1_RIDX, align 4
  br label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @STAT_TXA2_RIDX, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = call i32 @sky2_read16(%struct.sky2_hw* %22, i32 %32)
  %34 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %35 = load i32*, i32** @txqaddr, align 8
  %36 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %37 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @Q_DONE, align 4
  %42 = call i32 @Q_ADDR(i32 %40, i32 %41)
  %43 = call i32 @sky2_read16(%struct.sky2_hw* %34, i32 %42)
  %44 = call i32 @netdev_printk(i32 %14, %struct.net_device* %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %21, i32 %33, i32 %43)
  %45 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %46 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %45, i32 0, i32 0
  %47 = call i32 @schedule_work(i32* %46)
  ret void
}

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_err(%struct.sky2_port*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @netdev_printk(i32, %struct.net_device*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sky2_read16(%struct.sky2_hw*, i32) #1

declare dso_local i32 @Q_ADDR(i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
