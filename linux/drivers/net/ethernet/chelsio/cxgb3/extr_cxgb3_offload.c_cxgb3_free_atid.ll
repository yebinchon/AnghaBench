; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_offload.c_cxgb3_free_atid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_offload.c_cxgb3_free_atid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i32 }
%struct.tid_info = type { i32, i32, %union.active_open_entry* }
%union.active_open_entry = type { %union.active_open_entry* }
%struct.TYPE_4__ = type { %struct.tid_info }
%struct.TYPE_3__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cxgb3_free_atid(%struct.t3cdev* %0, i32 %1) #0 {
  %3 = alloca %struct.t3cdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tid_info*, align 8
  %6 = alloca %union.active_open_entry*, align 8
  %7 = alloca i8*, align 8
  store %struct.t3cdev* %0, %struct.t3cdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.t3cdev*, %struct.t3cdev** %3, align 8
  %9 = call %struct.TYPE_4__* @T3C_DATA(%struct.t3cdev* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.tid_info* %10, %struct.tid_info** %5, align 8
  %11 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %union.active_open_entry* @atid2entry(%struct.tid_info* %11, i32 %12)
  store %union.active_open_entry* %13, %union.active_open_entry** %6, align 8
  %14 = load %union.active_open_entry*, %union.active_open_entry** %6, align 8
  %15 = bitcast %union.active_open_entry* %14 to %struct.TYPE_3__*
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %7, align 8
  %18 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %19 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_bh(i32* %19)
  %21 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %22 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %21, i32 0, i32 2
  %23 = load %union.active_open_entry*, %union.active_open_entry** %22, align 8
  %24 = load %union.active_open_entry*, %union.active_open_entry** %6, align 8
  %25 = bitcast %union.active_open_entry* %24 to %union.active_open_entry**
  store %union.active_open_entry* %23, %union.active_open_entry** %25, align 8
  %26 = load %union.active_open_entry*, %union.active_open_entry** %6, align 8
  %27 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %28 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %27, i32 0, i32 2
  store %union.active_open_entry* %26, %union.active_open_entry** %28, align 8
  %29 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %30 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %34 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock_bh(i32* %34)
  %36 = load i8*, i8** %7, align 8
  ret i8* %36
}

declare dso_local %struct.TYPE_4__* @T3C_DATA(%struct.t3cdev*) #1

declare dso_local %union.active_open_entry* @atid2entry(%struct.tid_info*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
