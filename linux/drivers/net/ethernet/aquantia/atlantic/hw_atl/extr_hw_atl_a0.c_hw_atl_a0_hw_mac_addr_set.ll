; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_a0.c_hw_atl_a0_hw_mac_addr_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_a0.c_hw_atl_a0_hw_mac_addr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@HW_ATL_A0_MAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*, i32*)* @hw_atl_a0_hw_mac_addr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_a0_hw_mac_addr_set(%struct.aq_hw_s* %0, i32* %1) #0 {
  %3 = alloca %struct.aq_hw_s*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %5, align 4
  br label %56

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 8
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %17, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 24
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 16
  %30 = or i32 %25, %29
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 8
  %35 = or i32 %30, %34
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %35, %38
  store i32 %39, i32* %7, align 4
  %40 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %41 = load i32, i32* @HW_ATL_A0_MAC, align 4
  %42 = call i32 @hw_atl_rpfl2_uc_flr_en_set(%struct.aq_hw_s* %40, i32 0, i32 %41)
  %43 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @HW_ATL_A0_MAC, align 4
  %46 = call i32 @hw_atl_rpfl2unicast_dest_addresslsw_set(%struct.aq_hw_s* %43, i32 %44, i32 %45)
  %47 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @HW_ATL_A0_MAC, align 4
  %50 = call i32 @hw_atl_rpfl2unicast_dest_addressmsw_set(%struct.aq_hw_s* %47, i32 %48, i32 %49)
  %51 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %52 = load i32, i32* @HW_ATL_A0_MAC, align 4
  %53 = call i32 @hw_atl_rpfl2_uc_flr_en_set(%struct.aq_hw_s* %51, i32 1, i32 %52)
  %54 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %55 = call i32 @aq_hw_err_from_flags(%struct.aq_hw_s* %54)
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %13, %10
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @hw_atl_rpfl2_uc_flr_en_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpfl2unicast_dest_addresslsw_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpfl2unicast_dest_addressmsw_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @aq_hw_err_from_flags(%struct.aq_hw_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
