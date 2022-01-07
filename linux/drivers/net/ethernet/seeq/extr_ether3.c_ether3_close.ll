; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_ether3.c_ether3_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_ether3.c_ether3_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@CMD_RXOFF = common dso_local global i32 0, align 4
@CMD_TXOFF = common dso_local global i32 0, align 4
@REG_COMMAND = common dso_local global i32 0, align 4
@REG_STATUS = common dso_local global i32 0, align 4
@STAT_RXON = common dso_local global i32 0, align 4
@STAT_TXON = common dso_local global i32 0, align 4
@REG_CONFIG2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ether3_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ether3_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load %struct.net_device*, %struct.net_device** %2, align 8
  %4 = call i32 @netif_stop_queue(%struct.net_device* %3)
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = getelementptr inbounds %struct.net_device, %struct.net_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @disable_irq(i32 %7)
  %9 = load i32, i32* @CMD_RXOFF, align 4
  %10 = load i32, i32* @CMD_TXOFF, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @REG_COMMAND, align 4
  %13 = call i32 @ether3_outw(i32 %11, i32 %12)
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call %struct.TYPE_4__* @priv(%struct.net_device* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %26, %1
  %19 = load i32, i32* @REG_STATUS, align 4
  %20 = call i32 @ether3_inw(i32 %19)
  %21 = load i32, i32* @STAT_RXON, align 4
  %22 = load i32, i32* @STAT_TXON, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = call i32 (...) @barrier()
  br label %18

28:                                               ; preds = %18
  %29 = load i64, i64* @REG_CONFIG2, align 8
  %30 = add nsw i64 %29, 4
  %31 = call i32 @ether3_outb(i32 128, i64 %30)
  %32 = load i32, i32* @REG_COMMAND, align 4
  %33 = call i32 @ether3_outw(i32 0, i32 %32)
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = call i32 @free_irq(i32 %36, %struct.net_device* %37)
  ret i32 0
}

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @ether3_outw(i32, i32) #1

declare dso_local %struct.TYPE_4__* @priv(%struct.net_device*) #1

declare dso_local i32 @ether3_inw(i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @ether3_outb(i32, i64) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
