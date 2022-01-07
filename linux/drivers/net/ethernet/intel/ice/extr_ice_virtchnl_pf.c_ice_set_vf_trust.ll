; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_set_vf_trust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_set_vf_trust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ice_netdev_priv = type { %struct.ice_vsi* }
%struct.ice_vsi = type { %struct.ice_pf* }
%struct.ice_pf = type { i32, %struct.TYPE_2__*, %struct.ice_vf* }
%struct.TYPE_2__ = type { i32 }
%struct.ice_vf = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"invalid VF id: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ICE_VF_STATE_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"VF %d in reset. Try again.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"VF %u is now %strusted\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"un\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_set_vf_trust(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ice_netdev_priv*, align 8
  %9 = alloca %struct.ice_vsi*, align 8
  %10 = alloca %struct.ice_pf*, align 8
  %11 = alloca %struct.ice_vf*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.ice_netdev_priv* %13, %struct.ice_netdev_priv** %8, align 8
  %14 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %8, align 8
  %15 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %14, i32 0, i32 0
  %16 = load %struct.ice_vsi*, %struct.ice_vsi** %15, align 8
  store %struct.ice_vsi* %16, %struct.ice_vsi** %9, align 8
  %17 = load %struct.ice_vsi*, %struct.ice_vsi** %9, align 8
  %18 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %17, i32 0, i32 0
  %19 = load %struct.ice_pf*, %struct.ice_pf** %18, align 8
  store %struct.ice_pf* %19, %struct.ice_pf** %10, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %22 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %20, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %3
  %26 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %27 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %79

34:                                               ; preds = %3
  %35 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %36 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %35, i32 0, i32 2
  %37 = load %struct.ice_vf*, %struct.ice_vf** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %37, i64 %39
  store %struct.ice_vf* %40, %struct.ice_vf** %11, align 8
  %41 = load i32, i32* @ICE_VF_STATE_INIT, align 4
  %42 = load %struct.ice_vf*, %struct.ice_vf** %11, align 8
  %43 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @test_bit(i32 %41, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %34
  %48 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %49 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %79

56:                                               ; preds = %34
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.ice_vf*, %struct.ice_vf** %11, align 8
  %59 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %79

63:                                               ; preds = %56
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.ice_vf*, %struct.ice_vf** %11, align 8
  %66 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ice_vf*, %struct.ice_vf** %11, align 8
  %68 = call i32 @ice_vc_dis_vf(%struct.ice_vf* %67)
  %69 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %70 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %78 = call i32 @dev_info(i32* %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %73, i8* %77)
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %63, %62, %47, %25
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @ice_vc_dis_vf(%struct.ice_vf*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
