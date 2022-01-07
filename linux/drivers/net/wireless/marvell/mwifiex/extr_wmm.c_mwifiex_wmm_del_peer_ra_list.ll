; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_wmm_del_peer_ra_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_wmm_del_peer_ra_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32* }
%struct.mwifiex_ra_list_tbl = type { i32, i64, i64 }

@MAX_NUM_TID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_wmm_del_peer_ra_list(%struct.mwifiex_private* %0, i32* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mwifiex_ra_list_tbl*, align 8
  %6 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %8 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_bh(i32* %9)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %60, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MAX_NUM_TID, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %63

15:                                               ; preds = %11
  %16 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = call %struct.mwifiex_ra_list_tbl* @mwifiex_wmm_get_ralist_node(%struct.mwifiex_private* %16, i32 %17, i32* %18)
  store %struct.mwifiex_ra_list_tbl* %19, %struct.mwifiex_ra_list_tbl** %5, align 8
  %20 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %5, align 8
  %21 = icmp ne %struct.mwifiex_ra_list_tbl* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  br label %60

23:                                               ; preds = %15
  %24 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %25 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %5, align 8
  %26 = call i32 @mwifiex_wmm_del_pkts_in_ralist_node(%struct.mwifiex_private* %24, %struct.mwifiex_ra_list_tbl* %25)
  %27 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %5, align 8
  %28 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %23
  %32 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %5, align 8
  %33 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %36 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = sub nsw i64 %43, %34
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 4
  br label %54

46:                                               ; preds = %23
  %47 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %5, align 8
  %48 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %51 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = call i32 @atomic_sub(i64 %49, i32* %52)
  br label %54

54:                                               ; preds = %46, %31
  %55 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %5, align 8
  %56 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %55, i32 0, i32 0
  %57 = call i32 @list_del(i32* %56)
  %58 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %5, align 8
  %59 = call i32 @kfree(%struct.mwifiex_ra_list_tbl* %58)
  br label %60

60:                                               ; preds = %54, %22
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %11

63:                                               ; preds = %11
  %64 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %65 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @spin_unlock_bh(i32* %66)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.mwifiex_ra_list_tbl* @mwifiex_wmm_get_ralist_node(%struct.mwifiex_private*, i32, i32*) #1

declare dso_local i32 @mwifiex_wmm_del_pkts_in_ralist_node(%struct.mwifiex_private*, %struct.mwifiex_ra_list_tbl*) #1

declare dso_local i32 @atomic_sub(i64, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.mwifiex_ra_list_tbl*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
