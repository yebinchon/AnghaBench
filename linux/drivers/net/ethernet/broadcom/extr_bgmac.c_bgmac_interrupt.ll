; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { i32, i32, i32 }

@BGMAC_INT_STATUS = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@BGMAC_IS_TX0 = common dso_local global i32 0, align 4
@BGMAC_IS_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unknown IRQs: 0x%08X\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bgmac_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgmac_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bgmac*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.bgmac* @netdev_priv(i8* %8)
  store %struct.bgmac* %9, %struct.bgmac** %6, align 8
  %10 = load %struct.bgmac*, %struct.bgmac** %6, align 8
  %11 = load i32, i32* @BGMAC_INT_STATUS, align 4
  %12 = call i32 @bgmac_read(%struct.bgmac* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.bgmac*, %struct.bgmac** %6, align 8
  %14 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %44

22:                                               ; preds = %2
  %23 = load i32, i32* @BGMAC_IS_TX0, align 4
  %24 = load i32, i32* @BGMAC_IS_RX, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load %struct.bgmac*, %struct.bgmac** %6, align 8
  %33 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %31, %22
  %38 = load %struct.bgmac*, %struct.bgmac** %6, align 8
  %39 = call i32 @bgmac_chip_intrs_off(%struct.bgmac* %38)
  %40 = load %struct.bgmac*, %struct.bgmac** %6, align 8
  %41 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %40, i32 0, i32 1
  %42 = call i32 @napi_schedule(i32* %41)
  %43 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %37, %20
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.bgmac* @netdev_priv(i8*) #1

declare dso_local i32 @bgmac_read(%struct.bgmac*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @bgmac_chip_intrs_off(%struct.bgmac*) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
