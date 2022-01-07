; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_mpd_enable_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_mpd_enable_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sysport_priv = type { i64 }

@UMAC_MPD_CTRL = common dso_local global i32 0, align 4
@MPD_EN = common dso_local global i32 0, align 4
@RBUF_ACPI_EN_LITE = common dso_local global i32 0, align 4
@RBUF_ACPI_EN = common dso_local global i32 0, align 4
@RBUF_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_sysport_priv*, i32)* @mpd_enable_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpd_enable_set(%struct.bcm_sysport_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.bcm_sysport_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bcm_sysport_priv* %0, %struct.bcm_sysport_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %8 = load i32, i32* @UMAC_MPD_CTRL, align 4
  %9 = call i32 @umac_readl(%struct.bcm_sysport_priv* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @MPD_EN, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  br label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @MPD_EN, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %16, %12
  %22 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @UMAC_MPD_CTRL, align 4
  %25 = call i32 @umac_writel(%struct.bcm_sysport_priv* %22, i32 %23, i32 %24)
  %26 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %27 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @RBUF_ACPI_EN_LITE, align 4
  store i32 %31, i32* %6, align 4
  br label %34

32:                                               ; preds = %21
  %33 = load i32, i32* @RBUF_ACPI_EN, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %36 = load i32, i32* @RBUF_CONTROL, align 4
  %37 = call i32 @rbuf_readl(%struct.bcm_sysport_priv* %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %49

44:                                               ; preds = %34
  %45 = load i32, i32* %6, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %44, %40
  %50 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @RBUF_CONTROL, align 4
  %53 = call i32 @rbuf_writel(%struct.bcm_sysport_priv* %50, i32 %51, i32 %52)
  ret void
}

declare dso_local i32 @umac_readl(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @umac_writel(%struct.bcm_sysport_priv*, i32, i32) #1

declare dso_local i32 @rbuf_readl(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @rbuf_writel(%struct.bcm_sysport_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
