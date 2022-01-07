; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isph3a_aewb.c_h3a_aewb_get_buf_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isph3a_aewb.c_h3a_aewb_get_buf_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap3isp_h3a_aewb_config = type { i32, i32 }

@AEWB_PACKET_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap3isp_h3a_aewb_config*)* @h3a_aewb_get_buf_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h3a_aewb_get_buf_size(%struct.omap3isp_h3a_aewb_config* %0) #0 {
  %2 = alloca %struct.omap3isp_h3a_aewb_config*, align 8
  %3 = alloca i32, align 4
  store %struct.omap3isp_h3a_aewb_config* %0, %struct.omap3isp_h3a_aewb_config** %2, align 8
  %4 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %2, align 8
  %5 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = add nsw i32 %6, 1
  %8 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %2, align 8
  %9 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %7, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 7
  %14 = sdiv i32 %13, 8
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @AEWB_PACKET_SIZE, align 4
  %19 = mul nsw i32 %17, %18
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
