; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils.c_hw_atl_utils_init_ucp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils.c_hw_atl_utils_init_ucp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }
%struct.aq_hw_caps_s = type { i32 }

@HW_ATL_UCP_0X370_REG = common dso_local global i32 0, align 4
@hw_atl_scrpad25_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*, %struct.aq_hw_caps_s*)* @hw_atl_utils_init_ucp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_utils_init_ucp(%struct.aq_hw_s* %0, %struct.aq_hw_caps_s* %1) #0 {
  %3 = alloca %struct.aq_hw_s*, align 8
  %4 = alloca %struct.aq_hw_caps_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %3, align 8
  store %struct.aq_hw_caps_s* %1, %struct.aq_hw_caps_s** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %9 = call i32 @aq_hw_read_reg(%struct.aq_hw_s* %8, i32 880)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = call i32 @get_random_bytes(i32* %6, i32 4)
  %13 = load i32, i32* %6, align 4
  %14 = and i32 -16843010, %13
  %15 = or i32 33686018, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %17 = load i32, i32* @HW_ATL_UCP_0X370_REG, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %11, %2
  %21 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %22 = call i32 @hw_atl_reg_glb_cpu_scratch_scp_set(%struct.aq_hw_s* %21, i32 0, i32 25)
  %23 = load i32, i32* @hw_atl_scrpad25_get, align 4
  %24 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %25 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %26 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %29 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @readx_poll_timeout_atomic(i32 %23, %struct.aq_hw_s* %24, i32 %27, i32 %32, i32 1000, i32 10000)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @aq_hw_read_reg(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @aq_hw_write_reg(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_reg_glb_cpu_scratch_scp_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @readx_poll_timeout_atomic(i32, %struct.aq_hw_s*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
