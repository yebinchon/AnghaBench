; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_rx_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_rx_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.bnxt_cp_ring_info = type { i32**, %struct.bnxt_napi* }
%struct.bnxt_napi = type { %struct.TYPE_4__*, %struct.bnxt_rx_ring_info* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bnxt_rx_ring_info = type { %struct.bnxt_sw_rx_bd* }
%struct.bnxt_sw_rx_bd = type { i64* }
%struct.rx_cmp = type { i64, i32 }

@RX_CMP_LEN_SHIFT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.bnxt_cp_ring_info*, i32, i32)* @bnxt_rx_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_rx_loopback(%struct.bnxt* %0, %struct.bnxt_cp_ring_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt*, align 8
  %7 = alloca %struct.bnxt_cp_ring_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bnxt_napi*, align 8
  %11 = alloca %struct.bnxt_rx_ring_info*, align 8
  %12 = alloca %struct.bnxt_sw_rx_bd*, align 8
  %13 = alloca %struct.rx_cmp*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %6, align 8
  store %struct.bnxt_cp_ring_info* %1, %struct.bnxt_cp_ring_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %7, align 8
  %20 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %19, i32 0, i32 1
  %21 = load %struct.bnxt_napi*, %struct.bnxt_napi** %20, align 8
  store %struct.bnxt_napi* %21, %struct.bnxt_napi** %10, align 8
  %22 = load %struct.bnxt_napi*, %struct.bnxt_napi** %10, align 8
  %23 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %22, i32 0, i32 1
  %24 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %23, align 8
  store %struct.bnxt_rx_ring_info* %24, %struct.bnxt_rx_ring_info** %11, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @RING_CMP(i32 %25)
  store i64 %26, i64* %14, align 8
  %27 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %7, align 8
  %28 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %27, i32 0, i32 0
  %29 = load i32**, i32*** %28, align 8
  %30 = load i64, i64* %14, align 8
  %31 = call i64 @CP_RING(i64 %30)
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %14, align 8
  %35 = call i64 @CP_IDX(i64 %34)
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = bitcast i32* %36 to %struct.rx_cmp*
  store %struct.rx_cmp* %37, %struct.rx_cmp** %13, align 8
  %38 = load %struct.rx_cmp*, %struct.rx_cmp** %13, align 8
  %39 = getelementptr inbounds %struct.rx_cmp, %struct.rx_cmp* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %15, align 8
  %41 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %11, align 8
  %42 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %41, i32 0, i32 0
  %43 = load %struct.bnxt_sw_rx_bd*, %struct.bnxt_sw_rx_bd** %42, align 8
  %44 = load i64, i64* %15, align 8
  %45 = getelementptr inbounds %struct.bnxt_sw_rx_bd, %struct.bnxt_sw_rx_bd* %43, i64 %44
  store %struct.bnxt_sw_rx_bd* %45, %struct.bnxt_sw_rx_bd** %12, align 8
  %46 = load %struct.bnxt_sw_rx_bd*, %struct.bnxt_sw_rx_bd** %12, align 8
  %47 = getelementptr inbounds %struct.bnxt_sw_rx_bd, %struct.bnxt_sw_rx_bd* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  store i64* %48, i64** %16, align 8
  %49 = load %struct.rx_cmp*, %struct.rx_cmp** %13, align 8
  %50 = getelementptr inbounds %struct.rx_cmp, %struct.rx_cmp* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @le32_to_cpu(i32 %51)
  %53 = load i32, i32* @RX_CMP_LEN_SHIFT, align 4
  %54 = ashr i32 %52, %53
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %4
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %105

61:                                               ; preds = %4
  %62 = load i32, i32* @ETH_ALEN, align 4
  store i32 %62, i32* %18, align 4
  %63 = load i64*, i64** %16, align 8
  %64 = load i32, i32* %18, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load %struct.bnxt_napi*, %struct.bnxt_napi** %10, align 8
  %68 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ether_addr_equal(i64* %66, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %61
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %105

79:                                               ; preds = %61
  %80 = load i32, i32* @ETH_ALEN, align 4
  %81 = load i32, i32* %18, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %18, align 4
  br label %83

83:                                               ; preds = %101, %79
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %83
  %88 = load i64*, i64** %16, align 8
  %89 = load i32, i32* %18, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %18, align 4
  %94 = and i32 %93, 255
  %95 = sext i32 %94 to i64
  %96 = icmp ne i64 %92, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %87
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %5, align 4
  br label %105

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %18, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %18, align 4
  br label %83

104:                                              ; preds = %83
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %104, %97, %76, %58
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i64 @RING_CMP(i32) #1

declare dso_local i64 @CP_RING(i64) #1

declare dso_local i64 @CP_IDX(i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ether_addr_equal(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
