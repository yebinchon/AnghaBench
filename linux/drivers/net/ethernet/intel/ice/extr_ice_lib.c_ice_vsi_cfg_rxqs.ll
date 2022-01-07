; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_cfg_rxqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_cfg_rxqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i64, i64, i64, %struct.TYPE_6__*, i32*, i8*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@ICE_VSI_VF = common dso_local global i64 0, align 8
@ETH_DATA_LEN = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@VLAN_HLEN = common dso_local global i64 0, align 8
@ICE_RXBUF_2048 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"ice_setup_rx_ctx failed for RxQ %d, err %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_vsi_cfg_rxqs(%struct.ice_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_vsi*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %3, align 8
  %6 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %7 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ICE_VSI_VF, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %48

12:                                               ; preds = %1
  %13 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %14 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %13, i32 0, i32 6
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %12
  %18 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %19 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %18, i32 0, i32 6
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ETH_DATA_LEN, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %17
  %26 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %27 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %26, i32 0, i32 6
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ETH_HLEN, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i64, i64* @ETH_FCS_LEN, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i64, i64* @VLAN_HLEN, align 8
  %36 = add nsw i64 %34, %35
  %37 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %38 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  br label %44

39:                                               ; preds = %17, %12
  %40 = load i8*, i8** @ICE_RXBUF_2048, align 8
  %41 = ptrtoint i8* %40 to i64
  %42 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %43 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %39, %25
  %45 = load i8*, i8** @ICE_RXBUF_2048, align 8
  %46 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %47 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %46, i32 0, i32 5
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %44, %11
  store i64 0, i64* %4, align 8
  br label %49

49:                                               ; preds = %77, %48
  %50 = load i64, i64* %4, align 8
  %51 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %52 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %80

55:                                               ; preds = %49
  %56 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %57 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %4, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ice_setup_rx_ctx(i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %55
  %66 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %67 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %66, i32 0, i32 3
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %72, i32 %73)
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %81

76:                                               ; preds = %55
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %4, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %4, align 8
  br label %49

80:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %65
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @ice_setup_rx_ctx(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
