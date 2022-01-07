; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_get_hwtimestamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_get_hwtimestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocelot = type { i32 }
%struct.timespec64 = type { i32, i32 }

@PTP_PIN_CFG = common dso_local global i32 0, align 4
@TOD_ACC_PIN = common dso_local global i32 0, align 4
@PTP_PIN_CFG_SYNC = common dso_local global i32 0, align 4
@PTP_PIN_CFG_ACTION_MASK = common dso_local global i32 0, align 4
@PTP_PIN_CFG_DOM = common dso_local global i32 0, align 4
@PTP_PIN_ACTION_SAVE = common dso_local global i32 0, align 4
@PTP_PIN_TOD_SEC_LSB = common dso_local global i32 0, align 4
@SYS_PTP_TXSTAMP = common dso_local global i32 0, align 4
@SYS_PTP_TXSTAMP_PTP_TXSTAMP_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocelot_get_hwtimestamp(%struct.ocelot* %0, %struct.timespec64* %1) #0 {
  %3 = alloca %struct.ocelot*, align 8
  %4 = alloca %struct.timespec64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ocelot* %0, %struct.ocelot** %3, align 8
  store %struct.timespec64* %1, %struct.timespec64** %4, align 8
  %7 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %8 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %12 = load i32, i32* @PTP_PIN_CFG, align 4
  %13 = load i32, i32* @TOD_ACC_PIN, align 4
  %14 = call i8* @ocelot_read_rix(%struct.ocelot* %11, i32 %12, i32 %13)
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @PTP_PIN_CFG_SYNC, align 4
  %17 = load i32, i32* @PTP_PIN_CFG_ACTION_MASK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @PTP_PIN_CFG_DOM, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @PTP_PIN_ACTION_SAVE, align 4
  %25 = call i32 @PTP_PIN_CFG_ACTION(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @PTP_PIN_CFG, align 4
  %31 = load i32, i32* @TOD_ACC_PIN, align 4
  %32 = call i32 @ocelot_write_rix(%struct.ocelot* %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %34 = load i32, i32* @PTP_PIN_TOD_SEC_LSB, align 4
  %35 = load i32, i32* @TOD_ACC_PIN, align 4
  %36 = call i8* @ocelot_read_rix(%struct.ocelot* %33, i32 %34, i32 %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %39 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %41 = load i32, i32* @SYS_PTP_TXSTAMP, align 4
  %42 = call i32 @ocelot_read(%struct.ocelot* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @SYS_PTP_TXSTAMP_PTP_TXSTAMP(i32 %43)
  %45 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %46 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %48 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 1
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @SYS_PTP_TXSTAMP_PTP_TXSTAMP_SEC, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = icmp ne i32 %50, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %2
  %60 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %61 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %59, %2
  %65 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %66 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %65, i32 0, i32 0
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @ocelot_read_rix(%struct.ocelot*, i32, i32) #1

declare dso_local i32 @PTP_PIN_CFG_ACTION(i32) #1

declare dso_local i32 @ocelot_write_rix(%struct.ocelot*, i32, i32, i32) #1

declare dso_local i32 @ocelot_read(%struct.ocelot*, i32) #1

declare dso_local i32 @SYS_PTP_TXSTAMP_PTP_TXSTAMP(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
