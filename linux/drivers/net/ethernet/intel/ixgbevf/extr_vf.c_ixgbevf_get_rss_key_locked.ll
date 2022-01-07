; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_vf.c_ixgbevf_get_rss_key_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_vf.c_ixgbevf_get_rss_key_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.ixgbe_hw.0*, i32*, i32)*, i32 (%struct.ixgbe_hw.1*, i32*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_6__ = type { i32 }

@IXGBE_VFMAILBOX_SIZE = common dso_local global i32 0, align 4
@ixgbe_mac_X550_vf = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IXGBE_VF_GET_RSS_KEY = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_CTS = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_NACK = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@IXGBE_VT_MSGTYPE_ACK = common dso_local global i32 0, align 4
@IXGBE_ERR_MBX = common dso_local global i32 0, align 4
@IXGBEVF_RSS_HASH_KEY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbevf_get_rss_key_locked(%struct.ixgbe_hw* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* @IXGBE_VFMAILBOX_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %26 [
    i32 128, label %17
    i32 129, label %17
    i32 130, label %17
  ]

17:                                               ; preds = %2, %2, %2
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %19 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ixgbe_mac_X550_vf, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %29

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %2, %25
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %86

29:                                               ; preds = %24
  %30 = load i32, i32* @IXGBE_VF_GET_RSS_KEY, align 4
  %31 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %30, i32* %31, align 16
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %33 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (%struct.ixgbe_hw.0*, i32*, i32)*, i32 (%struct.ixgbe_hw.0*, i32*, i32)** %35, align 8
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %38 = bitcast %struct.ixgbe_hw* %37 to %struct.ixgbe_hw.0*
  %39 = call i32 %36(%struct.ixgbe_hw.0* %38, i32* %13, i32 1)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %86

44:                                               ; preds = %29
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %46 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32 (%struct.ixgbe_hw.1*, i32*, i32)*, i32 (%struct.ixgbe_hw.1*, i32*, i32)** %48, align 8
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %51 = bitcast %struct.ixgbe_hw* %50 to %struct.ixgbe_hw.1*
  %52 = call i32 %49(%struct.ixgbe_hw.1* %51, i32* %13, i32 11)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %86

57:                                               ; preds = %44
  %58 = load i32, i32* @IXGBE_VT_MSGTYPE_CTS, align 4
  %59 = xor i32 %58, -1
  %60 = getelementptr inbounds i32, i32* %13, i64 0
  %61 = load i32, i32* %60, align 16
  %62 = and i32 %61, %59
  store i32 %62, i32* %60, align 16
  %63 = getelementptr inbounds i32, i32* %13, i64 0
  %64 = load i32, i32* %63, align 16
  %65 = load i32, i32* @IXGBE_VF_GET_RSS_KEY, align 4
  %66 = load i32, i32* @IXGBE_VT_MSGTYPE_NACK, align 4
  %67 = or i32 %65, %66
  %68 = icmp eq i32 %64, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %57
  %70 = load i32, i32* @EPERM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %86

72:                                               ; preds = %57
  %73 = getelementptr inbounds i32, i32* %13, i64 0
  %74 = load i32, i32* %73, align 16
  %75 = load i32, i32* @IXGBE_VF_GET_RSS_KEY, align 4
  %76 = load i32, i32* @IXGBE_VT_MSGTYPE_ACK, align 4
  %77 = or i32 %75, %76
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @IXGBE_ERR_MBX, align 4
  store i32 %80, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %86

81:                                               ; preds = %72
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds i32, i32* %13, i64 1
  %84 = load i32, i32* @IXGBEVF_RSS_HASH_KEY_SIZE, align 4
  %85 = call i32 @memcpy(i32* %82, i32* %83, i32 %84)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %86

86:                                               ; preds = %81, %79, %69, %55, %42, %26
  %87 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
