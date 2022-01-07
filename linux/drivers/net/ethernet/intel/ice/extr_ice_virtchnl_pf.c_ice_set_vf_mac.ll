; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_set_vf_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_set_vf_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ice_netdev_priv = type { %struct.ice_vsi* }
%struct.ice_vsi = type { %struct.ice_pf* }
%struct.ice_pf = type { i32, %struct.ice_vf* }
%struct.ice_vf = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"invalid VF id: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ICE_VF_STATE_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"VF %d in reset. Try again.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"%pM not a valid unicast address\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"MAC on VF %d set to %pM. VF driver will be reinitialized\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_set_vf_mac(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ice_netdev_priv*, align 8
  %9 = alloca %struct.ice_vsi*, align 8
  %10 = alloca %struct.ice_pf*, align 8
  %11 = alloca %struct.ice_vf*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.ice_netdev_priv* %14, %struct.ice_netdev_priv** %8, align 8
  %15 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %8, align 8
  %16 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %15, i32 0, i32 0
  %17 = load %struct.ice_vsi*, %struct.ice_vsi** %16, align 8
  store %struct.ice_vsi* %17, %struct.ice_vsi** %9, align 8
  %18 = load %struct.ice_vsi*, %struct.ice_vsi** %9, align 8
  %19 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %18, i32 0, i32 0
  %20 = load %struct.ice_pf*, %struct.ice_pf** %19, align 8
  store %struct.ice_pf* %20, %struct.ice_pf** %10, align 8
  store i32 0, i32* %12, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %23 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @netdev_err(%struct.net_device* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %82

32:                                               ; preds = %3
  %33 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %34 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %33, i32 0, i32 1
  %35 = load %struct.ice_vf*, %struct.ice_vf** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %35, i64 %37
  store %struct.ice_vf* %38, %struct.ice_vf** %11, align 8
  %39 = load i32, i32* @ICE_VF_STATE_INIT, align 4
  %40 = load %struct.ice_vf*, %struct.ice_vf** %11, align 8
  %41 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @test_bit(i32 %39, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %32
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @netdev_err(%struct.net_device* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %82

51:                                               ; preds = %32
  %52 = load i32*, i32** %7, align 8
  %53 = call i64 @is_zero_ether_addr(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32*, i32** %7, align 8
  %57 = call i64 @is_multicast_ether_addr(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55, %51
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = ptrtoint i32* %61 to i32
  %63 = call i32 @netdev_err(%struct.net_device* %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %82

66:                                               ; preds = %55
  %67 = load %struct.ice_vf*, %struct.ice_vf** %11, align 8
  %68 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @ether_addr_copy(i32 %70, i32* %71)
  %73 = load %struct.ice_vf*, %struct.ice_vf** %11, align 8
  %74 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  %75 = load %struct.net_device*, %struct.net_device** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @netdev_info(%struct.net_device* %75, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %76, i32* %77)
  %79 = load %struct.ice_vf*, %struct.ice_vf** %11, align 8
  %80 = call i32 @ice_vc_dis_vf(%struct.ice_vf* %79)
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %66, %59, %45, %26
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i64 @is_zero_ether_addr(i32*) #1

declare dso_local i64 @is_multicast_ether_addr(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i32*) #1

declare dso_local i32 @ice_vc_dis_vf(%struct.ice_vf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
