; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/libcxgb/extr_libcxgb_ppm.h_cxgbi_ppm_ddp_tag_get_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/libcxgb/extr_libcxgb_ppm.h_cxgbi_ppm_ddp_tag_get_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_ppm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PPOD_IDX_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_ppm*, i32)* @cxgbi_ppm_ddp_tag_get_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbi_ppm_ddp_tag_get_idx(%struct.cxgbi_ppm* %0, i32 %1) #0 {
  %3 = alloca %struct.cxgbi_ppm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cxgbi_ppm* %0, %struct.cxgbi_ppm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @PPOD_IDX_SHIFT, align 4
  %8 = ashr i32 %6, %7
  %9 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %3, align 8
  %10 = getelementptr inbounds %struct.cxgbi_ppm, %struct.cxgbi_ppm* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %8, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %3, align 8
  %16 = getelementptr inbounds %struct.cxgbi_ppm, %struct.cxgbi_ppm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %14, %17
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
