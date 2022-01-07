; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_etop.c_ltq_etop_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_lantiq_etop.c_ltq_etop_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ltq_etop_priv = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@ETOP_FTCU = common dso_local global i32 0, align 4
@LTQ_ETOP_ENETS0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ltq_etop_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ltq_etop_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ltq_etop_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ltq_etop_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.ltq_etop_priv* %6, %struct.ltq_etop_priv** %3, align 8
  %7 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %7, i32 0, i32 0
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IFF_PROMISC, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %1
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IFF_ALLMULTI, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17, %1
  %25 = load i32, i32* @ETOP_FTCU, align 4
  %26 = load i32, i32* @LTQ_ETOP_ENETS0, align 4
  %27 = call i32 @ltq_etop_w32_mask(i32 %25, i32 0, i32 %26)
  br label %32

28:                                               ; preds = %17
  %29 = load i32, i32* @ETOP_FTCU, align 4
  %30 = load i32, i32* @LTQ_ETOP_ENETS0, align 4
  %31 = call i32 @ltq_etop_w32_mask(i32 0, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.ltq_etop_priv*, %struct.ltq_etop_priv** %3, align 8
  %34 = getelementptr inbounds %struct.ltq_etop_priv, %struct.ltq_etop_priv* %33, i32 0, i32 0
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  ret void
}

declare dso_local %struct.ltq_etop_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ltq_etop_w32_mask(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
