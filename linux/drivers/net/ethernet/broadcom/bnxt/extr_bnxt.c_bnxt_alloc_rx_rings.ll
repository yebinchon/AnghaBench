; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_alloc_rx_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_alloc_rx_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, i32, %struct.bnxt_rx_ring_info* }
%struct.bnxt_rx_ring_info = type { i32, i32, %struct.bnxt_ring_struct, i32, i32, %struct.bnxt_ring_struct }
%struct.bnxt_ring_struct = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@BNXT_FLAG_AGG_RINGS = common dso_local global i32 0, align 4
@MEM_TYPE_PAGE_POOL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BNXT_FLAG_TPA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_alloc_rx_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_alloc_rx_rings(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnxt_rx_ring_info*, align 8
  %8 = alloca %struct.bnxt_ring_struct*, align 8
  %9 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %11 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %10, i32 0, i32 4
  %12 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %11, align 8
  %13 = icmp ne %struct.bnxt_rx_ring_info* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %144

17:                                               ; preds = %1
  %18 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %19 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @BNXT_FLAG_AGG_RINGS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 1, i32* %6, align 4
  br label %25

25:                                               ; preds = %24, %17
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %129, %25
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %29 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %132

32:                                               ; preds = %26
  %33 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %34 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %33, i32 0, i32 4
  %35 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %35, i64 %37
  store %struct.bnxt_rx_ring_info* %38, %struct.bnxt_rx_ring_info** %7, align 8
  %39 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %40 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %39, i32 0, i32 5
  store %struct.bnxt_ring_struct* %40, %struct.bnxt_ring_struct** %8, align 8
  %41 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %42 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %43 = call i32 @bnxt_alloc_rx_page_pool(%struct.bnxt* %41, %struct.bnxt_rx_ring_info* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %32
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %144

48:                                               ; preds = %32
  %49 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %50 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %49, i32 0, i32 3
  %51 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %52 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @xdp_rxq_info_reg(i32* %50, i32 %53, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %144

60:                                               ; preds = %48
  %61 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %62 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %61, i32 0, i32 3
  %63 = load i32, i32* @MEM_TYPE_PAGE_POOL, align 4
  %64 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %65 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @xdp_rxq_info_reg_mem_model(i32* %62, i32 %63, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %72 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %71, i32 0, i32 3
  %73 = call i32 @xdp_rxq_info_unreg(i32* %72)
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %144

75:                                               ; preds = %60
  %76 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %77 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %8, align 8
  %78 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %77, i32 0, i32 1
  %79 = call i32 @bnxt_alloc_ring(%struct.bnxt* %76, i32* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %144

84:                                               ; preds = %75
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %8, align 8
  %87 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %128

90:                                               ; preds = %84
  %91 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %92 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %91, i32 0, i32 2
  store %struct.bnxt_ring_struct* %92, %struct.bnxt_ring_struct** %8, align 8
  %93 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %94 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %8, align 8
  %95 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %94, i32 0, i32 1
  %96 = call i32 @bnxt_alloc_ring(%struct.bnxt* %93, i32* %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load i32, i32* %5, align 4
  store i32 %100, i32* %2, align 4
  br label %144

101:                                              ; preds = %90
  %102 = load i32, i32* %4, align 4
  %103 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %8, align 8
  %104 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %106 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  %109 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %110 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %112 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sdiv i32 %113, 8
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call i32 @kzalloc(i32 %115, i32 %116)
  %118 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %119 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %121 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %101
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %2, align 4
  br label %144

127:                                              ; preds = %101
  br label %128

128:                                              ; preds = %127, %84
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %4, align 4
  br label %26

132:                                              ; preds = %26
  %133 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %134 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @BNXT_FLAG_TPA, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %132
  %140 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %141 = call i32 @bnxt_alloc_tpa_info(%struct.bnxt* %140)
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %139, %132
  %143 = load i32, i32* %5, align 4
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %142, %124, %99, %82, %70, %58, %46, %14
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32 @bnxt_alloc_rx_page_pool(%struct.bnxt*, %struct.bnxt_rx_ring_info*) #1

declare dso_local i32 @xdp_rxq_info_reg(i32*, i32, i32) #1

declare dso_local i32 @xdp_rxq_info_reg_mem_model(i32*, i32, i32) #1

declare dso_local i32 @xdp_rxq_info_unreg(i32*) #1

declare dso_local i32 @bnxt_alloc_ring(%struct.bnxt*, i32*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @bnxt_alloc_tpa_info(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
