; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ethtool.c_lan743x_eeprom_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ethtool.c_lan743x_eeprom_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@E2P_CMD = common dso_local global i32 0, align 4
@E2P_CMD_EPC_BUSY_ = common dso_local global i32 0, align 4
@E2P_CMD_EPC_TIMEOUT_ = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"EEPROM read operation timeout\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan743x_adapter*)* @lan743x_eeprom_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_eeprom_wait(%struct.lan743x_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lan743x_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  store i64 %6, i64* %4, align 8
  br label %7

7:                                                ; preds = %23, %1
  %8 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %9 = load i32, i32* @E2P_CMD, align 4
  %10 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @E2P_CMD_EPC_BUSY_, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @E2P_CMD_EPC_TIMEOUT_, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %7
  br label %31

21:                                               ; preds = %15
  %22 = call i32 @usleep_range(i32 40, i32 100)
  br label %23

23:                                               ; preds = %21
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @HZ, align 8
  %27 = add i64 %25, %26
  %28 = call i32 @time_after(i64 %24, i64 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %7, label %31

31:                                               ; preds = %23, %20
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @E2P_CMD_EPC_TIMEOUT_, align 4
  %34 = load i32, i32* @E2P_CMD_EPC_BUSY_, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %40 = load i32, i32* @drv, align 4
  %41 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @netif_warn(%struct.lan743x_adapter* %39, i32 %40, i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %48

47:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %38
  %49 = load i32, i32* %2, align 4
  ret i32 %49
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
