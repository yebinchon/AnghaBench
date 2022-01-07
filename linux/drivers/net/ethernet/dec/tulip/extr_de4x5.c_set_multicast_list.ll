; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.de4x5_private = type { i64, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@OPEN = common dso_local global i64 0, align 8
@IFF_PROMISC = common dso_local global i32 0, align 4
@DE4X5_OMR = common dso_local global i32 0, align 4
@OMR_PR = common dso_local global i32 0, align 4
@TD_IC = common dso_local global i32 0, align 4
@PERFECT_F = common dso_local global i32 0, align 4
@TD_SET = common dso_local global i32 0, align 4
@SETUP_FRAME_LEN = common dso_local global i32 0, align 4
@POLL_DEMAND = common dso_local global i32 0, align 4
@DE4X5_TPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.de4x5_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %6)
  store %struct.de4x5_private* %7, %struct.de4x5_private** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %12 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @OPEN, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %63

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IFF_PROMISC, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load i32, i32* @DE4X5_OMR, align 4
  %25 = call i32 @inl(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @OMR_PR, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @DE4X5_OMR, align 4
  %31 = call i32 @outl(i32 %29, i32 %30)
  br label %62

32:                                               ; preds = %16
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 @SetMulticastFilter(%struct.net_device* %33)
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %37 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @TD_IC, align 4
  %40 = load i32, i32* @PERFECT_F, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @TD_SET, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @SETUP_FRAME_LEN, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @load_packet(%struct.net_device* %35, i32 %38, i32 %45, %struct.sk_buff* inttoptr (i64 1 to %struct.sk_buff*))
  %47 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %48 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  %51 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %52 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = srem i32 %50, %53
  %55 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %56 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @POLL_DEMAND, align 4
  %58 = load i32, i32* @DE4X5_TPD, align 4
  %59 = call i32 @outl(i32 %57, i32 %58)
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = call i32 @netif_trans_update(%struct.net_device* %60)
  br label %62

62:                                               ; preds = %32, %23
  br label %63

63:                                               ; preds = %62, %1
  ret void
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @SetMulticastFilter(%struct.net_device*) #1

declare dso_local i32 @load_packet(%struct.net_device*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
