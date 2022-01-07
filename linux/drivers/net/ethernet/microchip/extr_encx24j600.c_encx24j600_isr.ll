; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encx24j600_priv = type { i32, %struct.net_device* }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CLREIE = common dso_local global i32 0, align 4
@EIR = common dso_local global i32 0, align 4
@LINKIF = common dso_local global i32 0, align 4
@TXIF = common dso_local global i32 0, align 4
@TXABTIF = common dso_local global i32 0, align 4
@RXABTIF = common dso_local global i32 0, align 4
@PCFULIF = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Packet counter full\0A\00", align 1
@PKTIF = common dso_local global i32 0, align 4
@ESTAT = common dso_local global i32 0, align 4
@SETEIE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @encx24j600_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encx24j600_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.encx24j600_priv*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.encx24j600_priv*
  store %struct.encx24j600_priv* %10, %struct.encx24j600_priv** %5, align 8
  %11 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %5, align 8
  %12 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %11, i32 0, i32 1
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  %14 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %5, align 8
  %15 = load i32, i32* @CLREIE, align 4
  %16 = call i32 @encx24j600_cmd(%struct.encx24j600_priv* %14, i32 %15)
  %17 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %5, align 8
  %18 = load i32, i32* @EIR, align 4
  %19 = call i32 @encx24j600_read_reg(%struct.encx24j600_priv* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @LINKIF, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %5, align 8
  %26 = call i32 @encx24j600_int_link_handler(%struct.encx24j600_priv* %25)
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @TXIF, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %5, align 8
  %34 = call i32 @encx24j600_tx_complete(%struct.encx24j600_priv* %33, i32 0)
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @TXABTIF, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %5, align 8
  %42 = call i32 @encx24j600_tx_complete(%struct.encx24j600_priv* %41, i32 1)
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @RXABTIF, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @PCFULIF, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %5, align 8
  %55 = load i32, i32* @rx_err, align 4
  %56 = load %struct.net_device*, %struct.net_device** %6, align 8
  %57 = call i32 @netif_err(%struct.encx24j600_priv* %54, i32 %55, %struct.net_device* %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.net_device*, %struct.net_device** %6, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %5, align 8
  %65 = load i32, i32* @EIR, align 4
  %66 = load i32, i32* @RXABTIF, align 4
  %67 = call i32 @encx24j600_clr_bits(%struct.encx24j600_priv* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %58, %43
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @PKTIF, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %96

73:                                               ; preds = %68
  %74 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %5, align 8
  %75 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %74, i32 0, i32 0
  %76 = call i32 @mutex_lock(i32* %75)
  %77 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %5, align 8
  %78 = load i32, i32* @ESTAT, align 4
  %79 = call i32 @encx24j600_read_reg(%struct.encx24j600_priv* %77, i32 %78)
  %80 = and i32 %79, 255
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %84, %73
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %5, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @encx24j600_rx_packets(%struct.encx24j600_priv* %85, i32 %86)
  %88 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %5, align 8
  %89 = load i32, i32* @ESTAT, align 4
  %90 = call i32 @encx24j600_read_reg(%struct.encx24j600_priv* %88, i32 %89)
  %91 = and i32 %90, 255
  store i32 %91, i32* %8, align 4
  br label %81

92:                                               ; preds = %81
  %93 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %5, align 8
  %94 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %93, i32 0, i32 0
  %95 = call i32 @mutex_unlock(i32* %94)
  br label %96

96:                                               ; preds = %92, %68
  %97 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %5, align 8
  %98 = load i32, i32* @SETEIE, align 4
  %99 = call i32 @encx24j600_cmd(%struct.encx24j600_priv* %97, i32 %98)
  %100 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %100
}

declare dso_local i32 @encx24j600_cmd(%struct.encx24j600_priv*, i32) #1

declare dso_local i32 @encx24j600_read_reg(%struct.encx24j600_priv*, i32) #1

declare dso_local i32 @encx24j600_int_link_handler(%struct.encx24j600_priv*) #1

declare dso_local i32 @encx24j600_tx_complete(%struct.encx24j600_priv*, i32) #1

declare dso_local i32 @netif_err(%struct.encx24j600_priv*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @encx24j600_clr_bits(%struct.encx24j600_priv*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @encx24j600_rx_packets(%struct.encx24j600_priv*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
