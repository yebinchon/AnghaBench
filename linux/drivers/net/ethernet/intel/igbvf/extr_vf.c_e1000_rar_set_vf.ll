; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_vf.c_e1000_rar_set_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_vf.c_e1000_rar_set_vf.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*, i32*, i32)* @e1000_rar_set_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_rar_set_vf(%struct.e1000_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_mbx_info*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 0
  store %struct.e1000_mbx_info* %12, %struct.e1000_mbx_info** %7, align 8
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32* %13, i32** %9, align 8
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %15 = call i32 @memset(i32* %14, i32 0, i32 12)
  %16 = load i32, i32* @E1000_VF_SET_MAC_ADDR, align 4
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @ETH_ALEN, align 4
  %21 = call i32 @memcpy(i32* %18, i32* %19, i32 %20)
  %22 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %7, align 8
  %23 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64 (%struct.e1000_hw.1*, i32*, i32)*, i64 (%struct.e1000_hw.1*, i32*, i32)** %24, align 8
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %27 = bitcast %struct.e1000_hw* %26 to %struct.e1000_hw.1*
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %29 = call i64 %25(%struct.e1000_hw.1* %27, i32* %28, i32 3)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %3
  %33 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %7, align 8
  %34 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64 (%struct.e1000_hw.0*, i32*, i32)*, i64 (%struct.e1000_hw.0*, i32*, i32)** %35, align 8
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %38 = bitcast %struct.e1000_hw* %37 to %struct.e1000_hw.0*
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %40 = call i64 %36(%struct.e1000_hw.0* %38, i32* %39, i32 3)
  store i64 %40, i64* %10, align 8
  br label %41

41:                                               ; preds = %32, %3
  %42 = load i32, i32* @E1000_VT_MSGTYPE_CTS, align 4
  %43 = xor i32 %42, -1
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %43
  store i32 %46, i32* %44, align 4
  %47 = load i64, i64* %10, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @E1000_VF_SET_MAC_ADDR, align 4
  %53 = load i32, i32* @E1000_VT_MSGTYPE_NACK, align 4
  %54 = or i32 %52, %53
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %58 = call i32 @e1000_read_mac_addr_vf(%struct.e1000_hw* %57)
  br label %59

59:                                               ; preds = %56, %49, %41
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @e1000_read_mac_addr_vf(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
