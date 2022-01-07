; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_wmm_allocate_ralist_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_wmm_allocate_ralist_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_ra_list_tbl = type { i64, i32, i32, i32 }
%struct.mwifiex_adapter = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"info: allocated ra_list %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mwifiex_ra_list_tbl* (%struct.mwifiex_adapter*, i32*)* @mwifiex_wmm_allocate_ralist_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mwifiex_ra_list_tbl* @mwifiex_wmm_allocate_ralist_node(%struct.mwifiex_adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.mwifiex_ra_list_tbl*, align 8
  %4 = alloca %struct.mwifiex_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mwifiex_ra_list_tbl*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.mwifiex_ra_list_tbl* @kzalloc(i32 24, i32 %7)
  store %struct.mwifiex_ra_list_tbl* %8, %struct.mwifiex_ra_list_tbl** %6, align 8
  %9 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %10 = icmp ne %struct.mwifiex_ra_list_tbl* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.mwifiex_ra_list_tbl* null, %struct.mwifiex_ra_list_tbl** %3, align 8
  br label %32

12:                                               ; preds = %2
  %13 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %14 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %13, i32 0, i32 3
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %17 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %16, i32 0, i32 2
  %18 = call i32 @skb_queue_head_init(i32* %17)
  %19 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %20 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @ETH_ALEN, align 4
  %24 = call i32 @memcpy(i32 %21, i32* %22, i32 %23)
  %25 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %26 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %28 = load i32, i32* @INFO, align 4
  %29 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %30 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %27, i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.mwifiex_ra_list_tbl* %29)
  %31 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  store %struct.mwifiex_ra_list_tbl* %31, %struct.mwifiex_ra_list_tbl** %3, align 8
  br label %32

32:                                               ; preds = %12, %11
  %33 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %3, align 8
  ret %struct.mwifiex_ra_list_tbl* %33
}

declare dso_local %struct.mwifiex_ra_list_tbl* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, %struct.mwifiex_ra_list_tbl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
