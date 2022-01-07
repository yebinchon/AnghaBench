; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_config_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_config_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i32, i32, i32* }
%struct.set_ptp = type { i64 }
%struct.pkind_cfg = type { i32, i32 }

@MAX_LMAC_PER_BGX = common dso_local global i32 0, align 4
@NIC_PF_PKIND_0_15_CFG = common dso_local global i32 0, align 4
@NIC_PF_RX_ETYPE_0_7 = common dso_local global i32 0, align 4
@ETYPE_ALG_ENDPARSE = common dso_local global i32 0, align 4
@ETH_P_1588 = common dso_local global i32 0, align 4
@ETYPE_ALG_SKIP = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicpf*, i32, %struct.set_ptp*)* @nic_config_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nic_config_timestamp(%struct.nicpf* %0, i32 %1, %struct.set_ptp* %2) #0 {
  %4 = alloca %struct.nicpf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.set_ptp*, align 8
  %7 = alloca %struct.pkind_cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nicpf* %0, %struct.nicpf** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.set_ptp* %2, %struct.set_ptp** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %14 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %125

18:                                               ; preds = %3
  %19 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %20 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @NIC_GET_BGX_FROM_VF_LMAC_MAP(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %28 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @NIC_GET_LMAC_FROM_VF_LMAC_MAP(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @MAX_LMAC_PER_BGX, align 4
  %38 = mul nsw i32 %36, %37
  %39 = add nsw i32 %35, %38
  store i32 %39, i32* %11, align 4
  %40 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %41 = load i32, i32* @NIC_PF_PKIND_0_15_CFG, align 4
  %42 = load i32, i32* %11, align 4
  %43 = shl i32 %42, 3
  %44 = or i32 %41, %43
  %45 = call i32 @nic_reg_read(%struct.nicpf* %40, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = bitcast i32* %10 to %struct.pkind_cfg*
  store %struct.pkind_cfg* %46, %struct.pkind_cfg** %7, align 8
  %47 = load %struct.set_ptp*, %struct.set_ptp** %6, align 8
  %48 = getelementptr inbounds %struct.set_ptp, %struct.set_ptp* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %81

51:                                               ; preds = %18
  %52 = load %struct.pkind_cfg*, %struct.pkind_cfg** %7, align 8
  %53 = getelementptr inbounds %struct.pkind_cfg, %struct.pkind_cfg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %81, label %56

56:                                               ; preds = %51
  %57 = load %struct.pkind_cfg*, %struct.pkind_cfg** %7, align 8
  %58 = getelementptr inbounds %struct.pkind_cfg, %struct.pkind_cfg* %57, i32 0, i32 0
  store i32 4, i32* %58, align 4
  %59 = load %struct.pkind_cfg*, %struct.pkind_cfg** %7, align 8
  %60 = getelementptr inbounds %struct.pkind_cfg, %struct.pkind_cfg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %61, 2
  %63 = load %struct.pkind_cfg*, %struct.pkind_cfg** %7, align 8
  %64 = getelementptr inbounds %struct.pkind_cfg, %struct.pkind_cfg* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %68 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @bgx_config_timestamping(i32 %69, i32 %70, i32 %71, i32 1)
  %73 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %74 = load i32, i32* @NIC_PF_RX_ETYPE_0_7, align 4
  %75 = or i32 %74, 8
  %76 = load i32, i32* @ETYPE_ALG_ENDPARSE, align 4
  %77 = shl i32 %76, 16
  %78 = load i32, i32* @ETH_P_1588, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @nic_reg_write(%struct.nicpf* %73, i32 %75, i32 %79)
  br label %117

81:                                               ; preds = %51, %18
  %82 = load %struct.set_ptp*, %struct.set_ptp** %6, align 8
  %83 = getelementptr inbounds %struct.set_ptp, %struct.set_ptp* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %116, label %86

86:                                               ; preds = %81
  %87 = load %struct.pkind_cfg*, %struct.pkind_cfg** %7, align 8
  %88 = getelementptr inbounds %struct.pkind_cfg, %struct.pkind_cfg* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %116

91:                                               ; preds = %86
  %92 = load %struct.pkind_cfg*, %struct.pkind_cfg** %7, align 8
  %93 = getelementptr inbounds %struct.pkind_cfg, %struct.pkind_cfg* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %94, 2
  %96 = load %struct.pkind_cfg*, %struct.pkind_cfg** %7, align 8
  %97 = getelementptr inbounds %struct.pkind_cfg, %struct.pkind_cfg* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load %struct.pkind_cfg*, %struct.pkind_cfg** %7, align 8
  %101 = getelementptr inbounds %struct.pkind_cfg, %struct.pkind_cfg* %100, i32 0, i32 0
  store i32 0, i32* %101, align 4
  %102 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %103 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @bgx_config_timestamping(i32 %104, i32 %105, i32 %106, i32 0)
  %108 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %109 = load i32, i32* @NIC_PF_RX_ETYPE_0_7, align 4
  %110 = or i32 %109, 8
  %111 = load i32, i32* @ETYPE_ALG_SKIP, align 4
  %112 = shl i32 %111, 16
  %113 = load i32, i32* @ETH_P_8021Q, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @nic_reg_write(%struct.nicpf* %108, i32 %110, i32 %114)
  br label %116

116:                                              ; preds = %91, %86, %81
  br label %117

117:                                              ; preds = %116, %56
  %118 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %119 = load i32, i32* @NIC_PF_PKIND_0_15_CFG, align 4
  %120 = load i32, i32* %11, align 4
  %121 = shl i32 %120, 3
  %122 = or i32 %119, %121
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @nic_reg_write(%struct.nicpf* %118, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %117, %17
  ret void
}

declare dso_local i32 @NIC_GET_BGX_FROM_VF_LMAC_MAP(i32) #1

declare dso_local i32 @NIC_GET_LMAC_FROM_VF_LMAC_MAP(i32) #1

declare dso_local i32 @nic_reg_read(%struct.nicpf*, i32) #1

declare dso_local i32 @bgx_config_timestamping(i32, i32, i32, i32) #1

declare dso_local i32 @nic_reg_write(%struct.nicpf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
