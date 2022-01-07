; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnad = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@BNAD_CF_PROMISC = common dso_local global i32 0, align 4
@BNAD_CF_DEFAULT = common dso_local global i32 0, align 4
@BNAD_CF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@BNAD_RXMODE_PROMISC_DEFAULT = common dso_local global i32 0, align 4
@BNA_RXMODE_ALLMULTI = common dso_local global i32 0, align 4
@BNA_RXMODE_DEFAULT = common dso_local global i32 0, align 4
@BNA_RXMODE_PROMISC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnad_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.bnad* @netdev_priv(%struct.net_device* %7)
  store %struct.bnad* %8, %struct.bnad** %3, align 8
  %9 = load %struct.bnad*, %struct.bnad** %3, align 8
  %10 = getelementptr inbounds %struct.bnad, %struct.bnad* %9, i32 0, i32 1
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.bnad*, %struct.bnad** %3, align 8
  %14 = getelementptr inbounds %struct.bnad, %struct.bnad* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.bnad*, %struct.bnad** %3, align 8
  %22 = getelementptr inbounds %struct.bnad, %struct.bnad* %21, i32 0, i32 1
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  br label %97

25:                                               ; preds = %1
  %26 = load i32, i32* @BNAD_CF_PROMISC, align 4
  %27 = load i32, i32* @BNAD_CF_DEFAULT, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @BNAD_CF_ALLMULTI, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load %struct.bnad*, %struct.bnad** %3, align 8
  %33 = getelementptr inbounds %struct.bnad, %struct.bnad* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  store i32 0, i32* %4, align 4
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IFF_PROMISC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %25
  %43 = load i32, i32* @BNAD_RXMODE_PROMISC_DEFAULT, align 4
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* @BNAD_CF_PROMISC, align 4
  %47 = load %struct.bnad*, %struct.bnad** %3, align 8
  %48 = getelementptr inbounds %struct.bnad, %struct.bnad* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %78

51:                                               ; preds = %25
  %52 = load %struct.bnad*, %struct.bnad** %3, align 8
  %53 = call i32 @bnad_set_rx_mcast_fltr(%struct.bnad* %52)
  %54 = load %struct.bnad*, %struct.bnad** %3, align 8
  %55 = getelementptr inbounds %struct.bnad, %struct.bnad* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @BNAD_CF_ALLMULTI, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load i32, i32* @BNA_RXMODE_ALLMULTI, align 4
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %51
  %65 = load %struct.bnad*, %struct.bnad** %3, align 8
  %66 = call i32 @bnad_set_rx_ucast_fltr(%struct.bnad* %65)
  %67 = load %struct.bnad*, %struct.bnad** %3, align 8
  %68 = getelementptr inbounds %struct.bnad, %struct.bnad* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @BNAD_CF_DEFAULT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = load i32, i32* @BNA_RXMODE_DEFAULT, align 4
  %75 = load i32, i32* %4, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %73, %64
  br label %78

78:                                               ; preds = %77, %42
  %79 = load i32, i32* @BNA_RXMODE_PROMISC, align 4
  %80 = load i32, i32* @BNA_RXMODE_DEFAULT, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @BNA_RXMODE_ALLMULTI, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %5, align 4
  %84 = load %struct.bnad*, %struct.bnad** %3, align 8
  %85 = getelementptr inbounds %struct.bnad, %struct.bnad* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @bna_rx_mode_set(i32* %89, i32 %90, i32 %91)
  %93 = load %struct.bnad*, %struct.bnad** %3, align 8
  %94 = getelementptr inbounds %struct.bnad, %struct.bnad* %93, i32 0, i32 1
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  br label %97

97:                                               ; preds = %78, %20
  ret void
}

declare dso_local %struct.bnad* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bnad_set_rx_mcast_fltr(%struct.bnad*) #1

declare dso_local i32 @bnad_set_rx_ucast_fltr(%struct.bnad*) #1

declare dso_local i32 @bna_rx_mode_set(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
