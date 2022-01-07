; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_winbond-840.c_alloc_ringdesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_winbond-840.c_alloc_ringdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_private = type { i32, i32, i32, i32 }

@PKT_BUF_SZ = common dso_local global i32 0, align 4
@RX_RING_SIZE = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @alloc_ringdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_ringdesc(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.netdev_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %5)
  store %struct.netdev_private* %6, %struct.netdev_private** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sle i32 %9, 1500
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @PKT_BUF_SZ, align 4
  br label %18

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 32
  br label %18

18:                                               ; preds = %13, %11
  %19 = phi i32 [ %12, %11 ], [ %17, %13 ]
  %20 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %21 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %23 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @RX_RING_SIZE, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = load i32, i32* @TX_RING_SIZE, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 4, %29
  %31 = add i64 %27, %30
  %32 = trunc i64 %31 to i32
  %33 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %34 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %33, i32 0, i32 2
  %35 = call i32 @pci_alloc_consistent(i32 %24, i32 %32, i32* %34)
  %36 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %37 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.netdev_private*, %struct.netdev_private** %4, align 8
  %39 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %18
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %48

45:                                               ; preds = %18
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = call i32 @init_rxtx_rings(%struct.net_device* %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @init_rxtx_rings(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
