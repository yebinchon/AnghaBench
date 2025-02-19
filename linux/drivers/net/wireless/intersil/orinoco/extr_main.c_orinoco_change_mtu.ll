; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_main.c_orinoco_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_main.c_orinoco_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.orinoco_private = type { i64 }

@ENCAPS_OVERHEAD = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @orinoco_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.orinoco_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.orinoco_private* @ndev_priv(%struct.net_device* %7)
  store %struct.orinoco_private* %8, %struct.orinoco_private** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = load i64, i64* @ENCAPS_OVERHEAD, align 8
  %12 = add nsw i64 %10, %11
  %13 = add i64 %12, 4
  %14 = load %struct.orinoco_private*, %struct.orinoco_private** %6, align 8
  %15 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ETH_HLEN, align 8
  %18 = sub nsw i64 %16, %17
  %19 = icmp ugt i64 %13, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %27

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.orinoco_private* @ndev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
