; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_rotate_priolists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_rotate_priolists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i64, %struct.TYPE_4__, %struct.mwifiex_adapter* }
%struct.TYPE_4__ = type { i32, i32*, %struct.mwifiex_tid_tbl* }
%struct.mwifiex_tid_tbl = type { i32 }
%struct.mwifiex_adapter = type { %struct.mwifiex_bss_prio_tbl* }
%struct.mwifiex_bss_prio_tbl = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mwifiex_ra_list_tbl = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_rotate_priolists(%struct.mwifiex_private* %0, %struct.mwifiex_ra_list_tbl* %1, i32 %2) #0 {
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.mwifiex_ra_list_tbl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mwifiex_adapter*, align 8
  %8 = alloca %struct.mwifiex_bss_prio_tbl*, align 8
  %9 = alloca %struct.mwifiex_tid_tbl*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.mwifiex_ra_list_tbl* %1, %struct.mwifiex_ra_list_tbl** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %11 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %10, i32 0, i32 2
  %12 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %11, align 8
  store %struct.mwifiex_adapter* %12, %struct.mwifiex_adapter** %7, align 8
  %13 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %14 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %13, i32 0, i32 0
  %15 = load %struct.mwifiex_bss_prio_tbl*, %struct.mwifiex_bss_prio_tbl** %14, align 8
  store %struct.mwifiex_bss_prio_tbl* %15, %struct.mwifiex_bss_prio_tbl** %8, align 8
  %16 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %17 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load %struct.mwifiex_tid_tbl*, %struct.mwifiex_tid_tbl** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mwifiex_tid_tbl, %struct.mwifiex_tid_tbl* %19, i64 %21
  store %struct.mwifiex_tid_tbl* %22, %struct.mwifiex_tid_tbl** %9, align 8
  %23 = load %struct.mwifiex_bss_prio_tbl*, %struct.mwifiex_bss_prio_tbl** %8, align 8
  %24 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %25 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.mwifiex_bss_prio_tbl, %struct.mwifiex_bss_prio_tbl* %23, i64 %26
  %28 = getelementptr inbounds %struct.mwifiex_bss_prio_tbl, %struct.mwifiex_bss_prio_tbl* %27, i32 0, i32 0
  %29 = call i32 @spin_lock_bh(i32* %28)
  %30 = load %struct.mwifiex_bss_prio_tbl*, %struct.mwifiex_bss_prio_tbl** %8, align 8
  %31 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %32 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.mwifiex_bss_prio_tbl, %struct.mwifiex_bss_prio_tbl* %30, i64 %33
  %35 = getelementptr inbounds %struct.mwifiex_bss_prio_tbl, %struct.mwifiex_bss_prio_tbl* %34, i32 0, i32 2
  %36 = load %struct.mwifiex_bss_prio_tbl*, %struct.mwifiex_bss_prio_tbl** %8, align 8
  %37 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %38 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.mwifiex_bss_prio_tbl, %struct.mwifiex_bss_prio_tbl* %36, i64 %39
  %41 = getelementptr inbounds %struct.mwifiex_bss_prio_tbl, %struct.mwifiex_bss_prio_tbl* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = call i32 @list_move(i32* %35, i32* %43)
  %45 = load %struct.mwifiex_bss_prio_tbl*, %struct.mwifiex_bss_prio_tbl** %8, align 8
  %46 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %47 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.mwifiex_bss_prio_tbl, %struct.mwifiex_bss_prio_tbl* %45, i64 %48
  %50 = getelementptr inbounds %struct.mwifiex_bss_prio_tbl, %struct.mwifiex_bss_prio_tbl* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock_bh(i32* %50)
  %52 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %53 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @spin_lock_bh(i32* %54)
  %56 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %57 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i64 @mwifiex_is_ralist_valid(%struct.mwifiex_private* %56, %struct.mwifiex_ra_list_tbl* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %3
  %62 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %63 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.mwifiex_tid_tbl*, %struct.mwifiex_tid_tbl** %9, align 8
  %72 = getelementptr inbounds %struct.mwifiex_tid_tbl, %struct.mwifiex_tid_tbl* %71, i32 0, i32 0
  %73 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %5, align 8
  %74 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %73, i32 0, i32 0
  %75 = call i32 @list_move(i32* %72, i32* %74)
  br label %76

76:                                               ; preds = %61, %3
  %77 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %78 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = call i32 @spin_unlock_bh(i32* %79)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @mwifiex_is_ralist_valid(%struct.mwifiex_private*, %struct.mwifiex_ra_list_tbl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
