; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_rss_hash_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_rss_hash_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { %struct.aq_nic_cfg_s* }
%struct.aq_nic_cfg_s = type { i64 }
%struct.aq_rss_parameters = type { i32* }

@hw_atl_rpf_rss_key_wr_en_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*, %struct.aq_rss_parameters*)* @hw_atl_b0_hw_rss_hash_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_b0_hw_rss_hash_set(%struct.aq_hw_s* %0, %struct.aq_rss_parameters* %1) #0 {
  %3 = alloca %struct.aq_hw_s*, align 8
  %4 = alloca %struct.aq_rss_parameters*, align 8
  %5 = alloca %struct.aq_nic_cfg_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %3, align 8
  store %struct.aq_rss_parameters* %1, %struct.aq_rss_parameters** %4, align 8
  %11 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %12 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %11, i32 0, i32 0
  %13 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %12, align 8
  store %struct.aq_nic_cfg_s* %13, %struct.aq_nic_cfg_s** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 10, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %55, %2
  %15 = load i32, i32* %7, align 4
  %16 = add i32 %15, -1
  store i32 %16, i32* %7, align 4
  %17 = icmp ne i32 %15, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %14
  %19 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %5, align 8
  %20 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.aq_rss_parameters*, %struct.aq_rss_parameters** %4, align 8
  %25 = getelementptr inbounds %struct.aq_rss_parameters, %struct.aq_rss_parameters* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @__swab32(i32 %30)
  br label %33

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32, %23
  %34 = phi i32 [ %31, %23 ], [ 0, %32 ]
  %35 = zext i32 %34 to i64
  store i64 %35, i64* %10, align 8
  %36 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @hw_atl_rpf_rss_key_wr_data_set(%struct.aq_hw_s* %36, i64 %37)
  %39 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @hw_atl_rpf_rss_key_addr_set(%struct.aq_hw_s* %39, i32 %40)
  %42 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %43 = call i32 @hw_atl_rpf_rss_key_wr_en_set(%struct.aq_hw_s* %42, i32 1)
  %44 = load i32, i32* @hw_atl_rpf_rss_key_wr_en_get, align 4
  %45 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @readx_poll_timeout_atomic(i32 %44, %struct.aq_hw_s* %45, i64 %46, i32 %49, i32 1000, i32 10000)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %33
  br label %61

54:                                               ; preds = %33
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %14

58:                                               ; preds = %14
  %59 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %60 = call i32 @aq_hw_err_from_flags(%struct.aq_hw_s* %59)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @__swab32(i32) #1

declare dso_local i32 @hw_atl_rpf_rss_key_wr_data_set(%struct.aq_hw_s*, i64) #1

declare dso_local i32 @hw_atl_rpf_rss_key_addr_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rpf_rss_key_wr_en_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @readx_poll_timeout_atomic(i32, %struct.aq_hw_s*, i64, i32, i32, i32) #1

declare dso_local i32 @aq_hw_err_from_flags(%struct.aq_hw_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
