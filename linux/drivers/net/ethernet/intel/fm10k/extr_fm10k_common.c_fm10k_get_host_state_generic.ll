; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_common.c_fm10k_get_host_state_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_common.c_fm10k_get_host_state_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { %struct.fm10k_mac_info, %struct.fm10k_mbx_info }
%struct.fm10k_mac_info = type { i32, i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 (%struct.fm10k_hw.0*)* }
%struct.fm10k_hw.0 = type opaque
%struct.fm10k_mbx_info = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.fm10k_hw.1*, %struct.fm10k_mbx_info.2*)* }
%struct.fm10k_hw.1 = type opaque
%struct.fm10k_mbx_info.2 = type opaque

@FM10K_TXDCTL_ENABLE = common dso_local global i32 0, align 4
@FM10K_ERR_RESET_REQUESTED = common dso_local global i32 0, align 4
@FM10K_STATE_OPEN = common dso_local global i64 0, align 8
@FM10K_DGLORTMAP_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm10k_get_host_state_generic(%struct.fm10k_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.fm10k_hw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.fm10k_mbx_info*, align 8
  %6 = alloca %struct.fm10k_mac_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %10 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %9, i32 0, i32 1
  store %struct.fm10k_mbx_info* %10, %struct.fm10k_mbx_info** %5, align 8
  %11 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %12 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %11, i32 0, i32 0
  store %struct.fm10k_mac_info* %12, %struct.fm10k_mac_info** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %14 = call i32 @FM10K_TXDCTL(i32 0)
  %15 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %17 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.fm10k_hw.1*, %struct.fm10k_mbx_info.2*)*, i32 (%struct.fm10k_hw.1*, %struct.fm10k_mbx_info.2*)** %18, align 8
  %20 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %21 = bitcast %struct.fm10k_hw* %20 to %struct.fm10k_hw.1*
  %22 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %23 = bitcast %struct.fm10k_mbx_info* %22 to %struct.fm10k_mbx_info.2*
  %24 = call i32 %19(%struct.fm10k_hw.1* %21, %struct.fm10k_mbx_info.2* %23)
  %25 = load i32, i32* %8, align 4
  %26 = xor i32 %25, -1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @FM10K_TXDCTL_ENABLE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28, %2
  %34 = load %struct.fm10k_mac_info*, %struct.fm10k_mac_info** %6, align 8
  %35 = getelementptr inbounds %struct.fm10k_mac_info, %struct.fm10k_mac_info* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %28
  %37 = load %struct.fm10k_mac_info*, %struct.fm10k_mac_info** %6, align 8
  %38 = getelementptr inbounds %struct.fm10k_mac_info, %struct.fm10k_mac_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = xor i32 %42, -1
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %36
  br label %96

46:                                               ; preds = %41
  %47 = load %struct.fm10k_mac_info*, %struct.fm10k_mac_info** %6, align 8
  %48 = getelementptr inbounds %struct.fm10k_mac_info, %struct.fm10k_mac_info* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @FM10K_TXDCTL_ENABLE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @FM10K_ERR_RESET_REQUESTED, align 4
  store i32 %57, i32* %7, align 4
  br label %96

58:                                               ; preds = %51, %46
  %59 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %60 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @FM10K_ERR_RESET_REQUESTED, align 4
  store i32 %64, i32* %7, align 4
  br label %96

65:                                               ; preds = %58
  %66 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %67 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @FM10K_STATE_OPEN, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %96

72:                                               ; preds = %65
  %73 = load %struct.fm10k_mac_info*, %struct.fm10k_mac_info** %6, align 8
  %74 = getelementptr inbounds %struct.fm10k_mac_info, %struct.fm10k_mac_info* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @FM10K_DGLORTMAP_NONE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %72
  %79 = load %struct.fm10k_mac_info*, %struct.fm10k_mac_info** %6, align 8
  %80 = getelementptr inbounds %struct.fm10k_mac_info, %struct.fm10k_mac_info* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32 (%struct.fm10k_hw.0*)*, i32 (%struct.fm10k_hw.0*)** %81, align 8
  %83 = icmp ne i32 (%struct.fm10k_hw.0*)* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %78
  %85 = load %struct.fm10k_mac_info*, %struct.fm10k_mac_info** %6, align 8
  %86 = getelementptr inbounds %struct.fm10k_mac_info, %struct.fm10k_mac_info* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32 (%struct.fm10k_hw.0*)*, i32 (%struct.fm10k_hw.0*)** %87, align 8
  %89 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %90 = bitcast %struct.fm10k_hw* %89 to %struct.fm10k_hw.0*
  %91 = call i32 %88(%struct.fm10k_hw.0* %90)
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %84, %78
  br label %96

93:                                               ; preds = %72
  %94 = load %struct.fm10k_mac_info*, %struct.fm10k_mac_info** %6, align 8
  %95 = getelementptr inbounds %struct.fm10k_mac_info, %struct.fm10k_mac_info* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  br label %96

96:                                               ; preds = %93, %92, %71, %63, %56, %45
  %97 = load %struct.fm10k_mac_info*, %struct.fm10k_mac_info** %6, align 8
  %98 = getelementptr inbounds %struct.fm10k_mac_info, %struct.fm10k_mac_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = load i32*, i32** %4, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i32 @fm10k_read_reg(%struct.fm10k_hw*, i32) #1

declare dso_local i32 @FM10K_TXDCTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
