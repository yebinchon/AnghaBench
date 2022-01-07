; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_hw_init_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_hw_init_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encx24j600_priv = type { i64 }

@DISABLERX = common dso_local global i32 0, align 4
@ERXST = common dso_local global i32 0, align 4
@ENC_RX_BUF_START = common dso_local global i64 0, align 8
@ERXRDPT = common dso_local global i32 0, align 4
@ERXTAIL = common dso_local global i32 0, align 4
@ENC_SRAM_SIZE = common dso_local global i64 0, align 8
@EUDAST = common dso_local global i32 0, align 4
@EUDAND = common dso_local global i32 0, align 4
@MAMXFL = common dso_local global i32 0, align 4
@MAX_FRAMELEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.encx24j600_priv*)* @encx24j600_hw_init_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encx24j600_hw_init_rx(%struct.encx24j600_priv* %0) #0 {
  %2 = alloca %struct.encx24j600_priv*, align 8
  store %struct.encx24j600_priv* %0, %struct.encx24j600_priv** %2, align 8
  %3 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %4 = load i32, i32* @DISABLERX, align 4
  %5 = call i32 @encx24j600_cmd(%struct.encx24j600_priv* %3, i32 %4)
  %6 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %7 = load i32, i32* @ERXST, align 4
  %8 = load i64, i64* @ENC_RX_BUF_START, align 8
  %9 = call i32 @encx24j600_write_reg(%struct.encx24j600_priv* %6, i32 %7, i64 %8)
  %10 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %11 = load i32, i32* @ERXRDPT, align 4
  %12 = load i64, i64* @ENC_RX_BUF_START, align 8
  %13 = call i32 @encx24j600_write_reg(%struct.encx24j600_priv* %10, i32 %11, i64 %12)
  %14 = load i64, i64* @ENC_RX_BUF_START, align 8
  %15 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %16 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %18 = load i32, i32* @ERXTAIL, align 4
  %19 = load i64, i64* @ENC_SRAM_SIZE, align 8
  %20 = sub nsw i64 %19, 2
  %21 = call i32 @encx24j600_write_reg(%struct.encx24j600_priv* %17, i32 %18, i64 %20)
  %22 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %23 = load i32, i32* @EUDAST, align 4
  %24 = load i64, i64* @ENC_SRAM_SIZE, align 8
  %25 = call i32 @encx24j600_write_reg(%struct.encx24j600_priv* %22, i32 %23, i64 %24)
  %26 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %27 = load i32, i32* @EUDAND, align 4
  %28 = load i64, i64* @ENC_SRAM_SIZE, align 8
  %29 = add nsw i64 %28, 1
  %30 = call i32 @encx24j600_write_reg(%struct.encx24j600_priv* %26, i32 %27, i64 %29)
  %31 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %32 = load i32, i32* @MAMXFL, align 4
  %33 = load i64, i64* @MAX_FRAMELEN, align 8
  %34 = call i32 @encx24j600_write_reg(%struct.encx24j600_priv* %31, i32 %32, i64 %33)
  ret void
}

declare dso_local i32 @encx24j600_cmd(%struct.encx24j600_priv*, i32) #1

declare dso_local i32 @encx24j600_write_reg(%struct.encx24j600_priv*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
