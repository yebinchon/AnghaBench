; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c___ice_vsi_get_qs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c___ice_vsi_get_qs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_qs_cfg = type { i32, i32, i32 }

@ICE_VSI_MAP_SCATTER = common dso_local global i32 0, align 4
@u16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_qs_cfg*)* @__ice_vsi_get_qs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ice_vsi_get_qs(%struct.ice_qs_cfg* %0) #0 {
  %2 = alloca %struct.ice_qs_cfg*, align 8
  %3 = alloca i32, align 4
  store %struct.ice_qs_cfg* %0, %struct.ice_qs_cfg** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %2, align 8
  %5 = call i32 @__ice_vsi_get_qs_contig(%struct.ice_qs_cfg* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load i32, i32* @ICE_VSI_MAP_SCATTER, align 4
  %10 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %2, align 8
  %11 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @u16, align 4
  %13 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %2, align 8
  %14 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %2, align 8
  %17 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @min_t(i32 %12, i32 %15, i32 %18)
  %20 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %2, align 8
  %21 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %2, align 8
  %23 = call i32 @__ice_vsi_get_qs_sc(%struct.ice_qs_cfg* %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %8, %1
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @__ice_vsi_get_qs_contig(%struct.ice_qs_cfg*) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @__ice_vsi_get_qs_sc(%struct.ice_qs_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
