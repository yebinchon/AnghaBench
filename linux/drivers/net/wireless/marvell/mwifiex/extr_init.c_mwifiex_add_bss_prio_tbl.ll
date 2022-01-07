; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_init.c_mwifiex_add_bss_prio_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_init.c_mwifiex_add_bss_prio_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i64, %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { %struct.mwifiex_bss_prio_tbl* }
%struct.mwifiex_bss_prio_tbl = type { i32, i32 }
%struct.mwifiex_bss_prio_node = type { i32, %struct.mwifiex_private* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*)* @mwifiex_add_bss_prio_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_add_bss_prio_tbl(%struct.mwifiex_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.mwifiex_adapter*, align 8
  %5 = alloca %struct.mwifiex_bss_prio_node*, align 8
  %6 = alloca %struct.mwifiex_bss_prio_tbl*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  %7 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %8 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %7, i32 0, i32 1
  %9 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  store %struct.mwifiex_adapter* %9, %struct.mwifiex_adapter** %4, align 8
  %10 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %10, i32 0, i32 0
  %12 = load %struct.mwifiex_bss_prio_tbl*, %struct.mwifiex_bss_prio_tbl** %11, align 8
  store %struct.mwifiex_bss_prio_tbl* %12, %struct.mwifiex_bss_prio_tbl** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.mwifiex_bss_prio_node* @kzalloc(i32 16, i32 %13)
  store %struct.mwifiex_bss_prio_node* %14, %struct.mwifiex_bss_prio_node** %5, align 8
  %15 = load %struct.mwifiex_bss_prio_node*, %struct.mwifiex_bss_prio_node** %5, align 8
  %16 = icmp ne %struct.mwifiex_bss_prio_node* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %50

20:                                               ; preds = %1
  %21 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %22 = load %struct.mwifiex_bss_prio_node*, %struct.mwifiex_bss_prio_node** %5, align 8
  %23 = getelementptr inbounds %struct.mwifiex_bss_prio_node, %struct.mwifiex_bss_prio_node* %22, i32 0, i32 1
  store %struct.mwifiex_private* %21, %struct.mwifiex_private** %23, align 8
  %24 = load %struct.mwifiex_bss_prio_node*, %struct.mwifiex_bss_prio_node** %5, align 8
  %25 = getelementptr inbounds %struct.mwifiex_bss_prio_node, %struct.mwifiex_bss_prio_node* %24, i32 0, i32 0
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.mwifiex_bss_prio_tbl*, %struct.mwifiex_bss_prio_tbl** %6, align 8
  %28 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %29 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.mwifiex_bss_prio_tbl, %struct.mwifiex_bss_prio_tbl* %27, i64 %30
  %32 = getelementptr inbounds %struct.mwifiex_bss_prio_tbl, %struct.mwifiex_bss_prio_tbl* %31, i32 0, i32 0
  %33 = call i32 @spin_lock_bh(i32* %32)
  %34 = load %struct.mwifiex_bss_prio_node*, %struct.mwifiex_bss_prio_node** %5, align 8
  %35 = getelementptr inbounds %struct.mwifiex_bss_prio_node, %struct.mwifiex_bss_prio_node* %34, i32 0, i32 0
  %36 = load %struct.mwifiex_bss_prio_tbl*, %struct.mwifiex_bss_prio_tbl** %6, align 8
  %37 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %38 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.mwifiex_bss_prio_tbl, %struct.mwifiex_bss_prio_tbl* %36, i64 %39
  %41 = getelementptr inbounds %struct.mwifiex_bss_prio_tbl, %struct.mwifiex_bss_prio_tbl* %40, i32 0, i32 1
  %42 = call i32 @list_add_tail(i32* %35, i32* %41)
  %43 = load %struct.mwifiex_bss_prio_tbl*, %struct.mwifiex_bss_prio_tbl** %6, align 8
  %44 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %45 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.mwifiex_bss_prio_tbl, %struct.mwifiex_bss_prio_tbl* %43, i64 %46
  %48 = getelementptr inbounds %struct.mwifiex_bss_prio_tbl, %struct.mwifiex_bss_prio_tbl* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock_bh(i32* %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %20, %17
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.mwifiex_bss_prio_node* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
