; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_set_lmac_vf_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_set_lmac_vf_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i64, i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NIC_HW_MAX_FRS = common dso_local global i32 0, align 4
@MAX_LMAC_PER_BGX = common dso_local global i32 0, align 4
@NIC_PF_LMAC_0_7_CREDIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicpf*)* @nic_set_lmac_vf_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nic_set_lmac_vf_mapping(%struct.nicpf* %0) #0 {
  %2 = alloca %struct.nicpf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nicpf* %0, %struct.nicpf** %2, align 8
  %9 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %10 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @bgx_get_map(i32 %11)
  store i32 %12, i32* %3, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %14 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %111, %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %18 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %16, %21
  br i1 %22, label %23, label %114

23:                                               ; preds = %15
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %111

30:                                               ; preds = %23
  %31 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %32 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @bgx_get_lmac_count(i32 %33, i32 %34)
  store i32 %35, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %51, %30
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @NIC_SET_VF_LMAC_MAP(i32 %41, i32 %42)
  %44 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %45 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32 %43, i32* %50, align 4
  br label %51

51:                                               ; preds = %40
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %36

54:                                               ; preds = %36
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %58 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, %56
  store i64 %60, i64* %58, align 8
  store i32 2, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, 2044
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %7, align 4
  %64 = sdiv i32 49152, %63
  %65 = load i32, i32* @NIC_HW_MAX_FRS, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sdiv i32 %66, 16
  %68 = shl i32 %67, 12
  %69 = load i32, i32* %8, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @MAX_LMAC_PER_BGX, align 4
  %73 = mul nsw i32 %71, %72
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %91, %54
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @MAX_LMAC_PER_BGX, align 4
  %79 = mul nsw i32 %77, %78
  %80 = add nsw i32 %76, %79
  %81 = icmp slt i32 %75, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %74
  %83 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %84 = load i64, i64* @NIC_PF_LMAC_0_7_CREDIT, align 8
  %85 = load i32, i32* %6, align 4
  %86 = mul nsw i32 %85, 8
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %84, %87
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @nic_reg_write(%struct.nicpf* %83, i64 %88, i32 %89)
  br label %91

91:                                               ; preds = %82
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %74

94:                                               ; preds = %74
  %95 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %96 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %99 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @pci_sriov_get_totalvfs(i32 %100)
  %102 = icmp sge i64 %97, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %94
  %104 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %105 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @pci_sriov_get_totalvfs(i32 %106)
  %108 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %109 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  br label %114

110:                                              ; preds = %94
  br label %111

111:                                              ; preds = %110, %29
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %4, align 4
  br label %15

114:                                              ; preds = %103, %15
  ret void
}

declare dso_local i32 @bgx_get_map(i32) #1

declare dso_local i32 @bgx_get_lmac_count(i32, i32) #1

declare dso_local i32 @NIC_SET_VF_LMAC_MAP(i32, i32) #1

declare dso_local i32 @nic_reg_write(%struct.nicpf*, i64, i32) #1

declare dso_local i64 @pci_sriov_get_totalvfs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
