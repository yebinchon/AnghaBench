; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_set_rxfilter_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_set_rxfilter_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encx24j600_priv = type { i32 }

@MACON1 = common dso_local global i32 0, align 4
@PASSALL = common dso_local global i32 0, align 4
@ERXFCON = common dso_local global i32 0, align 4
@UCEN = common dso_local global i32 0, align 4
@MCEN = common dso_local global i32 0, align 4
@NOTMEEN = common dso_local global i32 0, align 4
@CRCEN = common dso_local global i32 0, align 4
@BCEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.encx24j600_priv*)* @encx24j600_set_rxfilter_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encx24j600_set_rxfilter_mode(%struct.encx24j600_priv* %0) #0 {
  %2 = alloca %struct.encx24j600_priv*, align 8
  store %struct.encx24j600_priv* %0, %struct.encx24j600_priv** %2, align 8
  %3 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %4 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %35 [
    i32 128, label %6
    i32 130, label %19
    i32 129, label %34
  ]

6:                                                ; preds = %1
  %7 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %8 = load i32, i32* @MACON1, align 4
  %9 = load i32, i32* @PASSALL, align 4
  %10 = call i32 @encx24j600_set_bits(%struct.encx24j600_priv* %7, i32 %8, i32 %9)
  %11 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %12 = load i32, i32* @ERXFCON, align 4
  %13 = load i32, i32* @UCEN, align 4
  %14 = load i32, i32* @MCEN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @NOTMEEN, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @encx24j600_write_reg(%struct.encx24j600_priv* %11, i32 %12, i32 %17)
  br label %48

19:                                               ; preds = %1
  %20 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %21 = load i32, i32* @MACON1, align 4
  %22 = load i32, i32* @PASSALL, align 4
  %23 = call i32 @encx24j600_clr_bits(%struct.encx24j600_priv* %20, i32 %21, i32 %22)
  %24 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %25 = load i32, i32* @ERXFCON, align 4
  %26 = load i32, i32* @UCEN, align 4
  %27 = load i32, i32* @CRCEN, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @BCEN, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @MCEN, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @encx24j600_write_reg(%struct.encx24j600_priv* %24, i32 %25, i32 %32)
  br label %48

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %1, %34
  %36 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %37 = load i32, i32* @MACON1, align 4
  %38 = load i32, i32* @PASSALL, align 4
  %39 = call i32 @encx24j600_clr_bits(%struct.encx24j600_priv* %36, i32 %37, i32 %38)
  %40 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %41 = load i32, i32* @ERXFCON, align 4
  %42 = load i32, i32* @UCEN, align 4
  %43 = load i32, i32* @CRCEN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @BCEN, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @encx24j600_write_reg(%struct.encx24j600_priv* %40, i32 %41, i32 %46)
  br label %48

48:                                               ; preds = %35, %19, %6
  ret void
}

declare dso_local i32 @encx24j600_set_bits(%struct.encx24j600_priv*, i32, i32) #1

declare dso_local i32 @encx24j600_write_reg(%struct.encx24j600_priv*, i32, i32) #1

declare dso_local i32 @encx24j600_clr_bits(%struct.encx24j600_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
