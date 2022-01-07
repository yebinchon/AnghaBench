; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb4_alloc_atid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb4_alloc_atid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tid_info = type { i32, i32, i32, %union.aopen_entry*, %union.aopen_entry* }
%union.aopen_entry = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_alloc_atid(%struct.tid_info* %0, i8* %1) #0 {
  %3 = alloca %struct.tid_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.aopen_entry*, align 8
  store %struct.tid_info* %0, %struct.tid_info** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 -1, i32* %5, align 4
  %7 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %8 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %7, i32 0, i32 1
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %11 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %10, i32 0, i32 3
  %12 = load %union.aopen_entry*, %union.aopen_entry** %11, align 8
  %13 = icmp ne %union.aopen_entry* %12, null
  br i1 %13, label %14, label %44

14:                                               ; preds = %2
  %15 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %16 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %15, i32 0, i32 3
  %17 = load %union.aopen_entry*, %union.aopen_entry** %16, align 8
  store %union.aopen_entry* %17, %union.aopen_entry** %6, align 8
  %18 = load %union.aopen_entry*, %union.aopen_entry** %6, align 8
  %19 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %20 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %19, i32 0, i32 4
  %21 = load %union.aopen_entry*, %union.aopen_entry** %20, align 8
  %22 = ptrtoint %union.aopen_entry* %18 to i64
  %23 = ptrtoint %union.aopen_entry* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 8
  %26 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %27 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %25, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  %32 = load %union.aopen_entry*, %union.aopen_entry** %6, align 8
  %33 = bitcast %union.aopen_entry* %32 to %union.aopen_entry**
  %34 = load %union.aopen_entry*, %union.aopen_entry** %33, align 8
  %35 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %36 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %35, i32 0, i32 3
  store %union.aopen_entry* %34, %union.aopen_entry** %36, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = load %union.aopen_entry*, %union.aopen_entry** %6, align 8
  %39 = bitcast %union.aopen_entry* %38 to i8**
  store i8* %37, i8** %39, align 8
  %40 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %41 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %14, %2
  %45 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %46 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %45, i32 0, i32 1
  %47 = call i32 @spin_unlock_bh(i32* %46)
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
