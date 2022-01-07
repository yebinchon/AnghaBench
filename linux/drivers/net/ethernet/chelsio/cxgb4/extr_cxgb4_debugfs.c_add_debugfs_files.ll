; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_add_debugfs_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_add_debugfs_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.t4_debugfs_entry = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_debugfs_files(%struct.adapter* %0, %struct.t4_debugfs_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.t4_debugfs_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.t4_debugfs_entry* %1, %struct.t4_debugfs_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %45, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %8
  %13 = load %struct.t4_debugfs_entry*, %struct.t4_debugfs_entry** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.t4_debugfs_entry, %struct.t4_debugfs_entry* %13, i64 %15
  %17 = getelementptr inbounds %struct.t4_debugfs_entry, %struct.t4_debugfs_entry* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.t4_debugfs_entry*, %struct.t4_debugfs_entry** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.t4_debugfs_entry, %struct.t4_debugfs_entry* %19, i64 %21
  %23 = getelementptr inbounds %struct.t4_debugfs_entry, %struct.t4_debugfs_entry* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.adapter*, %struct.adapter** %4, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.adapter*, %struct.adapter** %4, align 8
  %29 = bitcast %struct.adapter* %28 to i8*
  %30 = load %struct.t4_debugfs_entry*, %struct.t4_debugfs_entry** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.t4_debugfs_entry, %struct.t4_debugfs_entry* %30, i64 %32
  %34 = getelementptr inbounds %struct.t4_debugfs_entry, %struct.t4_debugfs_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr i8, i8* %29, i64 %36
  %38 = load %struct.t4_debugfs_entry*, %struct.t4_debugfs_entry** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.t4_debugfs_entry, %struct.t4_debugfs_entry* %38, i64 %40
  %42 = getelementptr inbounds %struct.t4_debugfs_entry, %struct.t4_debugfs_entry* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @debugfs_create_file(i32 %18, i32 %24, i32 %27, i8* %37, i32 %43)
  br label %45

45:                                               ; preds = %12
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %8

48:                                               ; preds = %8
  ret void
}

declare dso_local i32 @debugfs_create_file(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
