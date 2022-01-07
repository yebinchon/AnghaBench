; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ethtool.c_lan743x_eeprom_confirm_not_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ethtool.c_lan743x_eeprom_confirm_not_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@E2P_CMD = common dso_local global i32 0, align 4
@E2P_CMD_EPC_BUSY_ = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"EEPROM is busy\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan743x_adapter*)* @lan743x_eeprom_confirm_not_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_eeprom_confirm_not_busy(%struct.lan743x_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lan743x_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  store i64 %6, i64* %4, align 8
  br label %7

7:                                                ; preds = %18, %1
  %8 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %9 = load i32, i32* @E2P_CMD, align 4
  %10 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @E2P_CMD_EPC_BUSY_, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %35

16:                                               ; preds = %7
  %17 = call i32 @usleep_range(i32 40, i32 100)
  br label %18

18:                                               ; preds = %16
  %19 = load i64, i64* @jiffies, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @HZ, align 8
  %22 = add i64 %20, %21
  %23 = call i32 @time_after(i64 %19, i64 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %7, label %26

26:                                               ; preds = %18
  %27 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %28 = load i32, i32* @drv, align 4
  %29 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @netif_warn(%struct.lan743x_adapter* %27, i32 %28, i32 %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %26, %15
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @lan743x_csr_read(%struct.lan743x_adapter*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @netif_warn(%struct.lan743x_adapter*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
