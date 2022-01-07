; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_defs.h_lookup_tid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_defs.h_lookup_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3c_tid_entry = type { i64 }
%struct.tid_info = type { i32, %struct.t3c_tid_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.t3c_tid_entry* (%struct.tid_info*, i32)* @lookup_tid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.t3c_tid_entry* @lookup_tid(%struct.tid_info* %0, i32 %1) #0 {
  %3 = alloca %struct.tid_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.t3c_tid_entry*, align 8
  store %struct.tid_info* %0, %struct.tid_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %8 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %13 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %12, i32 0, i32 1
  %14 = load %struct.t3c_tid_entry*, %struct.t3c_tid_entry** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.t3c_tid_entry, %struct.t3c_tid_entry* %14, i64 %16
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %11
  %20 = phi %struct.t3c_tid_entry* [ %17, %11 ], [ null, %18 ]
  store %struct.t3c_tid_entry* %20, %struct.t3c_tid_entry** %5, align 8
  %21 = load %struct.t3c_tid_entry*, %struct.t3c_tid_entry** %5, align 8
  %22 = icmp ne %struct.t3c_tid_entry* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load %struct.t3c_tid_entry*, %struct.t3c_tid_entry** %5, align 8
  %25 = getelementptr inbounds %struct.t3c_tid_entry, %struct.t3c_tid_entry* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load %struct.t3c_tid_entry*, %struct.t3c_tid_entry** %5, align 8
  br label %31

30:                                               ; preds = %23, %19
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi %struct.t3c_tid_entry* [ %29, %28 ], [ null, %30 ]
  ret %struct.t3c_tid_entry* %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
