; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_init_mac_fltr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_init_mac_fltr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ice_vsi = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@ETH_ALEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NETREG_REGISTERED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"Could not add MAC filters error %d. Unregistering device\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_pf*)* @ice_init_mac_fltr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_init_mac_fltr(%struct.ice_pf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_pf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ice_vsi*, align 8
  %8 = alloca i32, align 4
  store %struct.ice_pf* %0, %struct.ice_pf** %3, align 8
  %9 = load i32, i32* @ETH_ALEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %14 = call %struct.ice_vsi* @ice_get_main_vsi(%struct.ice_pf* %13)
  store %struct.ice_vsi* %14, %struct.ice_vsi** %7, align 8
  %15 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %16 = icmp ne %struct.ice_vsi* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %71

20:                                               ; preds = %1
  %21 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %22 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %23 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @ice_vsi_cfg_mac_fltr(%struct.ice_vsi* %21, i32* %27, i32 1)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %40

32:                                               ; preds = %20
  %33 = call i32 @eth_broadcast_addr(i32* %12)
  %34 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %35 = call i32 @ice_vsi_cfg_mac_fltr(%struct.ice_vsi* %34, i32* %12, i32 1)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %40

39:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %71

40:                                               ; preds = %38, %31
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %68

43:                                               ; preds = %40
  %44 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %45 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NETREG_REGISTERED, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %43
  %52 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %53 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %59 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = call i32 @unregister_netdev(%struct.TYPE_9__* %60)
  %62 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %63 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = call i32 @free_netdev(%struct.TYPE_9__* %64)
  %66 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %67 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %66, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %67, align 8
  br label %68

68:                                               ; preds = %51, %43, %40
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %71

71:                                               ; preds = %68, %39, %17
  %72 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ice_vsi* @ice_get_main_vsi(%struct.ice_pf*) #2

declare dso_local i32 @ice_vsi_cfg_mac_fltr(%struct.ice_vsi*, i32*, i32) #2

declare dso_local i32 @eth_broadcast_addr(i32*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @unregister_netdev(%struct.TYPE_9__*) #2

declare dso_local i32 @free_netdev(%struct.TYPE_9__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
