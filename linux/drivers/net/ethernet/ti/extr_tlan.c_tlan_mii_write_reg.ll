; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_mii_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_mii_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tlan_priv = type { i32 }

@TLAN_NET_SIO = common dso_local global i32 0, align 4
@TLAN_DIO_ADR = common dso_local global i32 0, align 4
@TLAN_DIO_DATA = common dso_local global i32 0, align 4
@TLAN_NET_SIO_MINTEN = common dso_local global i32 0, align 4
@TLAN_NET_SIO_MCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i32)* @tlan_mii_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlan_mii_write_reg(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.tlan_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %11, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.tlan_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.tlan_priv* %14, %struct.tlan_priv** %12, align 8
  %15 = load i32, i32* @TLAN_NET_SIO, align 4
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @TLAN_DIO_ADR, align 4
  %20 = add nsw i32 %18, %19
  %21 = call i32 @outw(i32 %15, i32 %20)
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TLAN_DIO_DATA, align 4
  %26 = add nsw i32 %24, %25
  %27 = load i32, i32* @TLAN_NET_SIO, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %9, align 4
  %29 = call i32 (...) @in_irq()
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %4
  %32 = load %struct.tlan_priv*, %struct.tlan_priv** %12, align 8
  %33 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %32, i32 0, i32 0
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  br label %36

36:                                               ; preds = %31, %4
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @tlan_mii_sync(i32 %39)
  %41 = load i32, i32* @TLAN_NET_SIO_MINTEN, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @tlan_get_bit(i32 %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load i32, i32* @TLAN_NET_SIO_MINTEN, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @tlan_clear_bit(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %36
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @tlan_mii_send_data(i32 %53, i32 1, i32 2)
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @tlan_mii_send_data(i32 %57, i32 1, i32 2)
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @tlan_mii_send_data(i32 %61, i32 %62, i32 5)
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @tlan_mii_send_data(i32 %66, i32 %67, i32 5)
  %69 = load %struct.net_device*, %struct.net_device** %5, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @tlan_mii_send_data(i32 %71, i32 2, i32 2)
  %73 = load %struct.net_device*, %struct.net_device** %5, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @tlan_mii_send_data(i32 %75, i32 %76, i32 16)
  %78 = load i32, i32* @TLAN_NET_SIO_MCLK, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @tlan_clear_bit(i32 %78, i32 %79)
  %81 = load i32, i32* @TLAN_NET_SIO_MCLK, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @tlan_set_bit(i32 %81, i32 %82)
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %50
  %87 = load i32, i32* @TLAN_NET_SIO_MINTEN, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @tlan_set_bit(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %50
  %91 = call i32 (...) @in_irq()
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %90
  %94 = load %struct.tlan_priv*, %struct.tlan_priv** %12, align 8
  %95 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %94, i32 0, i32 0
  %96 = load i64, i64* %11, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  br label %98

98:                                               ; preds = %93, %90
  ret void
}

declare dso_local %struct.tlan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @in_irq(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tlan_mii_sync(i32) #1

declare dso_local i32 @tlan_get_bit(i32, i32) #1

declare dso_local i32 @tlan_clear_bit(i32, i32) #1

declare dso_local i32 @tlan_mii_send_data(i32, i32, i32) #1

declare dso_local i32 @tlan_set_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
