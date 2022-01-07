; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_vf.c_ixgbevf_get_reta_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_vf.c_ixgbevf_get_reta_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32*, i32)*, i32 (%struct.ixgbe_hw.1*, i32*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_4__ = type { i32 }

@IXGBE_VFMAILBOX_SIZE = common dso_local global i32 0, align 4
@IXGBEVF_82599_RETA_SIZE = common dso_local global i32 0, align 4
@ixgbe_mac_X550_vf = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IXGBE_VF_GET_RETA = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_CTS = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_NACK = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_ACK = common dso_local global i32 0, align 4
@IXGBE_ERR_MBX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbevf_get_reta_locked(%struct.ixgbe_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* @IXGBE_VFMAILBOX_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32* %21, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %22 = load i32, i32* @IXGBEVF_82599_RETA_SIZE, align 4
  %23 = sdiv i32 %22, 16
  store i32 %23, i32* %15, align 4
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %25 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %36 [
    i32 128, label %27
    i32 129, label %27
    i32 130, label %27
  ]

27:                                               ; preds = %3, %3, %3
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %29 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ixgbe_mac_X550_vf, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %39

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %3, %35
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %132

39:                                               ; preds = %34
  %40 = load i32, i32* @IXGBE_VF_GET_RETA, align 4
  %41 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %40, i32* %41, align 16
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %43 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32 (%struct.ixgbe_hw.0*, i32*, i32)*, i32 (%struct.ixgbe_hw.0*, i32*, i32)** %45, align 8
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %48 = bitcast %struct.ixgbe_hw* %47 to %struct.ixgbe_hw.0*
  %49 = call i32 %46(%struct.ixgbe_hw.0* %48, i32* %20, i32 1)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %39
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %132

54:                                               ; preds = %39
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %56 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32 (%struct.ixgbe_hw.1*, i32*, i32)*, i32 (%struct.ixgbe_hw.1*, i32*, i32)** %58, align 8
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %61 = bitcast %struct.ixgbe_hw* %60 to %struct.ixgbe_hw.1*
  %62 = load i32, i32* %15, align 4
  %63 = add nsw i32 %62, 1
  %64 = call i32 %59(%struct.ixgbe_hw.1* %61, i32* %20, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %132

69:                                               ; preds = %54
  %70 = load i32, i32* @IXGBE_VT_MSGTYPE_CTS, align 4
  %71 = xor i32 %70, -1
  %72 = getelementptr inbounds i32, i32* %20, i64 0
  %73 = load i32, i32* %72, align 16
  %74 = and i32 %73, %71
  store i32 %74, i32* %72, align 16
  %75 = getelementptr inbounds i32, i32* %20, i64 0
  %76 = load i32, i32* %75, align 16
  %77 = load i32, i32* @IXGBE_VF_GET_RETA, align 4
  %78 = load i32, i32* @IXGBE_VT_MSGTYPE_NACK, align 4
  %79 = or i32 %77, %78
  %80 = icmp eq i32 %76, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %69
  %82 = load i32, i32* @EPERM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %132

84:                                               ; preds = %69
  %85 = getelementptr inbounds i32, i32* %20, i64 0
  %86 = load i32, i32* %85, align 16
  %87 = load i32, i32* @IXGBE_VF_GET_RETA, align 4
  %88 = load i32, i32* @IXGBE_VT_MSGTYPE_ACK, align 4
  %89 = or i32 %87, %88
  %90 = icmp ne i32 %86, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* @IXGBE_ERR_MBX, align 4
  store i32 %92, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %132

93:                                               ; preds = %84
  %94 = load i32, i32* %7, align 4
  %95 = icmp sgt i32 %94, 1
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 1, i32* %14, align 4
  br label %97

97:                                               ; preds = %96, %93
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %128, %97
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %15, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %131

102:                                              ; preds = %98
  store i32 0, i32* %10, align 4
  br label %103

103:                                              ; preds = %124, %102
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 16
  br i1 %105, label %106, label %127

106:                                              ; preds = %103
  %107 = load i32*, i32** %13, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %10, align 4
  %113 = mul nsw i32 2, %112
  %114 = ashr i32 %111, %113
  %115 = load i32, i32* %14, align 4
  %116 = and i32 %114, %115
  %117 = load i32*, i32** %6, align 8
  %118 = load i32, i32* %9, align 4
  %119 = mul nsw i32 %118, 16
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %117, i64 %122
  store i32 %116, i32* %123, align 4
  br label %124

124:                                              ; preds = %106
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %103

127:                                              ; preds = %103
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %98

131:                                              ; preds = %98
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %132

132:                                              ; preds = %131, %91, %81, %67, %52, %36
  %133 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %133)
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
