; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/fujitsu/extr_fmvj18x_cs.c_fjn_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/fujitsu/extr_fmvj18x_cs.c_fjn_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.local_info = type { i64, i64, %struct.pcmcia_device* }
%struct.pcmcia_device = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"fjn_close('%s').\0A\00", align 1
@sram_config = common dso_local global i64 0, align 8
@CONFIG0_RST = common dso_local global i32 0, align 4
@CONFIG_0 = common dso_local global i64 0, align 8
@CONFIG0_RST_1 = common dso_local global i32 0, align 4
@CHIP_OFF = common dso_local global i32 0, align 4
@CONFIG_1 = common dso_local global i64 0, align 8
@MBH10302 = common dso_local global i64 0, align 8
@INTR_OFF = common dso_local global i32 0, align 4
@LAN_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @fjn_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fjn_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.local_info*, align 8
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.local_info* @netdev_priv(%struct.net_device* %6)
  store %struct.local_info* %7, %struct.local_info** %3, align 8
  %8 = load %struct.local_info*, %struct.local_info** %3, align 8
  %9 = getelementptr inbounds %struct.local_info, %struct.local_info* %8, i32 0, i32 2
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  store %struct.pcmcia_device* %10, %struct.pcmcia_device** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.local_info*, %struct.local_info** %3, align 8
  %19 = getelementptr inbounds %struct.local_info, %struct.local_info* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = call i32 @netif_stop_queue(%struct.net_device* %20)
  %22 = load i64, i64* @sram_config, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load i32, i32* @CONFIG0_RST, align 4
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = load i64, i64* @CONFIG_0, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @outb(i32 %25, i64 %29)
  br label %38

31:                                               ; preds = %1
  %32 = load i32, i32* @CONFIG0_RST_1, align 4
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = load i64, i64* @CONFIG_0, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @outb(i32 %32, i64 %36)
  br label %38

38:                                               ; preds = %31, %24
  %39 = load i32, i32* @CHIP_OFF, align 4
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* @CONFIG_1, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @outb(i32 %39, i64 %43)
  %45 = load %struct.local_info*, %struct.local_info** %3, align 8
  %46 = getelementptr inbounds %struct.local_info, %struct.local_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MBH10302, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %38
  %51 = load i32, i32* @INTR_OFF, align 4
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = load i64, i64* @LAN_CTRL, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @outb(i32 %51, i64 %55)
  br label %57

57:                                               ; preds = %50, %38
  %58 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %59 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 4
  ret i32 0
}

declare dso_local %struct.local_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
