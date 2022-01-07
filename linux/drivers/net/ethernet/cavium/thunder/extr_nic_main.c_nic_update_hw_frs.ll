; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_update_hw_frs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_update_hw_frs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i32, i32, i32* }

@NIC_HW_MAX_FRS = common dso_local global i32 0, align 4
@NIC_HW_MIN_FRS = common dso_local global i32 0, align 4
@MAX_LMAC_PER_BGX = common dso_local global i32 0, align 4
@VLAN_ETH_HLEN = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@NIC_PF_LMAC_0_7_CREDIT = common dso_local global i64 0, align 8
@NIC_PF_LMAC_0_7_CFG2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicpf*, i32, i32)* @nic_update_hw_frs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nic_update_hw_frs(%struct.nicpf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nicpf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nicpf* %0, %struct.nicpf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @NIC_HW_MAX_FRS, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @NIC_HW_MIN_FRS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %3
  store i32 1, i32* %4, align 4
  br label %97

20:                                               ; preds = %15
  %21 = load %struct.nicpf*, %struct.nicpf** %5, align 8
  %22 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @NIC_GET_BGX_FROM_VF_LMAC_MAP(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.nicpf*, %struct.nicpf** %5, align 8
  %30 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @NIC_GET_LMAC_FROM_VF_LMAC_MAP(i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @MAX_LMAC_PER_BGX, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load i64, i64* @VLAN_ETH_HLEN, align 8
  %43 = load i64, i64* @ETH_FCS_LEN, align 8
  %44 = add nsw i64 %42, %43
  %45 = add nsw i64 %44, 4
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %6, align 4
  %50 = load %struct.nicpf*, %struct.nicpf** %5, align 8
  %51 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @bgx_get_lmac_count(i32 %52, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load %struct.nicpf*, %struct.nicpf** %5, align 8
  %56 = load i64, i64* @NIC_PF_LMAC_0_7_CREDIT, align 8
  %57 = load i32, i32* %9, align 4
  %58 = mul nsw i32 %57, 8
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %56, %59
  %61 = call i32 @nic_reg_read(%struct.nicpf* %55, i64 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = and i64 %63, -4294963201
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sdiv i32 49152, %66
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 %67, %68
  %70 = sdiv i32 %69, 16
  %71 = shl i32 %70, 12
  %72 = load i32, i32* %11, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %11, align 4
  %74 = load %struct.nicpf*, %struct.nicpf** %5, align 8
  %75 = load i64, i64* @NIC_PF_LMAC_0_7_CREDIT, align 8
  %76 = load i32, i32* %9, align 4
  %77 = mul nsw i32 %76, 8
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %75, %78
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @nic_reg_write(%struct.nicpf* %74, i64 %79, i32 %80)
  %82 = load %struct.nicpf*, %struct.nicpf** %5, align 8
  %83 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @pass1_silicon(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %20
  %88 = load %struct.nicpf*, %struct.nicpf** %5, align 8
  %89 = load i64, i64* @NIC_PF_LMAC_0_7_CFG2, align 8
  %90 = load i32, i32* %9, align 4
  %91 = mul nsw i32 %90, 8
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %89, %92
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @nic_reg_write(%struct.nicpf* %88, i64 %93, i32 %94)
  br label %96

96:                                               ; preds = %87, %20
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %19
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @NIC_GET_BGX_FROM_VF_LMAC_MAP(i32) #1

declare dso_local i32 @NIC_GET_LMAC_FROM_VF_LMAC_MAP(i32) #1

declare dso_local i32 @bgx_get_lmac_count(i32, i32) #1

declare dso_local i32 @nic_reg_read(%struct.nicpf*, i64) #1

declare dso_local i32 @nic_reg_write(%struct.nicpf*, i64, i32) #1

declare dso_local i32 @pass1_silicon(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
