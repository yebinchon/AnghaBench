; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_wmm_get_queue_raptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_wmm_get_queue_raptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_ra_list_tbl = type { i32 }
%struct.mwifiex_private = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mwifiex_ra_list_tbl* @mwifiex_wmm_get_queue_raptr(%struct.mwifiex_private* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mwifiex_ra_list_tbl*, align 8
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mwifiex_ra_list_tbl*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32*, i32** %7, align 8
  %12 = call %struct.mwifiex_ra_list_tbl* @mwifiex_wmm_get_ralist_node(%struct.mwifiex_private* %9, i32 %10, i32* %11)
  store %struct.mwifiex_ra_list_tbl* %12, %struct.mwifiex_ra_list_tbl** %8, align 8
  %13 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %8, align 8
  %14 = icmp ne %struct.mwifiex_ra_list_tbl* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %8, align 8
  store %struct.mwifiex_ra_list_tbl* %16, %struct.mwifiex_ra_list_tbl** %4, align 8
  br label %25

17:                                               ; preds = %3
  %18 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @mwifiex_ralist_add(%struct.mwifiex_private* %18, i32* %19)
  %21 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = call %struct.mwifiex_ra_list_tbl* @mwifiex_wmm_get_ralist_node(%struct.mwifiex_private* %21, i32 %22, i32* %23)
  store %struct.mwifiex_ra_list_tbl* %24, %struct.mwifiex_ra_list_tbl** %4, align 8
  br label %25

25:                                               ; preds = %17, %15
  %26 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %4, align 8
  ret %struct.mwifiex_ra_list_tbl* %26
}

declare dso_local %struct.mwifiex_ra_list_tbl* @mwifiex_wmm_get_ralist_node(%struct.mwifiex_private*, i32, i32*) #1

declare dso_local i32 @mwifiex_ralist_add(%struct.mwifiex_private*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
