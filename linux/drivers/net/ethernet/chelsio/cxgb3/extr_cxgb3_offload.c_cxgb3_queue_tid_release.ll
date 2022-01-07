; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_offload.c_cxgb3_queue_tid_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_offload.c_cxgb3_queue_tid_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i32 }
%struct.t3c_data = type { i32, i32, i64, %struct.t3c_tid_entry*, %struct.TYPE_2__ }
%struct.t3c_tid_entry = type { i8*, i32* }
%struct.TYPE_2__ = type { %struct.t3c_tid_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgb3_queue_tid_release(%struct.t3cdev* %0, i32 %1) #0 {
  %3 = alloca %struct.t3cdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.t3c_data*, align 8
  %6 = alloca %struct.t3c_tid_entry*, align 8
  store %struct.t3cdev* %0, %struct.t3cdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.t3cdev*, %struct.t3cdev** %3, align 8
  %8 = call %struct.t3c_data* @T3C_DATA(%struct.t3cdev* %7)
  store %struct.t3c_data* %8, %struct.t3c_data** %5, align 8
  %9 = load %struct.t3c_data*, %struct.t3c_data** %5, align 8
  %10 = getelementptr inbounds %struct.t3c_data, %struct.t3c_data* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.t3c_tid_entry*, %struct.t3c_tid_entry** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.t3c_tid_entry, %struct.t3c_tid_entry* %12, i64 %14
  store %struct.t3c_tid_entry* %15, %struct.t3c_tid_entry** %6, align 8
  %16 = load %struct.t3c_data*, %struct.t3c_data** %5, align 8
  %17 = getelementptr inbounds %struct.t3c_data, %struct.t3c_data* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_bh(i32* %17)
  %19 = load %struct.t3c_data*, %struct.t3c_data** %5, align 8
  %20 = getelementptr inbounds %struct.t3c_data, %struct.t3c_data* %19, i32 0, i32 3
  %21 = load %struct.t3c_tid_entry*, %struct.t3c_tid_entry** %20, align 8
  %22 = bitcast %struct.t3c_tid_entry* %21 to i8*
  %23 = load %struct.t3c_tid_entry*, %struct.t3c_tid_entry** %6, align 8
  %24 = getelementptr inbounds %struct.t3c_tid_entry, %struct.t3c_tid_entry* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.t3c_tid_entry*, %struct.t3c_tid_entry** %6, align 8
  %26 = getelementptr inbounds %struct.t3c_tid_entry, %struct.t3c_tid_entry* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load %struct.t3c_tid_entry*, %struct.t3c_tid_entry** %6, align 8
  %28 = load %struct.t3c_data*, %struct.t3c_data** %5, align 8
  %29 = getelementptr inbounds %struct.t3c_data, %struct.t3c_data* %28, i32 0, i32 3
  store %struct.t3c_tid_entry* %27, %struct.t3c_tid_entry** %29, align 8
  %30 = load %struct.t3c_tid_entry*, %struct.t3c_tid_entry** %6, align 8
  %31 = getelementptr inbounds %struct.t3c_tid_entry, %struct.t3c_tid_entry* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load %struct.t3c_data*, %struct.t3c_data** %5, align 8
  %36 = getelementptr inbounds %struct.t3c_data, %struct.t3c_data* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34, %2
  %40 = load %struct.t3c_data*, %struct.t3c_data** %5, align 8
  %41 = getelementptr inbounds %struct.t3c_data, %struct.t3c_data* %40, i32 0, i32 1
  %42 = call i32 @schedule_work(i32* %41)
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.t3c_data*, %struct.t3c_data** %5, align 8
  %45 = getelementptr inbounds %struct.t3c_data, %struct.t3c_data* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock_bh(i32* %45)
  ret void
}

declare dso_local %struct.t3c_data* @T3C_DATA(%struct.t3cdev*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
