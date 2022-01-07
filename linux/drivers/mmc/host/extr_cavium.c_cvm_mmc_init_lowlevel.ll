; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_cvm_mmc_init_lowlevel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_cvm_mmc_init_lowlevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvm_mmc_slot = type { i64, i32, i32, %struct.TYPE_2__*, %struct.cvm_mmc_host* }
%struct.TYPE_2__ = type { i32 }
%struct.cvm_mmc_host = type { i64, i32, i64 }

@MIO_EMM_SWITCH_POWER_CLASS = common dso_local global i32 0, align 4
@MIO_EMM_SWITCH_CLK_HI = common dso_local global i32 0, align 4
@MIO_EMM_SWITCH_CLK_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cvm_mmc_slot*)* @cvm_mmc_init_lowlevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvm_mmc_init_lowlevel(%struct.cvm_mmc_slot* %0) #0 {
  %2 = alloca %struct.cvm_mmc_slot*, align 8
  %3 = alloca %struct.cvm_mmc_host*, align 8
  %4 = alloca i32, align 4
  store %struct.cvm_mmc_slot* %0, %struct.cvm_mmc_slot** %2, align 8
  %5 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %2, align 8
  %6 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %5, i32 0, i32 4
  %7 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %6, align 8
  store %struct.cvm_mmc_host* %7, %struct.cvm_mmc_host** %3, align 8
  %8 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %2, align 8
  %9 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = shl i64 1, %10
  %12 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %13 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = or i64 %14, %11
  store i64 %15, i64* %13, align 8
  %16 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %17 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %2, align 8
  %21 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %20, i32 0, i32 4
  %22 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %21, align 8
  %23 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %26 = call i64 @MIO_EMM_CFG(%struct.cvm_mmc_host* %25)
  %27 = add nsw i64 %24, %26
  %28 = call i32 @writeq(i32 %19, i64 %27)
  %29 = call i32 @udelay(i32 10)
  %30 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %2, align 8
  %31 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %2, align 8
  %32 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cvm_mmc_set_clock(%struct.cvm_mmc_slot* %30, i32 %35)
  %37 = load i32, i32* @MIO_EMM_SWITCH_POWER_CLASS, align 4
  %38 = call i32 @FIELD_PREP(i32 %37, i32 10)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @MIO_EMM_SWITCH_CLK_HI, align 4
  %40 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %41 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %2, align 8
  %44 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sdiv i32 %42, %45
  %47 = sdiv i32 %46, 2
  %48 = call i32 @FIELD_PREP(i32 %39, i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* @MIO_EMM_SWITCH_CLK_LO, align 4
  %52 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %53 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %2, align 8
  %56 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sdiv i32 %54, %57
  %59 = sdiv i32 %58, 2
  %60 = call i32 @FIELD_PREP(i32 %51, i32 %59)
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  %63 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %2, align 8
  %64 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @set_bus_id(i32* %4, i64 %65)
  %67 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @do_switch(%struct.cvm_mmc_host* %67, i32 %68)
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %2, align 8
  %72 = getelementptr inbounds %struct.cvm_mmc_slot, %struct.cvm_mmc_slot* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.cvm_mmc_slot*, %struct.cvm_mmc_slot** %2, align 8
  %74 = call i32 @set_wdog(%struct.cvm_mmc_slot* %73, i32 0)
  %75 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %76 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %79 = call i64 @MIO_EMM_STS_MASK(%struct.cvm_mmc_host* %78)
  %80 = add nsw i64 %77, %79
  %81 = call i32 @writeq(i32 -466026368, i64 %80)
  %82 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %83 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %86 = call i64 @MIO_EMM_RCA(%struct.cvm_mmc_host* %85)
  %87 = add nsw i64 %84, %86
  %88 = call i32 @writeq(i32 1, i64 %87)
  ret i32 0
}

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i64 @MIO_EMM_CFG(%struct.cvm_mmc_host*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cvm_mmc_set_clock(%struct.cvm_mmc_slot*, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @set_bus_id(i32*, i64) #1

declare dso_local i32 @do_switch(%struct.cvm_mmc_host*, i32) #1

declare dso_local i32 @set_wdog(%struct.cvm_mmc_slot*, i32) #1

declare dso_local i64 @MIO_EMM_STS_MASK(%struct.cvm_mmc_host*) #1

declare dso_local i64 @MIO_EMM_RCA(%struct.cvm_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
