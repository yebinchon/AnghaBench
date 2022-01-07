; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c509.c_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c509.c_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.el3_private = type { i32 }

@el3_debug = common dso_local global i32 0, align 4
@set_multicast_list.old = internal global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s: Setting Rx mode to %d addresses.\0A\00", align 1
@IFF_PROMISC = common dso_local global i32 0, align 4
@SetRxFilter = common dso_local global i32 0, align 4
@RxStation = common dso_local global i32 0, align 4
@RxMulticast = common dso_local global i32 0, align 4
@RxBroadcast = common dso_local global i32 0, align 4
@RxProm = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i64 0, align 8
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.el3_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.el3_private* @netdev_priv(%struct.net_device* %7)
  store %struct.el3_private* %8, %struct.el3_private** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @netdev_mc_count(%struct.net_device* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @el3_debug, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load i32, i32* @set_multicast_list.old, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* @set_multicast_list.old, align 4
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %20, %16
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.el3_private*, %struct.el3_private** %4, align 8
  %30 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %29, i32 0, i32 0
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IFF_PROMISC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %28
  %40 = load i32, i32* @SetRxFilter, align 4
  %41 = load i32, i32* @RxStation, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @RxMulticast, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @RxBroadcast, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @RxProm, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* @EL3_CMD, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @outw(i32 %48, i64 %52)
  br label %89

54:                                               ; preds = %28
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IFF_ALLMULTI, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %57, %54
  %65 = load i32, i32* @SetRxFilter, align 4
  %66 = load i32, i32* @RxStation, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @RxMulticast, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @RxBroadcast, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* @EL3_CMD, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @outw(i32 %71, i64 %75)
  br label %88

77:                                               ; preds = %57
  %78 = load i32, i32* @SetRxFilter, align 4
  %79 = load i32, i32* @RxStation, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @RxBroadcast, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* @EL3_CMD, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @outw(i32 %82, i64 %86)
  br label %88

88:                                               ; preds = %77, %64
  br label %89

89:                                               ; preds = %88, %39
  %90 = load %struct.el3_private*, %struct.el3_private** %4, align 8
  %91 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %90, i32 0, i32 0
  %92 = load i64, i64* %3, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  ret void
}

declare dso_local %struct.el3_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_mc_count(%struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
