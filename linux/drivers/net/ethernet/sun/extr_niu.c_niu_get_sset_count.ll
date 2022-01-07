; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.niu = type { i32, i32, i32 }

@ETH_SS_STATS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NIU_FLAGS_XMAC = common dso_local global i32 0, align 4
@NUM_XMAC_STAT_KEYS = common dso_local global i32 0, align 4
@NUM_BMAC_STAT_KEYS = common dso_local global i32 0, align 4
@NUM_RXCHAN_STAT_KEYS = common dso_local global i32 0, align 4
@NUM_TXCHAN_STAT_KEYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @niu_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_get_sset_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.niu*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.niu* @netdev_priv(%struct.net_device* %7)
  store %struct.niu* %8, %struct.niu** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @ETH_SS_STATS, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %40

15:                                               ; preds = %2
  %16 = load %struct.niu*, %struct.niu** %6, align 8
  %17 = getelementptr inbounds %struct.niu, %struct.niu* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NIU_FLAGS_XMAC, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @NUM_XMAC_STAT_KEYS, align 4
  br label %26

24:                                               ; preds = %15
  %25 = load i32, i32* @NUM_BMAC_STAT_KEYS, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = load %struct.niu*, %struct.niu** %6, align 8
  %29 = getelementptr inbounds %struct.niu, %struct.niu* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @NUM_RXCHAN_STAT_KEYS, align 4
  %32 = mul nsw i32 %30, %31
  %33 = add nsw i32 %27, %32
  %34 = load %struct.niu*, %struct.niu** %6, align 8
  %35 = getelementptr inbounds %struct.niu, %struct.niu* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @NUM_TXCHAN_STAT_KEYS, align 4
  %38 = mul nsw i32 %36, %37
  %39 = add nsw i32 %33, %38
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %26, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.niu* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
