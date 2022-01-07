; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_vf.c_e1000_reset_hw_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_vf.c_e1000_reset_hw_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.e1000_mbx_info }
%struct.TYPE_4__ = type { i32 }
%struct.e1000_mbx_info = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*, i32*, i32)*, i32 (%struct.e1000_hw.1*, i32*, i32)*, i32 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque

@E1000_VF_INIT_TIMEOUT = common dso_local global i32 0, align 4
@E1000_ERR_MAC_INIT = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_RST = common dso_local global i32 0, align 4
@E1000_VF_MBX_INIT_TIMEOUT = common dso_local global i32 0, align 4
@E1000_VF_RESET = common dso_local global i32 0, align 4
@E1000_VT_MSGTYPE_ACK = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_reset_hw_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_reset_hw_vf(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mbx_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 1
  store %struct.e1000_mbx_info* %10, %struct.e1000_mbx_info** %3, align 8
  %11 = load i32, i32* @E1000_VF_INIT_TIMEOUT, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @E1000_ERR_MAC_INIT, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %5, align 4
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32* %14, i32** %7, align 8
  %15 = load i32, i32* @CTRL, align 4
  %16 = call i32 @er32(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @CTRL, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @E1000_CTRL_RST, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @ew32(i32 %17, i32 %20)
  br label %22

22:                                               ; preds = %36, %1
  %23 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %24 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32 (%struct.e1000_hw.2*)*, i32 (%struct.e1000_hw.2*)** %25, align 8
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %28 = bitcast %struct.e1000_hw* %27 to %struct.e1000_hw.2*
  %29 = call i32 %26(%struct.e1000_hw.2* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %31, %22
  %35 = phi i1 [ false, %22 ], [ %33, %31 ]
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %4, align 4
  %39 = call i32 @udelay(i32 5)
  br label %22

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %88

43:                                               ; preds = %40
  %44 = load i32, i32* @E1000_VF_MBX_INIT_TIMEOUT, align 4
  %45 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %46 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @E1000_VF_RESET, align 4
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %47, i32* %48, align 4
  %49 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %50 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32 (%struct.e1000_hw.1*, i32*, i32)*, i32 (%struct.e1000_hw.1*, i32*, i32)** %51, align 8
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %54 = bitcast %struct.e1000_hw* %53 to %struct.e1000_hw.1*
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %56 = call i32 %52(%struct.e1000_hw.1* %54, i32* %55, i32 1)
  %57 = call i32 @mdelay(i32 10)
  %58 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %3, align 8
  %59 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32 (%struct.e1000_hw.0*, i32*, i32)*, i32 (%struct.e1000_hw.0*, i32*, i32)** %60, align 8
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %63 = bitcast %struct.e1000_hw* %62 to %struct.e1000_hw.0*
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %65 = call i32 %61(%struct.e1000_hw.0* %63, i32* %64, i32 3)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %87, label %68

68:                                               ; preds = %43
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @E1000_VF_RESET, align 4
  %72 = load i32, i32* @E1000_VT_MSGTYPE_ACK, align 4
  %73 = or i32 %71, %72
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %77 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* @ETH_ALEN, align 4
  %82 = call i32 @memcpy(i32 %79, i32* %80, i32 %81)
  br label %86

83:                                               ; preds = %68
  %84 = load i32, i32* @E1000_ERR_MAC_INIT, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %83, %75
  br label %87

87:                                               ; preds = %86, %43
  br label %88

88:                                               ; preds = %87, %40
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
