; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_peak_pcmcia.c_pcan_write_canreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_peak_pcmcia.c_pcan_write_canreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1000_priv = type { i32, %struct.pcan_pccard* }
%struct.pcan_pccard = type { i32 }

@PCC_CHAN_SIZE = common dso_local global i32 0, align 4
@SJA1000_MOD = common dso_local global i32 0, align 4
@PCC_LED_ON = common dso_local global i32 0, align 4
@PCC_LED_SLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sja1000_priv*, i32, i32)* @pcan_write_canreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcan_write_canreg(%struct.sja1000_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sja1000_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcan_pccard*, align 8
  %8 = alloca i32, align 4
  store %struct.sja1000_priv* %0, %struct.sja1000_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sja1000_priv*, %struct.sja1000_priv** %4, align 8
  %10 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %9, i32 0, i32 1
  %11 = load %struct.pcan_pccard*, %struct.pcan_pccard** %10, align 8
  store %struct.pcan_pccard* %11, %struct.pcan_pccard** %7, align 8
  %12 = load %struct.sja1000_priv*, %struct.sja1000_priv** %4, align 8
  %13 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.pcan_pccard*, %struct.pcan_pccard** %7, align 8
  %16 = getelementptr inbounds %struct.pcan_pccard, %struct.pcan_pccard* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %14, %17
  %19 = load i32, i32* @PCC_CHAN_SIZE, align 4
  %20 = sdiv i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SJA1000_MOD, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %40 [
    i32 128, label %26
    i32 0, label %32
  ]

26:                                               ; preds = %24
  %27 = load %struct.pcan_pccard*, %struct.pcan_pccard** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @PCC_LED(i32 %28)
  %30 = load i32, i32* @PCC_LED_ON, align 4
  %31 = call i32 @pcan_set_leds(%struct.pcan_pccard* %27, i32 %29, i32 %30)
  br label %41

32:                                               ; preds = %24
  %33 = load %struct.pcan_pccard*, %struct.pcan_pccard** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @PCC_LED(i32 %34)
  %36 = load i32, i32* @PCC_LED_SLOW, align 4
  %37 = call i32 @pcan_set_leds(%struct.pcan_pccard* %33, i32 %35, i32 %36)
  %38 = load %struct.pcan_pccard*, %struct.pcan_pccard** %7, align 8
  %39 = call i32 @pcan_start_led_timer(%struct.pcan_pccard* %38)
  br label %41

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40, %32, %26
  br label %42

42:                                               ; preds = %41, %3
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.sja1000_priv*, %struct.sja1000_priv** %4, align 8
  %45 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %46, %47
  %49 = call i32 @iowrite8(i32 %43, i32 %48)
  ret void
}

declare dso_local i32 @pcan_set_leds(%struct.pcan_pccard*, i32, i32) #1

declare dso_local i32 @PCC_LED(i32) #1

declare dso_local i32 @pcan_start_led_timer(%struct.pcan_pccard*) #1

declare dso_local i32 @iowrite8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
