; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_link_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_link_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.rvu_hwinfo* }
%struct.rvu_hwinfo = type { i32, i32, i32, i32, i64 }

@NIC_HW_MAX_FRS = common dso_local global i32 0, align 4
@NIC_HW_MIN_FRS = common dso_local global i32 0, align 4
@SDP_HW_MAX_FRS = common dso_local global i32 0, align 4
@CGX_FIFO_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu*, i32)* @nix_link_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nix_link_config(%struct.rvu* %0, i32 %1) #0 {
  %3 = alloca %struct.rvu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu_hwinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.rvu*, %struct.rvu** %3, align 8
  %12 = getelementptr inbounds %struct.rvu, %struct.rvu* %11, i32 0, i32 0
  %13 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %12, align 8
  store %struct.rvu_hwinfo* %13, %struct.rvu_hwinfo** %5, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %34, %2
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %5, align 8
  %17 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %5, align 8
  %20 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %18, %21
  %23 = icmp slt i32 %15, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %14
  %25 = load %struct.rvu*, %struct.rvu** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @NIX_AF_RX_LINKX_CFG(i32 %27)
  %29 = load i32, i32* @NIC_HW_MAX_FRS, align 4
  %30 = shl i32 %29, 16
  %31 = load i32, i32* @NIC_HW_MIN_FRS, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @rvu_write64(%struct.rvu* %25, i32 %26, i32 %28, i32 %32)
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %14

37:                                               ; preds = %14
  %38 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %5, align 8
  %39 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %37
  %43 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %5, align 8
  %44 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %5, align 8
  %47 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %45, %48
  store i32 %49, i32* %9, align 4
  %50 = load %struct.rvu*, %struct.rvu** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @NIX_AF_RX_LINKX_CFG(i32 %52)
  %54 = load i32, i32* @SDP_HW_MAX_FRS, align 4
  %55 = shl i32 %54, 16
  %56 = load i32, i32* @NIC_HW_MIN_FRS, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @rvu_write64(%struct.rvu* %50, i32 %51, i32 %53, i32 %57)
  br label %59

59:                                               ; preds = %42, %37
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %111, %59
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %5, align 8
  %63 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %114

66:                                               ; preds = %60
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.rvu*, %struct.rvu** %3, align 8
  %69 = call i32 @rvu_cgx_pdata(i32 %67, %struct.rvu* %68)
  %70 = call i32 @cgx_get_lmac_cnt(i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* @CGX_FIFO_LEN, align 4
  %72 = load i32, i32* %7, align 4
  %73 = sdiv i32 %71, %72
  %74 = load i32, i32* @NIC_HW_MAX_FRS, align 4
  %75 = sub nsw i32 %73, %74
  %76 = sdiv i32 %75, 16
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = shl i32 %77, 12
  %79 = or i32 %78, 2044
  %80 = call i32 @BIT_ULL(i32 1)
  %81 = or i32 %79, %80
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %5, align 8
  %84 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %82, %85
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %107, %66
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %90, %91
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %88
  %95 = load %struct.rvu*, %struct.rvu** %3, align 8
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @NIX_AF_TX_LINKX_NORM_CREDIT(i32 %97)
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @rvu_write64(%struct.rvu* %95, i32 %96, i32 %98, i32 %99)
  %101 = load %struct.rvu*, %struct.rvu** %3, align 8
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @NIX_AF_TX_LINKX_EXPR_CREDIT(i32 %103)
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @rvu_write64(%struct.rvu* %101, i32 %102, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %94
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  br label %88

110:                                              ; preds = %88
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %60

114:                                              ; preds = %60
  %115 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %5, align 8
  %116 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %145, %114
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %5, align 8
  %123 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %121, %124
  %126 = icmp slt i32 %120, %125
  br i1 %126, label %127, label %148

127:                                              ; preds = %119
  store i32 1000, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = shl i32 %128, 12
  %130 = or i32 %129, 2044
  %131 = call i32 @BIT_ULL(i32 1)
  %132 = or i32 %130, %131
  store i32 %132, i32* %10, align 4
  %133 = load %struct.rvu*, %struct.rvu** %3, align 8
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @NIX_AF_TX_LINKX_NORM_CREDIT(i32 %135)
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @rvu_write64(%struct.rvu* %133, i32 %134, i32 %136, i32 %137)
  %139 = load %struct.rvu*, %struct.rvu** %3, align 8
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @NIX_AF_TX_LINKX_EXPR_CREDIT(i32 %141)
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @rvu_write64(%struct.rvu* %139, i32 %140, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %127
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %9, align 4
  br label %119

148:                                              ; preds = %119
  ret void
}

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @NIX_AF_RX_LINKX_CFG(i32) #1

declare dso_local i32 @cgx_get_lmac_cnt(i32) #1

declare dso_local i32 @rvu_cgx_pdata(i32, %struct.rvu*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @NIX_AF_TX_LINKX_NORM_CREDIT(i32) #1

declare dso_local i32 @NIX_AF_TX_LINKX_EXPR_CREDIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
