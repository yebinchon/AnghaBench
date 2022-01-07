; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_emac.c_emac_int_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_emac.c_emac_int_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_priv = type { i64, i32 (...)* }

@EMAC_VERSION_2 = common dso_local global i64 0, align 8
@EMAC_DM646X_CMRXINTEN = common dso_local global i32 0, align 4
@EMAC_DM646X_CMTXINTEN = common dso_local global i32 0, align 4
@EMAC_DM646X_MACEOIVECTOR = common dso_local global i32 0, align 4
@EMAC_DM646X_MAC_EOI_C0_RXEN = common dso_local global i32 0, align 4
@EMAC_DM646X_MAC_EOI_C0_TXEN = common dso_local global i32 0, align 4
@EMAC_CTRL_EWCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_priv*)* @emac_int_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_int_disable(%struct.emac_priv* %0) #0 {
  %2 = alloca %struct.emac_priv*, align 8
  %3 = alloca i64, align 8
  store %struct.emac_priv* %0, %struct.emac_priv** %2, align 8
  %4 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %5 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @EMAC_VERSION_2, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %34

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = load i32, i32* @EMAC_DM646X_CMRXINTEN, align 4
  %13 = call i32 @emac_ctrl_write(i32 %12, i32 0)
  %14 = load i32, i32* @EMAC_DM646X_CMTXINTEN, align 4
  %15 = call i32 @emac_ctrl_write(i32 %14, i32 0)
  %16 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %17 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %16, i32 0, i32 1
  %18 = load i32 (...)*, i32 (...)** %17, align 8
  %19 = icmp ne i32 (...)* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %9
  %21 = load %struct.emac_priv*, %struct.emac_priv** %2, align 8
  %22 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %21, i32 0, i32 1
  %23 = load i32 (...)*, i32 (...)** %22, align 8
  %24 = call i32 (...) %23()
  br label %25

25:                                               ; preds = %20, %9
  %26 = load i32, i32* @EMAC_DM646X_MACEOIVECTOR, align 4
  %27 = load i32, i32* @EMAC_DM646X_MAC_EOI_C0_RXEN, align 4
  %28 = call i32 @emac_write(i32 %26, i32 %27)
  %29 = load i32, i32* @EMAC_DM646X_MACEOIVECTOR, align 4
  %30 = load i32, i32* @EMAC_DM646X_MAC_EOI_C0_TXEN, align 4
  %31 = call i32 @emac_write(i32 %29, i32 %30)
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @local_irq_restore(i64 %32)
  br label %37

34:                                               ; preds = %1
  %35 = load i32, i32* @EMAC_CTRL_EWCTL, align 4
  %36 = call i32 @emac_ctrl_write(i32 %35, i32 0)
  br label %37

37:                                               ; preds = %34, %25
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @emac_ctrl_write(i32, i32) #1

declare dso_local i32 @emac_write(i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
