; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_vf.c_ixgbevf_reset_hw_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_vf.c_ixgbevf_reset_hw_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, i32, %struct.ixgbe_mbx_info }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_mbx_info = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.1*, i32*, i32)*, i32 (%struct.ixgbe_hw.2*, i32*, i32)*, i32 (%struct.ixgbe_hw.3*)* }
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque

@IXGBE_VF_INIT_TIMEOUT = common dso_local global i32 0, align 4
@IXGBE_ERR_INVALID_MAC_ADDR = common dso_local global i64 0, align 8
@IXGBE_VF_PERMADDR_MSG_LEN = common dso_local global i32 0, align 4
@ixgbe_mbox_api_10 = common dso_local global i32 0, align 4
@IXGBE_VFCTRL = common dso_local global i32 0, align 4
@IXGBE_CTRL_RST = common dso_local global i32 0, align 4
@IXGBE_ERR_RESET_FAILED = common dso_local global i64 0, align 8
@IXGBE_VF_MBX_INIT_TIMEOUT = common dso_local global i32 0, align 4
@IXGBE_VF_RESET = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_ACK = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_NACK = common dso_local global i32 0, align 4
@IXGBE_VF_MC_TYPE_WORD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbevf_reset_hw_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbevf_reset_hw_vf(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.ixgbe_mbx_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %11, i32 0, i32 2
  store %struct.ixgbe_mbx_info* %12, %struct.ixgbe_mbx_info** %4, align 8
  %13 = load i32, i32* @IXGBE_VF_INIT_TIMEOUT, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i64, i64* @IXGBE_ERR_INVALID_MAC_ADDR, align 8
  store i64 %14, i64* %6, align 8
  %15 = load i32, i32* @IXGBE_VF_PERMADDR_MSG_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32* %19, i32** %9, align 8
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %21 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %23, align 8
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %26 = bitcast %struct.ixgbe_hw* %25 to %struct.ixgbe_hw.0*
  %27 = call i32 %24(%struct.ixgbe_hw.0* %26)
  %28 = load i32, i32* @ixgbe_mbox_api_10, align 4
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %32 = load i32, i32* @IXGBE_VFCTRL, align 4
  %33 = load i32, i32* @IXGBE_CTRL_RST, align 4
  %34 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %31, i32 %32, i32 %33)
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %36 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %35)
  br label %37

37:                                               ; preds = %51, %1
  %38 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %4, align 8
  %39 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32 (%struct.ixgbe_hw.3*)*, i32 (%struct.ixgbe_hw.3*)** %40, align 8
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %43 = bitcast %struct.ixgbe_hw* %42 to %struct.ixgbe_hw.3*
  %44 = call i32 %41(%struct.ixgbe_hw.3* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %46, %37
  %50 = phi i1 [ false, %37 ], [ %48, %46 ]
  br i1 %50, label %51, label %55

51:                                               ; preds = %49
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %5, align 4
  %54 = call i32 @udelay(i32 5)
  br label %37

55:                                               ; preds = %49
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* @IXGBE_ERR_RESET_FAILED, align 8
  store i64 %59, i64* %2, align 8
  store i32 1, i32* %10, align 4
  br label %123

60:                                               ; preds = %55
  %61 = load i32, i32* @IXGBE_VF_MBX_INIT_TIMEOUT, align 4
  %62 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %4, align 8
  %63 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @IXGBE_VF_RESET, align 4
  %65 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %64, i32* %65, align 16
  %66 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %4, align 8
  %67 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32 (%struct.ixgbe_hw.2*, i32*, i32)*, i32 (%struct.ixgbe_hw.2*, i32*, i32)** %68, align 8
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %71 = bitcast %struct.ixgbe_hw* %70 to %struct.ixgbe_hw.2*
  %72 = call i32 %69(%struct.ixgbe_hw.2* %71, i32* %18, i32 1)
  %73 = call i32 @mdelay(i32 10)
  %74 = load %struct.ixgbe_mbx_info*, %struct.ixgbe_mbx_info** %4, align 8
  %75 = getelementptr inbounds %struct.ixgbe_mbx_info, %struct.ixgbe_mbx_info* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64 (%struct.ixgbe_hw.1*, i32*, i32)*, i64 (%struct.ixgbe_hw.1*, i32*, i32)** %76, align 8
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %79 = bitcast %struct.ixgbe_hw* %78 to %struct.ixgbe_hw.1*
  %80 = load i32, i32* @IXGBE_VF_PERMADDR_MSG_LEN, align 4
  %81 = call i64 %77(%struct.ixgbe_hw.1* %79, i32* %18, i32 %80)
  store i64 %81, i64* %6, align 8
  %82 = load i64, i64* %6, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %60
  %85 = load i64, i64* %6, align 8
  store i64 %85, i64* %2, align 8
  store i32 1, i32* %10, align 4
  br label %123

86:                                               ; preds = %60
  %87 = getelementptr inbounds i32, i32* %18, i64 0
  %88 = load i32, i32* %87, align 16
  %89 = load i32, i32* @IXGBE_VF_RESET, align 4
  %90 = load i32, i32* @IXGBE_VT_MSGTYPE_ACK, align 4
  %91 = or i32 %89, %90
  %92 = icmp ne i32 %88, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %86
  %94 = getelementptr inbounds i32, i32* %18, i64 0
  %95 = load i32, i32* %94, align 16
  %96 = load i32, i32* @IXGBE_VF_RESET, align 4
  %97 = load i32, i32* @IXGBE_VT_MSGTYPE_NACK, align 4
  %98 = or i32 %96, %97
  %99 = icmp ne i32 %95, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i64, i64* @IXGBE_ERR_INVALID_MAC_ADDR, align 8
  store i64 %101, i64* %2, align 8
  store i32 1, i32* %10, align 4
  br label %123

102:                                              ; preds = %93, %86
  %103 = getelementptr inbounds i32, i32* %18, i64 0
  %104 = load i32, i32* %103, align 16
  %105 = load i32, i32* @IXGBE_VF_RESET, align 4
  %106 = load i32, i32* @IXGBE_VT_MSGTYPE_ACK, align 4
  %107 = or i32 %105, %106
  %108 = icmp eq i32 %104, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %102
  %110 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %111 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %9, align 8
  %115 = call i32 @ether_addr_copy(i32 %113, i32* %114)
  br label %116

116:                                              ; preds = %109, %102
  %117 = load i64, i64* @IXGBE_VF_MC_TYPE_WORD, align 8
  %118 = getelementptr inbounds i32, i32* %18, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %121 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  store i64 0, i64* %2, align 8
  store i32 1, i32* %10, align 4
  br label %123

123:                                              ; preds = %116, %100, %84, %58
  %124 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i64, i64* %2, align 8
  ret i64 %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #2

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @mdelay(i32) #2

declare dso_local i32 @ether_addr_copy(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
