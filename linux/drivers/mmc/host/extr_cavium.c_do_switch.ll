; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_do_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_do_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvm_mmc_host = type { i64 }

@MIO_EMM_RSP_STS_SWITCH_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cvm_mmc_host*, i32)* @do_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_switch(%struct.cvm_mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.cvm_mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cvm_mmc_host* %0, %struct.cvm_mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 100, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @get_bus_id(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = call i32 @clear_bus_id(i32* %4)
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %13 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %16 = call i64 @MIO_EMM_SWITCH(%struct.cvm_mmc_host* %15)
  %17 = add nsw i64 %14, %16
  %18 = call i32 @writeq(i32 %11, i64 %17)
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @set_bus_id(i32* %4, i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %23 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %26 = call i64 @MIO_EMM_SWITCH(%struct.cvm_mmc_host* %25)
  %27 = add nsw i64 %24, %26
  %28 = call i32 @writeq(i32 %21, i64 %27)
  br label %29

29:                                               ; preds = %44, %2
  %30 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %31 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %34 = call i64 @MIO_EMM_RSP_STS(%struct.cvm_mmc_host* %33)
  %35 = add nsw i64 %32, %34
  %36 = call i32 @readq(i64 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @MIO_EMM_RSP_STS_SWITCH_VAL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %29
  br label %48

42:                                               ; preds = %29
  %43 = call i32 @udelay(i32 10)
  br label %44

44:                                               ; preds = %42
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %29, label %48

48:                                               ; preds = %44, %41
  %49 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %50 = call i32 @check_switch_errors(%struct.cvm_mmc_host* %49)
  ret void
}

declare dso_local i32 @get_bus_id(i32) #1

declare dso_local i32 @clear_bus_id(i32*) #1

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i64 @MIO_EMM_SWITCH(%struct.cvm_mmc_host*) #1

declare dso_local i32 @set_bus_id(i32*, i32) #1

declare dso_local i32 @readq(i64) #1

declare dso_local i64 @MIO_EMM_RSP_STS(%struct.cvm_mmc_host*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @check_switch_errors(%struct.cvm_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
