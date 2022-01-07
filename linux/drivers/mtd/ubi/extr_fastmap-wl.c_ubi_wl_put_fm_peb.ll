; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap-wl.c_ubi_wl_put_fm_peb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap-wl.c_ubi_wl_put_fm_peb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, %struct.ubi_wl_entry** }
%struct.ubi_wl_entry = type { i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"PEB %d\00", align 1
@UBI_FM_DATA_VOLUME_ID = common dso_local global i32 0, align 4
@UBI_FM_SB_VOLUME_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_wl_put_fm_peb(%struct.ubi_device* %0, %struct.ubi_wl_entry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ubi_device*, align 8
  %6 = alloca %struct.ubi_wl_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubi_wl_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %5, align 8
  store %struct.ubi_wl_entry* %1, %struct.ubi_wl_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %13 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = call i32 @dbg_wl(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %11, align 4
  %18 = icmp sge i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @ubi_assert(i32 %19)
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %23 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @ubi_assert(i32 %26)
  %28 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %29 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %28, i32 0, i32 1
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %32 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %31, i32 0, i32 2
  %33 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %33, i64 %35
  %37 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %36, align 8
  store %struct.ubi_wl_entry* %37, %struct.ubi_wl_entry** %9, align 8
  %38 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %39 = icmp ne %struct.ubi_wl_entry* %38, null
  br i1 %39, label %55, label %40

40:                                               ; preds = %4
  %41 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  store %struct.ubi_wl_entry* %41, %struct.ubi_wl_entry** %9, align 8
  %42 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %43 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @ubi_assert(i32 %46)
  %48 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %49 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %50 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %49, i32 0, i32 2
  %51 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %51, i64 %53
  store %struct.ubi_wl_entry* %48, %struct.ubi_wl_entry** %54, align 8
  br label %55

55:                                               ; preds = %40, %4
  %56 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %57 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %56, i32 0, i32 1
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @UBI_FM_DATA_VOLUME_ID, align 4
  br label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @UBI_FM_SB_VOLUME_ID, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  store i32 %66, i32* %10, align 4
  %67 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %68 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @schedule_erase(%struct.ubi_device* %67, %struct.ubi_wl_entry* %68, i32 %69, i32 %70, i32 %71, i32 1)
  ret i32 %72
}

declare dso_local i32 @dbg_wl(i8*, i32) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule_erase(%struct.ubi_device*, %struct.ubi_wl_entry*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
