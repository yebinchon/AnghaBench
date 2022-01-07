; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_alloc_cp_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_alloc_cp_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, i32, %struct.bnxt_napi** }
%struct.bnxt_napi = type { %struct.bnxt_cp_ring_info }
%struct.bnxt_cp_ring_info = type { %struct.bnxt_napi*, %struct.bnxt_cp_ring_info**, %struct.bnxt_ring_struct }
%struct.bnxt_ring_struct = type { i32, i32 }

@BNXT_FLAG_SHARED_RINGS = common dso_local global i32 0, align 4
@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@BNXT_RX_HDL = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@BNXT_TX_HDL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_alloc_cp_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_alloc_cp_rings(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnxt_napi*, align 8
  %10 = alloca %struct.bnxt_cp_ring_info*, align 8
  %11 = alloca %struct.bnxt_ring_struct*, align 8
  %12 = alloca %struct.bnxt_cp_ring_info*, align 8
  %13 = alloca %struct.bnxt_cp_ring_info*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  %14 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %15 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @BNXT_FLAG_SHARED_RINGS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %4, align 4
  %23 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %24 = call i32 @bnxt_get_ulp_msix_num(%struct.bnxt* %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %26 = call i32 @bnxt_get_ulp_msix_base(%struct.bnxt* %25)
  store i32 %26, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %146, %1
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %30 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %149

33:                                               ; preds = %27
  %34 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %35 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %34, i32 0, i32 4
  %36 = load %struct.bnxt_napi**, %struct.bnxt_napi*** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.bnxt_napi*, %struct.bnxt_napi** %36, i64 %38
  %40 = load %struct.bnxt_napi*, %struct.bnxt_napi** %39, align 8
  store %struct.bnxt_napi* %40, %struct.bnxt_napi** %9, align 8
  %41 = load %struct.bnxt_napi*, %struct.bnxt_napi** %9, align 8
  %42 = icmp ne %struct.bnxt_napi* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  br label %146

44:                                               ; preds = %33
  %45 = load %struct.bnxt_napi*, %struct.bnxt_napi** %9, align 8
  %46 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %45, i32 0, i32 0
  store %struct.bnxt_cp_ring_info* %46, %struct.bnxt_cp_ring_info** %10, align 8
  %47 = load %struct.bnxt_napi*, %struct.bnxt_napi** %9, align 8
  %48 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %10, align 8
  %49 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %48, i32 0, i32 0
  store %struct.bnxt_napi* %47, %struct.bnxt_napi** %49, align 8
  %50 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %10, align 8
  %51 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %50, i32 0, i32 2
  store %struct.bnxt_ring_struct* %51, %struct.bnxt_ring_struct** %11, align 8
  %52 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %53 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %11, align 8
  %54 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %53, i32 0, i32 1
  %55 = call i32 @bnxt_alloc_ring(%struct.bnxt* %52, i32* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %44
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %150

60:                                               ; preds = %44
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %68, %69
  %71 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %11, align 8
  %72 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %77

73:                                               ; preds = %63, %60
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %11, align 8
  %76 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %73, %67
  %78 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %79 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %77
  br label %146

85:                                               ; preds = %77
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %88 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %85
  %92 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %93 = call %struct.bnxt_cp_ring_info* @bnxt_alloc_cp_sub_ring(%struct.bnxt* %92)
  store %struct.bnxt_cp_ring_info* %93, %struct.bnxt_cp_ring_info** %12, align 8
  %94 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %12, align 8
  %95 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %10, align 8
  %96 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %95, i32 0, i32 1
  %97 = load %struct.bnxt_cp_ring_info**, %struct.bnxt_cp_ring_info*** %96, align 8
  %98 = load i64, i64* @BNXT_RX_HDL, align 8
  %99 = getelementptr inbounds %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %97, i64 %98
  store %struct.bnxt_cp_ring_info* %94, %struct.bnxt_cp_ring_info** %99, align 8
  %100 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %12, align 8
  %101 = icmp ne %struct.bnxt_cp_ring_info* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %91
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %150

105:                                              ; preds = %91
  %106 = load %struct.bnxt_napi*, %struct.bnxt_napi** %9, align 8
  %107 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %12, align 8
  %108 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %107, i32 0, i32 0
  store %struct.bnxt_napi* %106, %struct.bnxt_napi** %108, align 8
  br label %109

109:                                              ; preds = %105, %85
  %110 = load i32, i32* %4, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %115 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %127, label %118

118:                                              ; preds = %112, %109
  %119 = load i32, i32* %4, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %145, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %124 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp sge i32 %122, %125
  br i1 %126, label %127, label %145

127:                                              ; preds = %121, %112
  %128 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %129 = call %struct.bnxt_cp_ring_info* @bnxt_alloc_cp_sub_ring(%struct.bnxt* %128)
  store %struct.bnxt_cp_ring_info* %129, %struct.bnxt_cp_ring_info** %13, align 8
  %130 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %13, align 8
  %131 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %10, align 8
  %132 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %131, i32 0, i32 1
  %133 = load %struct.bnxt_cp_ring_info**, %struct.bnxt_cp_ring_info*** %132, align 8
  %134 = load i64, i64* @BNXT_TX_HDL, align 8
  %135 = getelementptr inbounds %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %133, i64 %134
  store %struct.bnxt_cp_ring_info* %130, %struct.bnxt_cp_ring_info** %135, align 8
  %136 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %13, align 8
  %137 = icmp ne %struct.bnxt_cp_ring_info* %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %127
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %2, align 4
  br label %150

141:                                              ; preds = %127
  %142 = load %struct.bnxt_napi*, %struct.bnxt_napi** %9, align 8
  %143 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %13, align 8
  %144 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %143, i32 0, i32 0
  store %struct.bnxt_napi* %142, %struct.bnxt_napi** %144, align 8
  br label %145

145:                                              ; preds = %141, %121, %118
  br label %146

146:                                              ; preds = %145, %84, %43
  %147 = load i32, i32* %5, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %5, align 4
  br label %27

149:                                              ; preds = %27
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %149, %138, %102, %58
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @bnxt_get_ulp_msix_num(%struct.bnxt*) #1

declare dso_local i32 @bnxt_get_ulp_msix_base(%struct.bnxt*) #1

declare dso_local i32 @bnxt_alloc_ring(%struct.bnxt*, i32*) #1

declare dso_local %struct.bnxt_cp_ring_info* @bnxt_alloc_cp_sub_ring(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
