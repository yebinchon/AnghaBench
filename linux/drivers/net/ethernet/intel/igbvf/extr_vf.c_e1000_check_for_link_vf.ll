; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_vf.c_e1000_check_for_link_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_vf.c_e1000_check_for_link_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mac_info, %struct.e1000_mbx_info }
%struct.e1000_mac_info = type { i32 }
%struct.e1000_mbx_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32*, i32)*, i32 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_SUCCESS = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@E1000_VT_MSGTYPE_CTS = common dso_local global i32 0, align 4
@E1000_VT_MSGTYPE_NACK = common dso_local global i32 0, align 4
@E1000_ERR_MAC_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_check_for_link_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_check_for_link_vf(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mbx_info*, align 8
  %4 = alloca %struct.e1000_mac_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 1
  store %struct.e1000_mbx_info* %8, %struct.e1000_mbx_info** %3, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  store %struct.e1000_mac_info* %10, %struct.e1000_mac_info** %4, align 8
  %11 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %14, align 8
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %17 = bitcast %struct.e1000_hw* %16 to %struct.e1000_hw.1*
  %18 = call i32 %15(%struct.e1000_hw.1* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %22 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %27 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %30 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %76

34:                                               ; preds = %28
  %35 = load i32, i32* @STATUS, align 4
  %36 = call i32 @er32(i32 %35)
  %37 = load i32, i32* @E1000_STATUS_LU, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %76

41:                                               ; preds = %34
  %42 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %43 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64 (%struct.e1000_hw.0*, i32*, i32)*, i64 (%struct.e1000_hw.0*, i32*, i32)** %44, align 8
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %47 = bitcast %struct.e1000_hw* %46 to %struct.e1000_hw.0*
  %48 = call i64 %45(%struct.e1000_hw.0* %47, i32* %6, i32 1)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %76

51:                                               ; preds = %41
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @E1000_VT_MSGTYPE_CTS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @E1000_VT_MSGTYPE_NACK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @E1000_ERR_MAC_INIT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %61, %56
  br label %76

65:                                               ; preds = %51
  %66 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %67 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @E1000_ERR_MAC_INIT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %76

73:                                               ; preds = %65
  %74 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %75 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %74, i32 0, i32 0
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %70, %64, %50, %40, %33
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @er32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
