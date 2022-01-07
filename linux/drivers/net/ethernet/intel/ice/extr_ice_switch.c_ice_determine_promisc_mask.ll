; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_determine_promisc_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_determine_promisc_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_fltr_info = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i64 }

@ICE_FLTR_TX = common dso_local global i64 0, align 8
@ICE_PROMISC_BCAST_TX = common dso_local global i32 0, align 4
@ICE_PROMISC_BCAST_RX = common dso_local global i32 0, align 4
@ICE_PROMISC_MCAST_TX = common dso_local global i32 0, align 4
@ICE_PROMISC_MCAST_RX = common dso_local global i32 0, align 4
@ICE_PROMISC_UCAST_TX = common dso_local global i32 0, align 4
@ICE_PROMISC_UCAST_RX = common dso_local global i32 0, align 4
@ICE_PROMISC_VLAN_TX = common dso_local global i32 0, align 4
@ICE_PROMISC_VLAN_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_fltr_info*)* @ice_determine_promisc_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_determine_promisc_mask(%struct.ice_fltr_info* %0) #0 {
  %2 = alloca %struct.ice_fltr_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ice_fltr_info* %0, %struct.ice_fltr_info** %2, align 8
  %7 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %2, align 8
  %8 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %3, align 8
  %12 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %2, align 8
  %13 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %17 = load %struct.ice_fltr_info*, %struct.ice_fltr_info** %2, align 8
  %18 = getelementptr inbounds %struct.ice_fltr_info, %struct.ice_fltr_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ICE_FLTR_TX, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %1
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @is_broadcast_ether_addr(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @ICE_PROMISC_BCAST_TX, align 4
  br label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @ICE_PROMISC_BCAST_RX, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %70

38:                                               ; preds = %23
  %39 = load i32*, i32** %4, align 8
  %40 = call i64 @is_multicast_ether_addr(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @ICE_PROMISC_MCAST_TX, align 4
  br label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @ICE_PROMISC_MCAST_RX, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %69

53:                                               ; preds = %38
  %54 = load i32*, i32** %4, align 8
  %55 = call i64 @is_unicast_ether_addr(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @ICE_PROMISC_UCAST_TX, align 4
  br label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @ICE_PROMISC_UCAST_RX, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %64, %53
  br label %69

69:                                               ; preds = %68, %49
  br label %70

70:                                               ; preds = %69, %34
  %71 = load i64, i64* %3, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* @ICE_PROMISC_VLAN_TX, align 4
  br label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @ICE_PROMISC_VLAN_RX, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %80, %70
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i64 @is_broadcast_ether_addr(i32*) #1

declare dso_local i64 @is_multicast_ether_addr(i32*) #1

declare dso_local i64 @is_unicast_ether_addr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
