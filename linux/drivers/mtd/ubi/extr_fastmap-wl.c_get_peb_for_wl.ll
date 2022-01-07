; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap-wl.c_get_peb_for_wl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap-wl.c_get_peb_for_wl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_wl_entry = type { i32 }
%struct.ubi_device = type { i32, %struct.ubi_wl_entry**, i32, i32, %struct.ubi_fm_pool }
%struct.ubi_fm_pool = type { i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubi_wl_entry* (%struct.ubi_device*)* @get_peb_for_wl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubi_wl_entry* @get_peb_for_wl(%struct.ubi_device* %0) #0 {
  %2 = alloca %struct.ubi_wl_entry*, align 8
  %3 = alloca %struct.ubi_device*, align 8
  %4 = alloca %struct.ubi_fm_pool*, align 8
  %5 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %3, align 8
  %6 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %7 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %6, i32 0, i32 4
  store %struct.ubi_fm_pool* %7, %struct.ubi_fm_pool** %4, align 8
  %8 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %9 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %8, i32 0, i32 3
  %10 = call i32 @rwsem_is_locked(i32* %9)
  %11 = call i32 @ubi_assert(i32 %10)
  %12 = load %struct.ubi_fm_pool*, %struct.ubi_fm_pool** %4, align 8
  %13 = getelementptr inbounds %struct.ubi_fm_pool, %struct.ubi_fm_pool* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ubi_fm_pool*, %struct.ubi_fm_pool** %4, align 8
  %16 = getelementptr inbounds %struct.ubi_fm_pool, %struct.ubi_fm_pool* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %21 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %26 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %28 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %27, i32 0, i32 2
  %29 = call i32 @schedule_work(i32* %28)
  br label %30

30:                                               ; preds = %24, %19
  store %struct.ubi_wl_entry* null, %struct.ubi_wl_entry** %2, align 8
  br label %48

31:                                               ; preds = %1
  %32 = load %struct.ubi_fm_pool*, %struct.ubi_fm_pool** %4, align 8
  %33 = getelementptr inbounds %struct.ubi_fm_pool, %struct.ubi_fm_pool* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.ubi_fm_pool*, %struct.ubi_fm_pool** %4, align 8
  %36 = getelementptr inbounds %struct.ubi_fm_pool, %struct.ubi_fm_pool* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = getelementptr inbounds i32, i32* %34, i64 %37
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %5, align 4
  %41 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %42 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %41, i32 0, i32 1
  %43 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %43, i64 %45
  %47 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %46, align 8
  store %struct.ubi_wl_entry* %47, %struct.ubi_wl_entry** %2, align 8
  br label %48

48:                                               ; preds = %31, %30
  %49 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %2, align 8
  ret %struct.ubi_wl_entry* %49
}

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @rwsem_is_locked(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
