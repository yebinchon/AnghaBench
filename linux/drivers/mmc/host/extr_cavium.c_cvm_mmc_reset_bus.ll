; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_cvm_mmc_reset_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_cvm_mmc_reset_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvm_mmc_slot = type { i32, %struct.cvm_mmc_host*, i32 }
%struct.cvm_mmc_host = type { i64 }

@MIO_EMM_SWITCH_EXE = common dso_local global i32 0, align 4
@MIO_EMM_SWITCH_ERR0 = common dso_local global i32 0, align 4
@MIO_EMM_SWITCH_ERR1 = common dso_local global i32 0, align 4
@MIO_EMM_SWITCH_ERR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cvm_mmc_slot*)* @cvm_mmc_reset_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvm_mmc_reset_bus(%struct.cvm_mmc_slot* %0) #0 {
  %2 = alloca %struct.cvm_mmc_slot*, align 8
  %3 = alloca %struct.cvm_mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cvm_mmc_slot* %0, %struct.cvm_mmc_slot** %2, align 8
  %6 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %2, align 8
  %7 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %6, i32 0, i32 1
  %8 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %7, align 8
  store %struct.cvm_mmc_host* %8, %struct.cvm_mmc_host** %3, align 8
  %9 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %2, align 8
  %10 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %9, i32 0, i32 1
  %11 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %10, align 8
  %12 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %15 = call i64 @MIO_EMM_SWITCH(%struct.cvm_mmc_host* %14)
  %16 = add nsw i64 %13, %15
  %17 = call i32 @readq(i64 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @MIO_EMM_SWITCH_EXE, align 4
  %19 = load i32, i32* @MIO_EMM_SWITCH_ERR0, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MIO_EMM_SWITCH_ERR1, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MIO_EMM_SWITCH_ERR2, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %2, align 8
  %29 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @set_bus_id(i32* %4, i32 %30)
  %32 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %2, align 8
  %33 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %32, i32 0, i32 1
  %34 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %33, align 8
  %35 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %38 = call i64 @MIO_EMM_WDOG(%struct.cvm_mmc_host* %37)
  %39 = add nsw i64 %36, %38
  %40 = call i32 @readq(i64 %39)
  store i32 %40, i32* %5, align 4
  %41 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %2, align 8
  %42 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %41, i32 0, i32 1
  %43 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @do_switch(%struct.cvm_mmc_host* %43, i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %2, align 8
  %48 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = call i32 @msleep(i32 20)
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %2, align 8
  %52 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %51, i32 0, i32 1
  %53 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %52, align 8
  %54 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %57 = call i64 @MIO_EMM_WDOG(%struct.cvm_mmc_host* %56)
  %58 = add nsw i64 %55, %57
  %59 = call i32 @writeq(i32 %50, i64 %58)
  ret void
}

declare dso_local i32 @readq(i64) #1

declare dso_local i64 @MIO_EMM_SWITCH(%struct.cvm_mmc_host*) #1

declare dso_local i32 @set_bus_id(i32*, i32) #1

declare dso_local i64 @MIO_EMM_WDOG(%struct.cvm_mmc_host*) #1

declare dso_local i32 @do_switch(%struct.cvm_mmc_host*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @writeq(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
