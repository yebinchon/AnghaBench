; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_set_vf_macvlan_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_set_vf_macvlan_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.ixgbe_hw, %struct.TYPE_4__* }
%struct.ixgbe_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32, i64)*, i32 (%struct.ixgbe_hw.1*, i32, i64)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_4__ = type { i64, i32, i64 }

@IXGBE_VT_MSGINFO_MASK = common dso_local global i64 0, align 8
@IXGBE_VT_MSGINFO_SHIFT = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"VF %d requested MACVLAN filter but is administratively denied\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"VF %d attempted to set invalid mac\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"VF %d has requested a MACVLAN filter but there is no space for it\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, i64*, i64)* @ixgbe_set_vf_macvlan_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_set_vf_macvlan_msg(%struct.ixgbe_adapter* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ixgbe_hw*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 1
  %14 = bitcast i64* %13 to i32*
  store i32* %14, i32** %8, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IXGBE_VT_MSGINFO_MASK, align 8
  %19 = and i64 %17, %18
  %20 = load i64, i64* @IXGBE_VT_MSGINFO_SHIFT, align 8
  %21 = lshr i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %24 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %3
  %32 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %33 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %9, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* @drv, align 4
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @e_warn(i32 %44, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %45)
  store i32 -1, i32* %4, align 4
  br label %107

47:                                               ; preds = %40, %31, %3
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %89

50:                                               ; preds = %47
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @is_valid_ether_addr(i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @drv, align 4
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @e_warn(i32 %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  store i32 -1, i32* %4, align 4
  br label %107

58:                                               ; preds = %50
  %59 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %60 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %58
  %68 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %69 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %68, i32 0, i32 0
  store %struct.ixgbe_hw* %69, %struct.ixgbe_hw** %11, align 8
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %71 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32 (%struct.ixgbe_hw.1*, i32, i64)*, i32 (%struct.ixgbe_hw.1*, i32, i64)** %73, align 8
  %75 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %76 = bitcast %struct.ixgbe_hw* %75 to %struct.ixgbe_hw.1*
  %77 = load i64, i64* %7, align 8
  %78 = call i32 %74(%struct.ixgbe_hw.1* %76, i32 0, i64 %77)
  %79 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %80 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32 (%struct.ixgbe_hw.0*, i32, i64)*, i32 (%struct.ixgbe_hw.0*, i32, i64)** %82, align 8
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %85 = bitcast %struct.ixgbe_hw* %84 to %struct.ixgbe_hw.0*
  %86 = load i64, i64* %7, align 8
  %87 = call i32 %83(%struct.ixgbe_hw.0* %85, i32 0, i64 %86)
  br label %88

88:                                               ; preds = %67, %58
  br label %89

89:                                               ; preds = %88, %47
  %90 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @ixgbe_set_vf_macvlan(%struct.ixgbe_adapter* %90, i64 %91, i32 %92, i32* %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @ENOSPC, align 4
  %97 = sub nsw i32 0, %96
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %89
  %100 = load i32, i32* @drv, align 4
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @e_warn(i32 %100, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i64 %101)
  br label %103

103:                                              ; preds = %99, %89
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 0
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %103, %54, %43
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @e_warn(i32, i8*, i64) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @ixgbe_set_vf_macvlan(%struct.ixgbe_adapter*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
