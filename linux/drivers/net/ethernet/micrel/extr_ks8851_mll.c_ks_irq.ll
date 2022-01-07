; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851_mll.c_ks_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851_mll.c_ks_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ks_net = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@KS_ISR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_RXI = common dso_local global i32 0, align 4
@IRQ_LCI = common dso_local global i32 0, align 4
@IRQ_TXI = common dso_local global i32 0, align 4
@IRQ_LDI = common dso_local global i32 0, align 4
@KS_PMECR = common dso_local global i32 0, align 4
@PMECR_WKEVT_MASK = common dso_local global i32 0, align 4
@PMECR_WKEVT_LINK = common dso_local global i32 0, align 4
@IRQ_RXOI = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ks_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ks_net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.ks_net* @netdev_priv(%struct.net_device* %12)
  store %struct.ks_net* %13, %struct.ks_net** %7, align 8
  %14 = load %struct.ks_net*, %struct.ks_net** %7, align 8
  %15 = call i32 @ks_save_cmd_reg(%struct.ks_net* %14)
  %16 = load %struct.ks_net*, %struct.ks_net** %7, align 8
  %17 = load i32, i32* @KS_ISR, align 4
  %18 = call i32 @ks_rdreg16(%struct.ks_net* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.ks_net*, %struct.ks_net** %7, align 8
  %27 = call i32 @ks_restore_cmd_reg(%struct.ks_net* %26)
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %100

29:                                               ; preds = %2
  %30 = load %struct.ks_net*, %struct.ks_net** %7, align 8
  %31 = load i32, i32* @KS_ISR, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @ks_wrreg16(%struct.ks_net* %30, i32 %31, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @IRQ_RXI, align 4
  %36 = and i32 %34, %35
  %37 = call i64 @likely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load %struct.ks_net*, %struct.ks_net** %7, align 8
  %41 = load %struct.net_device*, %struct.net_device** %6, align 8
  %42 = call i32 @ks_rcv(%struct.ks_net* %40, %struct.net_device* %41)
  br label %43

43:                                               ; preds = %39, %29
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @IRQ_LCI, align 4
  %46 = and i32 %44, %45
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  %51 = load %struct.ks_net*, %struct.ks_net** %7, align 8
  %52 = call i32 @ks_update_link_status(%struct.net_device* %50, %struct.ks_net* %51)
  br label %53

53:                                               ; preds = %49, %43
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @IRQ_TXI, align 4
  %56 = and i32 %54, %55
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.net_device*, %struct.net_device** %6, align 8
  %61 = call i32 @netif_wake_queue(%struct.net_device* %60)
  br label %62

62:                                               ; preds = %59, %53
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @IRQ_LDI, align 4
  %65 = and i32 %63, %64
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %62
  %69 = load %struct.ks_net*, %struct.ks_net** %7, align 8
  %70 = load i32, i32* @KS_PMECR, align 4
  %71 = call i32 @ks_rdreg16(%struct.ks_net* %69, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* @PMECR_WKEVT_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %9, align 4
  %76 = load %struct.ks_net*, %struct.ks_net** %7, align 8
  %77 = load i32, i32* @KS_PMECR, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @PMECR_WKEVT_LINK, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @ks_wrreg16(%struct.ks_net* %76, i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %68, %62
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @IRQ_RXOI, align 4
  %85 = and i32 %83, %84
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load %struct.ks_net*, %struct.ks_net** %7, align 8
  %90 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %88, %82
  %97 = load %struct.ks_net*, %struct.ks_net** %7, align 8
  %98 = call i32 @ks_restore_cmd_reg(%struct.ks_net* %97)
  %99 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %96, %25
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.ks_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ks_save_cmd_reg(%struct.ks_net*) #1

declare dso_local i32 @ks_rdreg16(%struct.ks_net*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ks_restore_cmd_reg(%struct.ks_net*) #1

declare dso_local i32 @ks_wrreg16(%struct.ks_net*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ks_rcv(%struct.ks_net*, %struct.net_device*) #1

declare dso_local i32 @ks_update_link_status(%struct.net_device*, %struct.ks_net*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
