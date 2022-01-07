; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_vf.c_ixgbevf_check_mac_link_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_vf.c_ixgbevf_check_mac_link_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_mac_info, %struct.ixgbe_mbx_info }
%struct.ixgbe_mac_info = type { i32, i64 }
%struct.ixgbe_mbx_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.ixgbe_hw.0*, i32*, i32)*, i32 (%struct.ixgbe_hw.1*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_VFLINKS = common dso_local global i32 0, align 4
@IXGBE_LINKS_UP = common dso_local global i32 0, align 4
@ixgbe_mac_82599_vf = common dso_local global i64 0, align 8
@IXGBE_LINKS_SPEED_82599 = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_100_FULL = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_CTS = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_NACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32*, i32*, i32)* @ixgbevf_check_mac_link_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_check_mac_link_vf(%struct.ixgbe_hw* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ixgbe_mbx_info*, align 8
  %10 = alloca %struct.ixgbe_mac_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 1
  store %struct.ixgbe_mbx_info* %16, %struct.ixgbe_mbx_info** %9, align 8
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 0
  store %struct.ixgbe_mac_info* %18, %struct.ixgbe_mac_info** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %9, align 8
  %20 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %21, align 8
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %24 = bitcast %struct.ixgbe_hw* %23 to %struct.ixgbe_hw.1*
  %25 = call i32 %22(%struct.ixgbe_hw.1* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %9, align 8
  %29 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27, %4
  %33 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %34 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %37 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %119

41:                                               ; preds = %35
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %43 = load i32, i32* @IXGBE_VFLINKS, align 4
  %44 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @IXGBE_LINKS_UP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  br label %119

50:                                               ; preds = %41
  %51 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %52 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ixgbe_mac_82599_vf, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %50
  store i32 0, i32* %14, align 4
  br label %57

57:                                               ; preds = %71, %56
  %58 = load i32, i32* %14, align 4
  %59 = icmp slt i32 %58, 5
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  %61 = call i32 @udelay(i32 100)
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %63 = load i32, i32* @IXGBE_VFLINKS, align 4
  %64 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %62, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @IXGBE_LINKS_UP, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %60
  br label %119

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %14, align 4
  br label %57

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74, %50
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @IXGBE_LINKS_SPEED_82599, align 4
  %78 = and i32 %76, %77
  switch i32 %78, label %88 [
    i32 129, label %79
    i32 128, label %82
    i32 130, label %85
  ]

79:                                               ; preds = %75
  %80 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %81 = load i32*, i32** %6, align 8
  store i32 %80, i32* %81, align 4
  br label %88

82:                                               ; preds = %75
  %83 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %84 = load i32*, i32** %6, align 8
  store i32 %83, i32* %84, align 4
  br label %88

85:                                               ; preds = %75
  %86 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %87 = load i32*, i32** %6, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %75, %85, %82, %79
  %89 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %9, align 8
  %90 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64 (%struct.ixgbe_hw.0*, i32*, i32)*, i64 (%struct.ixgbe_hw.0*, i32*, i32)** %91, align 8
  %93 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %94 = bitcast %struct.ixgbe_hw* %93 to %struct.ixgbe_hw.0*
  %95 = call i64 %92(%struct.ixgbe_hw.0* %94, i32* %13, i32 1)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %119

98:                                               ; preds = %88
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* @IXGBE_VT_MSGTYPE_CTS, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* @IXGBE_VT_MSGTYPE_NACK, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  store i32 -1, i32* %11, align 4
  br label %109

109:                                              ; preds = %108, %103
  br label %119

110:                                              ; preds = %98
  %111 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %9, align 8
  %112 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %110
  store i32 -1, i32* %11, align 4
  br label %119

116:                                              ; preds = %110
  %117 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %118 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  br label %119

119:                                              ; preds = %116, %115, %109, %97, %69, %49, %40
  %120 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %10, align 8
  %121 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = load i32*, i32** %7, align 8
  store i32 %125, i32* %126, align 4
  %127 = load i32, i32* %11, align 4
  ret i32 %127
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
