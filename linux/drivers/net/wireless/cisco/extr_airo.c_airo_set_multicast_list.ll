; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_airo_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_airo_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.airo_info* }
%struct.airo_info = type { i32, i32, i32, i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@FLAG_PROMISC = common dso_local global i32 0, align 4
@JOB_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @airo_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @airo_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.airo_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 1
  %6 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  store %struct.airo_info* %6, %struct.airo_info** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %11 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = xor i32 %9, %12
  %14 = load i32, i32* @IFF_PROMISC, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %1
  %18 = load i32, i32* @FLAG_PROMISC, align 4
  %19 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %20 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %19, i32 0, i32 0
  %21 = call i32 @change_bit(i32 %18, i32* %20)
  %22 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %23 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %22, i32 0, i32 3
  %24 = call i64 @down_trylock(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  %27 = load i32, i32* @JOB_PROMISC, align 4
  %28 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %29 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %28, i32 0, i32 2
  %30 = call i32 @set_bit(i32 %27, i32* %29)
  %31 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %32 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %31, i32 0, i32 1
  %33 = call i32 @wake_up_interruptible(i32* %32)
  br label %37

34:                                               ; preds = %17
  %35 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %36 = call i32 @airo_set_promisc(%struct.airo_info* %35)
  br label %37

37:                                               ; preds = %34, %26
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IFF_ALLMULTI, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = call i32 @netdev_mc_empty(%struct.net_device* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45, %38
  br label %50

50:                                               ; preds = %49, %45
  ret void
}

declare dso_local i32 @change_bit(i32, i32*) #1

declare dso_local i64 @down_trylock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @airo_set_promisc(%struct.airo_info*) #1

declare dso_local i32 @netdev_mc_empty(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
