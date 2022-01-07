; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-config.h_vxge_hw_ring_rxd_1b_info_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-config.h_vxge_hw_ring_rxd_1b_info_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_ring = type { i32 }
%struct.vxge_hw_ring_rxd_info = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.vxge_hw_ring_rxd_1 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.__vxge_hw_ring*, i8*, %struct.vxge_hw_ring_rxd_info*)* @vxge_hw_ring_rxd_1b_info_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxge_hw_ring_rxd_1b_info_get(%struct.__vxge_hw_ring* %0, i8* %1, %struct.vxge_hw_ring_rxd_info* %2) #0 {
  %4 = alloca %struct.__vxge_hw_ring*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vxge_hw_ring_rxd_info*, align 8
  %7 = alloca %struct.vxge_hw_ring_rxd_1*, align 8
  store %struct.__vxge_hw_ring* %0, %struct.__vxge_hw_ring** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.vxge_hw_ring_rxd_info* %2, %struct.vxge_hw_ring_rxd_info** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.vxge_hw_ring_rxd_1*
  store %struct.vxge_hw_ring_rxd_1* %9, %struct.vxge_hw_ring_rxd_1** %7, align 8
  %10 = load %struct.vxge_hw_ring_rxd_1*, %struct.vxge_hw_ring_rxd_1** %7, align 8
  %11 = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, %struct.vxge_hw_ring_rxd_1* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @VXGE_HW_RING_RXD_SYN_GET(i32 %12)
  %14 = inttoptr i64 %13 to i8*
  %15 = load %struct.vxge_hw_ring_rxd_info*, %struct.vxge_hw_ring_rxd_info** %6, align 8
  %16 = getelementptr inbounds %struct.vxge_hw_ring_rxd_info, %struct.vxge_hw_ring_rxd_info* %15, i32 0, i32 15
  store i8* %14, i8** %16, align 8
  %17 = load %struct.vxge_hw_ring_rxd_1*, %struct.vxge_hw_ring_rxd_1** %7, align 8
  %18 = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, %struct.vxge_hw_ring_rxd_1* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @VXGE_HW_RING_RXD_IS_ICMP_GET(i32 %19)
  %21 = inttoptr i64 %20 to i8*
  %22 = load %struct.vxge_hw_ring_rxd_info*, %struct.vxge_hw_ring_rxd_info** %6, align 8
  %23 = getelementptr inbounds %struct.vxge_hw_ring_rxd_info, %struct.vxge_hw_ring_rxd_info* %22, i32 0, i32 14
  store i8* %21, i8** %23, align 8
  %24 = load %struct.vxge_hw_ring_rxd_1*, %struct.vxge_hw_ring_rxd_1** %7, align 8
  %25 = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, %struct.vxge_hw_ring_rxd_1* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @VXGE_HW_RING_RXD_FAST_PATH_ELIGIBLE_GET(i32 %26)
  %28 = inttoptr i64 %27 to i8*
  %29 = load %struct.vxge_hw_ring_rxd_info*, %struct.vxge_hw_ring_rxd_info** %6, align 8
  %30 = getelementptr inbounds %struct.vxge_hw_ring_rxd_info, %struct.vxge_hw_ring_rxd_info* %29, i32 0, i32 13
  store i8* %28, i8** %30, align 8
  %31 = load %struct.vxge_hw_ring_rxd_1*, %struct.vxge_hw_ring_rxd_1** %7, align 8
  %32 = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, %struct.vxge_hw_ring_rxd_1* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @VXGE_HW_RING_RXD_L3_CKSUM_CORRECT_GET(i32 %33)
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.vxge_hw_ring_rxd_info*, %struct.vxge_hw_ring_rxd_info** %6, align 8
  %37 = getelementptr inbounds %struct.vxge_hw_ring_rxd_info, %struct.vxge_hw_ring_rxd_info* %36, i32 0, i32 12
  store i8* %35, i8** %37, align 8
  %38 = load %struct.vxge_hw_ring_rxd_1*, %struct.vxge_hw_ring_rxd_1** %7, align 8
  %39 = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, %struct.vxge_hw_ring_rxd_1* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @VXGE_HW_RING_RXD_L3_CKSUM_GET(i32 %40)
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.vxge_hw_ring_rxd_info*, %struct.vxge_hw_ring_rxd_info** %6, align 8
  %44 = getelementptr inbounds %struct.vxge_hw_ring_rxd_info, %struct.vxge_hw_ring_rxd_info* %43, i32 0, i32 11
  store i8* %42, i8** %44, align 8
  %45 = load %struct.vxge_hw_ring_rxd_1*, %struct.vxge_hw_ring_rxd_1** %7, align 8
  %46 = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, %struct.vxge_hw_ring_rxd_1* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @VXGE_HW_RING_RXD_L4_CKSUM_CORRECT_GET(i32 %47)
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.vxge_hw_ring_rxd_info*, %struct.vxge_hw_ring_rxd_info** %6, align 8
  %51 = getelementptr inbounds %struct.vxge_hw_ring_rxd_info, %struct.vxge_hw_ring_rxd_info* %50, i32 0, i32 10
  store i8* %49, i8** %51, align 8
  %52 = load %struct.vxge_hw_ring_rxd_1*, %struct.vxge_hw_ring_rxd_1** %7, align 8
  %53 = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, %struct.vxge_hw_ring_rxd_1* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @VXGE_HW_RING_RXD_L4_CKSUM_GET(i32 %54)
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.vxge_hw_ring_rxd_info*, %struct.vxge_hw_ring_rxd_info** %6, align 8
  %58 = getelementptr inbounds %struct.vxge_hw_ring_rxd_info, %struct.vxge_hw_ring_rxd_info* %57, i32 0, i32 9
  store i8* %56, i8** %58, align 8
  %59 = load %struct.vxge_hw_ring_rxd_1*, %struct.vxge_hw_ring_rxd_1** %7, align 8
  %60 = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, %struct.vxge_hw_ring_rxd_1* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @VXGE_HW_RING_RXD_ETHER_ENCAP_GET(i32 %61)
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.vxge_hw_ring_rxd_info*, %struct.vxge_hw_ring_rxd_info** %6, align 8
  %65 = getelementptr inbounds %struct.vxge_hw_ring_rxd_info, %struct.vxge_hw_ring_rxd_info* %64, i32 0, i32 8
  store i8* %63, i8** %65, align 8
  %66 = load %struct.vxge_hw_ring_rxd_1*, %struct.vxge_hw_ring_rxd_1** %7, align 8
  %67 = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, %struct.vxge_hw_ring_rxd_1* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @VXGE_HW_RING_RXD_FRAME_PROTO_GET(i32 %68)
  %70 = inttoptr i64 %69 to i8*
  %71 = load %struct.vxge_hw_ring_rxd_info*, %struct.vxge_hw_ring_rxd_info** %6, align 8
  %72 = getelementptr inbounds %struct.vxge_hw_ring_rxd_info, %struct.vxge_hw_ring_rxd_info* %71, i32 0, i32 7
  store i8* %70, i8** %72, align 8
  %73 = load %struct.vxge_hw_ring_rxd_1*, %struct.vxge_hw_ring_rxd_1** %7, align 8
  %74 = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, %struct.vxge_hw_ring_rxd_1* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @VXGE_HW_RING_RXD_IS_VLAN_GET(i32 %75)
  %77 = inttoptr i64 %76 to i8*
  %78 = load %struct.vxge_hw_ring_rxd_info*, %struct.vxge_hw_ring_rxd_info** %6, align 8
  %79 = getelementptr inbounds %struct.vxge_hw_ring_rxd_info, %struct.vxge_hw_ring_rxd_info* %78, i32 0, i32 6
  store i8* %77, i8** %79, align 8
  %80 = load %struct.vxge_hw_ring_rxd_1*, %struct.vxge_hw_ring_rxd_1** %7, align 8
  %81 = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, %struct.vxge_hw_ring_rxd_1* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @VXGE_HW_RING_RXD_VLAN_TAG_GET(i32 %82)
  %84 = inttoptr i64 %83 to i8*
  %85 = load %struct.vxge_hw_ring_rxd_info*, %struct.vxge_hw_ring_rxd_info** %6, align 8
  %86 = getelementptr inbounds %struct.vxge_hw_ring_rxd_info, %struct.vxge_hw_ring_rxd_info* %85, i32 0, i32 5
  store i8* %84, i8** %86, align 8
  %87 = load %struct.vxge_hw_ring_rxd_1*, %struct.vxge_hw_ring_rxd_1** %7, align 8
  %88 = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, %struct.vxge_hw_ring_rxd_1* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @VXGE_HW_RING_RXD_RTH_BUCKET_GET(i32 %89)
  %91 = inttoptr i64 %90 to i8*
  %92 = load %struct.vxge_hw_ring_rxd_info*, %struct.vxge_hw_ring_rxd_info** %6, align 8
  %93 = getelementptr inbounds %struct.vxge_hw_ring_rxd_info, %struct.vxge_hw_ring_rxd_info* %92, i32 0, i32 4
  store i8* %91, i8** %93, align 8
  %94 = load %struct.vxge_hw_ring_rxd_1*, %struct.vxge_hw_ring_rxd_1** %7, align 8
  %95 = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, %struct.vxge_hw_ring_rxd_1* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @VXGE_HW_RING_RXD_RTH_IT_HIT_GET(i32 %96)
  %98 = inttoptr i64 %97 to i8*
  %99 = load %struct.vxge_hw_ring_rxd_info*, %struct.vxge_hw_ring_rxd_info** %6, align 8
  %100 = getelementptr inbounds %struct.vxge_hw_ring_rxd_info, %struct.vxge_hw_ring_rxd_info* %99, i32 0, i32 3
  store i8* %98, i8** %100, align 8
  %101 = load %struct.vxge_hw_ring_rxd_1*, %struct.vxge_hw_ring_rxd_1** %7, align 8
  %102 = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, %struct.vxge_hw_ring_rxd_1* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @VXGE_HW_RING_RXD_RTH_SPDM_HIT_GET(i32 %103)
  %105 = inttoptr i64 %104 to i8*
  %106 = load %struct.vxge_hw_ring_rxd_info*, %struct.vxge_hw_ring_rxd_info** %6, align 8
  %107 = getelementptr inbounds %struct.vxge_hw_ring_rxd_info, %struct.vxge_hw_ring_rxd_info* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load %struct.vxge_hw_ring_rxd_1*, %struct.vxge_hw_ring_rxd_1** %7, align 8
  %109 = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, %struct.vxge_hw_ring_rxd_1* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @VXGE_HW_RING_RXD_RTH_HASH_TYPE_GET(i32 %110)
  %112 = inttoptr i64 %111 to i8*
  %113 = load %struct.vxge_hw_ring_rxd_info*, %struct.vxge_hw_ring_rxd_info** %6, align 8
  %114 = getelementptr inbounds %struct.vxge_hw_ring_rxd_info, %struct.vxge_hw_ring_rxd_info* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  %115 = load %struct.vxge_hw_ring_rxd_1*, %struct.vxge_hw_ring_rxd_1** %7, align 8
  %116 = getelementptr inbounds %struct.vxge_hw_ring_rxd_1, %struct.vxge_hw_ring_rxd_1* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @VXGE_HW_RING_RXD_1_RTH_HASH_VAL_GET(i32 %117)
  %119 = inttoptr i64 %118 to i8*
  %120 = load %struct.vxge_hw_ring_rxd_info*, %struct.vxge_hw_ring_rxd_info** %6, align 8
  %121 = getelementptr inbounds %struct.vxge_hw_ring_rxd_info, %struct.vxge_hw_ring_rxd_info* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  ret void
}

declare dso_local i64 @VXGE_HW_RING_RXD_SYN_GET(i32) #1

declare dso_local i64 @VXGE_HW_RING_RXD_IS_ICMP_GET(i32) #1

declare dso_local i64 @VXGE_HW_RING_RXD_FAST_PATH_ELIGIBLE_GET(i32) #1

declare dso_local i64 @VXGE_HW_RING_RXD_L3_CKSUM_CORRECT_GET(i32) #1

declare dso_local i64 @VXGE_HW_RING_RXD_L3_CKSUM_GET(i32) #1

declare dso_local i64 @VXGE_HW_RING_RXD_L4_CKSUM_CORRECT_GET(i32) #1

declare dso_local i64 @VXGE_HW_RING_RXD_L4_CKSUM_GET(i32) #1

declare dso_local i64 @VXGE_HW_RING_RXD_ETHER_ENCAP_GET(i32) #1

declare dso_local i64 @VXGE_HW_RING_RXD_FRAME_PROTO_GET(i32) #1

declare dso_local i64 @VXGE_HW_RING_RXD_IS_VLAN_GET(i32) #1

declare dso_local i64 @VXGE_HW_RING_RXD_VLAN_TAG_GET(i32) #1

declare dso_local i64 @VXGE_HW_RING_RXD_RTH_BUCKET_GET(i32) #1

declare dso_local i64 @VXGE_HW_RING_RXD_RTH_IT_HIT_GET(i32) #1

declare dso_local i64 @VXGE_HW_RING_RXD_RTH_SPDM_HIT_GET(i32) #1

declare dso_local i64 @VXGE_HW_RING_RXD_RTH_HASH_TYPE_GET(i32) #1

declare dso_local i64 @VXGE_HW_RING_RXD_1_RTH_HASH_VAL_GET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
