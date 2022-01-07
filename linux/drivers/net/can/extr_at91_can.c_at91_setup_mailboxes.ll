; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_at91_can.c_at91_setup_mailboxes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_at91_can.c_at91_setup_mailboxes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.at91_priv = type { i32, i64, i64, i32 }

@AT91_MB_MODE_DISABLED = common dso_local global i32 0, align 4
@AT91_MB_MODE_RX = common dso_local global i32 0, align 4
@AT91_MB_MODE_RX_OVRWR = common dso_local global i32 0, align 4
@AT91_MID_MIDE = common dso_local global i32 0, align 4
@AT91_MB_MODE_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @at91_setup_mailboxes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_setup_mailboxes(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.at91_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.at91_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.at91_priv* %7, %struct.at91_priv** %3, align 8
  %8 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %9 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @at91_can_id_to_reg_mid(i32 %10)
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %31, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %15 = call i32 @get_mb_rx_first(%struct.at91_priv* %14)
  %16 = icmp ult i32 %13, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %12
  %18 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @AT91_MB_MODE_DISABLED, align 4
  %21 = call i32 @set_mb_mode(%struct.at91_priv* %18, i32 %19, i32 %20)
  %22 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @AT91_MID(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @at91_write(%struct.at91_priv* %22, i32 %24, i32 %25)
  %27 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @AT91_MCR(i32 %28)
  %30 = call i32 @at91_write(%struct.at91_priv* %27, i32 %29, i32 0)
  br label %31

31:                                               ; preds = %17
  %32 = load i32, i32* %4, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %12

34:                                               ; preds = %12
  %35 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %36 = call i32 @get_mb_rx_first(%struct.at91_priv* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %47, %34
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %40 = call i32 @get_mb_rx_last(%struct.at91_priv* %39)
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @AT91_MB_MODE_RX, align 4
  %46 = call i32 @set_mb_mode(%struct.at91_priv* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %37

50:                                               ; preds = %37
  %51 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %52 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %53 = call i32 @get_mb_rx_last(%struct.at91_priv* %52)
  %54 = load i32, i32* @AT91_MB_MODE_RX_OVRWR, align 4
  %55 = call i32 @set_mb_mode(%struct.at91_priv* %51, i32 %53, i32 %54)
  %56 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %57 = call i32 @get_mb_rx_first(%struct.at91_priv* %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %73, %50
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %61 = call i32 @get_mb_rx_last(%struct.at91_priv* %60)
  %62 = icmp ule i32 %59, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @AT91_MAM(i32 %65)
  %67 = call i32 @at91_write(%struct.at91_priv* %64, i32 %66, i32 0)
  %68 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @AT91_MID(i32 %69)
  %71 = load i32, i32* @AT91_MID_MIDE, align 4
  %72 = call i32 @at91_write(%struct.at91_priv* %68, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %4, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %58

76:                                               ; preds = %58
  %77 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %78 = call i32 @get_mb_tx_first(%struct.at91_priv* %77)
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %89, %76
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %82 = call i32 @get_mb_tx_last(%struct.at91_priv* %81)
  %83 = icmp ule i32 %80, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @AT91_MB_MODE_TX, align 4
  %88 = call i32 @set_mb_mode_prio(%struct.at91_priv* %85, i32 %86, i32 %87, i32 0)
  br label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %4, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %79

92:                                               ; preds = %79
  %93 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %94 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  %95 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %96 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %95, i32 0, i32 2
  store i64 0, i64* %96, align 8
  %97 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %98 = call i32 @get_mb_rx_first(%struct.at91_priv* %97)
  %99 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %100 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  ret void
}

declare dso_local %struct.at91_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @at91_can_id_to_reg_mid(i32) #1

declare dso_local i32 @get_mb_rx_first(%struct.at91_priv*) #1

declare dso_local i32 @set_mb_mode(%struct.at91_priv*, i32, i32) #1

declare dso_local i32 @at91_write(%struct.at91_priv*, i32, i32) #1

declare dso_local i32 @AT91_MID(i32) #1

declare dso_local i32 @AT91_MCR(i32) #1

declare dso_local i32 @get_mb_rx_last(%struct.at91_priv*) #1

declare dso_local i32 @AT91_MAM(i32) #1

declare dso_local i32 @get_mb_tx_first(%struct.at91_priv*) #1

declare dso_local i32 @get_mb_tx_last(%struct.at91_priv*) #1

declare dso_local i32 @set_mb_mode_prio(%struct.at91_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
