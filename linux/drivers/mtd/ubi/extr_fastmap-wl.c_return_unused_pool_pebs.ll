; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap-wl.c_return_unused_pool_pebs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap-wl.c_return_unused_pool_pebs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, %struct.ubi_wl_entry** }
%struct.ubi_wl_entry = type { i32 }
%struct.ubi_fm_pool = type { i32, i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubi_device*, %struct.ubi_fm_pool*)* @return_unused_pool_pebs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @return_unused_pool_pebs(%struct.ubi_device* %0, %struct.ubi_fm_pool* %1) #0 {
  %3 = alloca %struct.ubi_device*, align 8
  %4 = alloca %struct.ubi_fm_pool*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_wl_entry*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %3, align 8
  store %struct.ubi_fm_pool* %1, %struct.ubi_fm_pool** %4, align 8
  %7 = load %struct.ubi_fm_pool*, %struct.ubi_fm_pool** %4, align 8
  %8 = getelementptr inbounds %struct.ubi_fm_pool, %struct.ubi_fm_pool* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %37, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.ubi_fm_pool*, %struct.ubi_fm_pool** %4, align 8
  %13 = getelementptr inbounds %struct.ubi_fm_pool, %struct.ubi_fm_pool* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %10
  %17 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %18 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %17, i32 0, i32 2
  %19 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %18, align 8
  %20 = load %struct.ubi_fm_pool*, %struct.ubi_fm_pool** %4, align 8
  %21 = getelementptr inbounds %struct.ubi_fm_pool, %struct.ubi_fm_pool* %20, i32 0, i32 2
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %19, i64 %26
  %28 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %27, align 8
  store %struct.ubi_wl_entry* %28, %struct.ubi_wl_entry** %6, align 8
  %29 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %30 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %31 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %30, i32 0, i32 1
  %32 = call i32 @wl_tree_add(%struct.ubi_wl_entry* %29, i32* %31)
  %33 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %34 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %16
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %10

40:                                               ; preds = %10
  ret void
}

declare dso_local i32 @wl_tree_add(%struct.ubi_wl_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
