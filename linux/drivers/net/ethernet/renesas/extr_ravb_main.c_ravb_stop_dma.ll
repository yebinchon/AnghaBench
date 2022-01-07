; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_stop_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_stop_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@TCCR = common dso_local global i32 0, align 4
@TCCR_TSRQ0 = common dso_local global i32 0, align 4
@TCCR_TSRQ1 = common dso_local global i32 0, align 4
@TCCR_TSRQ2 = common dso_local global i32 0, align 4
@TCCR_TSRQ3 = common dso_local global i32 0, align 4
@CSR = common dso_local global i32 0, align 4
@CSR_TPO0 = common dso_local global i32 0, align 4
@CSR_TPO1 = common dso_local global i32 0, align 4
@CSR_TPO2 = common dso_local global i32 0, align 4
@CSR_TPO3 = common dso_local global i32 0, align 4
@CSR_RPO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ravb_stop_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ravb_stop_dma(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = load i32, i32* @TCCR, align 4
  %7 = load i32, i32* @TCCR_TSRQ0, align 4
  %8 = load i32, i32* @TCCR_TSRQ1, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @TCCR_TSRQ2, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @TCCR_TSRQ3, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @ravb_wait(%struct.net_device* %5, i32 %6, i32 %13, i32 0)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %48

19:                                               ; preds = %1
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = load i32, i32* @CSR, align 4
  %22 = load i32, i32* @CSR_TPO0, align 4
  %23 = load i32, i32* @CSR_TPO1, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @CSR_TPO2, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @CSR_TPO3, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @ravb_wait(%struct.net_device* %20, i32 %21, i32 %28, i32 0)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %48

34:                                               ; preds = %19
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i32 @ravb_rcv_snd_disable(%struct.net_device* %35)
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = load i32, i32* @CSR, align 4
  %39 = load i32, i32* @CSR_RPO, align 4
  %40 = call i32 @ravb_wait(%struct.net_device* %37, i32 %38, i32 %39, i32 0)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %48

45:                                               ; preds = %34
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = call i32 @ravb_config(%struct.net_device* %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %43, %32, %17
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @ravb_wait(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @ravb_rcv_snd_disable(%struct.net_device*) #1

declare dso_local i32 @ravb_config(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
