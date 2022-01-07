; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_smt.c_t4_smt_alloc_switching.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_smt.c_t4_smt_alloc_switching.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smt_entry = type { i32, i32, i32, i32, i32 }
%struct.adapter = type { %struct.smt_data* }
%struct.smt_data = type { i32 }

@SMT_STATE_SWITCHING = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.smt_entry* (%struct.adapter*, i32, i32*)* @t4_smt_alloc_switching to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.smt_entry* @t4_smt_alloc_switching(%struct.adapter* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.smt_data*, align 8
  %8 = alloca %struct.smt_entry*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.adapter*, %struct.adapter** %4, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  %11 = load %struct.smt_data*, %struct.smt_data** %10, align 8
  store %struct.smt_data* %11, %struct.smt_data** %7, align 8
  %12 = load %struct.smt_data*, %struct.smt_data** %7, align 8
  %13 = getelementptr inbounds %struct.smt_data, %struct.smt_data* %12, i32 0, i32 0
  %14 = call i32 @write_lock_bh(i32* %13)
  %15 = load %struct.smt_data*, %struct.smt_data** %7, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call %struct.smt_entry* @find_or_alloc_smte(%struct.smt_data* %15, i32* %16)
  store %struct.smt_entry* %17, %struct.smt_entry** %8, align 8
  %18 = load %struct.smt_entry*, %struct.smt_entry** %8, align 8
  %19 = icmp ne %struct.smt_entry* %18, null
  br i1 %19, label %20, label %55

20:                                               ; preds = %3
  %21 = load %struct.smt_entry*, %struct.smt_entry** %8, align 8
  %22 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %21, i32 0, i32 1
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.smt_entry*, %struct.smt_entry** %8, align 8
  %25 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %20
  %29 = load %struct.smt_entry*, %struct.smt_entry** %8, align 8
  %30 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load i32, i32* @SMT_STATE_SWITCHING, align 4
  %32 = load %struct.smt_entry*, %struct.smt_entry** %8, align 8
  %33 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.smt_entry*, %struct.smt_entry** %8, align 8
  %36 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.smt_entry*, %struct.smt_entry** %8, align 8
  %38 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = call i32 @memcpy(i32 %39, i32* %40, i32 %41)
  %43 = load %struct.adapter*, %struct.adapter** %4, align 8
  %44 = load %struct.smt_entry*, %struct.smt_entry** %8, align 8
  %45 = call i32 @write_smt_entry(%struct.adapter* %43, %struct.smt_entry* %44)
  br label %51

46:                                               ; preds = %20
  %47 = load %struct.smt_entry*, %struct.smt_entry** %8, align 8
  %48 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %46, %28
  %52 = load %struct.smt_entry*, %struct.smt_entry** %8, align 8
  %53 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %52, i32 0, i32 1
  %54 = call i32 @spin_unlock(i32* %53)
  br label %55

55:                                               ; preds = %51, %3
  %56 = load %struct.smt_data*, %struct.smt_data** %7, align 8
  %57 = getelementptr inbounds %struct.smt_data, %struct.smt_data* %56, i32 0, i32 0
  %58 = call i32 @write_unlock_bh(i32* %57)
  %59 = load %struct.smt_entry*, %struct.smt_entry** %8, align 8
  ret %struct.smt_entry* %59
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local %struct.smt_entry* @find_or_alloc_smte(%struct.smt_data*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @write_smt_entry(%struct.adapter*, %struct.smt_entry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
