; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_vf.c_e1000_set_uc_addr_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_vf.c_e1000_set_uc_addr_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mbx_info }
%struct.e1000_mbx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*, i32*, i32)*, i64 (%struct.e1000_hw.1*, i32*, i32)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_VF_SET_MAC_ADDR = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@E1000_VT_MSGTYPE_CTS = common dso_local global i32 0, align 4
@E1000_VT_MSGTYPE_NACK = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32, i32*)* @e1000_set_uc_addr_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_set_uc_addr_vf(%struct.e1000_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.e1000_mbx_info*, align 8
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 0
  store %struct.e1000_mbx_info* %14, %struct.e1000_mbx_info** %8, align 8
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32* %15, i32** %11, align 8
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %17 = call i32 @memset(i32* %16, i32 0, i32 12)
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %18
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @E1000_VF_SET_MAC_ADDR, align 4
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %22
  store i32 %25, i32* %23, align 4
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load i32*, i32** %11, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* @ETH_ALEN, align 4
  %34 = call i32 @memcpy(i32* %31, i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %3
  %36 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %8, align 8
  %37 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64 (%struct.e1000_hw.1*, i32*, i32)*, i64 (%struct.e1000_hw.1*, i32*, i32)** %38, align 8
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %41 = bitcast %struct.e1000_hw* %40 to %struct.e1000_hw.1*
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %43 = call i64 %39(%struct.e1000_hw.1* %41, i32* %42, i32 3)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %35
  %47 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %8, align 8
  %48 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64 (%struct.e1000_hw.0*, i32*, i32)*, i64 (%struct.e1000_hw.0*, i32*, i32)** %49, align 8
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %52 = bitcast %struct.e1000_hw* %51 to %struct.e1000_hw.0*
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %54 = call i64 %50(%struct.e1000_hw.0* %52, i32* %53, i32 3)
  store i64 %54, i64* %12, align 8
  br label %55

55:                                               ; preds = %46, %35
  %56 = load i32, i32* @E1000_VT_MSGTYPE_CTS, align 4
  %57 = xor i32 %56, -1
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %57
  store i32 %60, i32* %58, align 4
  %61 = load i64, i64* %12, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* @E1000_VT_MSGTYPE_CTS, align 4
  %65 = xor i32 %64, -1
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %65
  store i32 %68, i32* %66, align 4
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @E1000_VT_MSGTYPE_NACK, align 4
  %73 = or i32 %71, %72
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %63
  %76 = load i64, i64* @ENOSPC, align 8
  %77 = sub nsw i64 0, %76
  store i64 %77, i64* %4, align 8
  br label %81

78:                                               ; preds = %63
  br label %79

79:                                               ; preds = %78, %55
  %80 = load i64, i64* %12, align 8
  store i64 %80, i64* %4, align 8
  br label %81

81:                                               ; preds = %79, %75
  %82 = load i64, i64* %4, align 8
  ret i64 %82
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
