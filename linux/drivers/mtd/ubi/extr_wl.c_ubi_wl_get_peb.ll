; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c_ubi_wl_get_peb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c_ubi_wl_get_peb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i64, i64, i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ubi_wl_entry = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"no free eraseblocks\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"new PEB %d does not contain all 0xFF bytes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_wl_get_peb(%struct.ubi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_wl_entry*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %3, align 8
  br label %6

6:                                                ; preds = %45, %1
  %7 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %8 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %7, i32 0, i32 4
  %9 = call i32 @down_read(i32* %8)
  %10 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %11 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %10, i32 0, i32 3
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %14 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %52, label %18

18:                                               ; preds = %6
  %19 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %20 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %25 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %27 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %26, i32 0, i32 5
  %28 = call i32 @list_empty(i32* %27)
  %29 = call i32 @ubi_assert(i32 %28)
  %30 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %31 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %30, i32 0, i32 3
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load i32, i32* @ENOSPC, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %89

35:                                               ; preds = %18
  %36 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %37 = call i32 @produce_free_peb(%struct.ubi_device* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %42 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %41, i32 0, i32 3
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %89

45:                                               ; preds = %35
  %46 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %47 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %46, i32 0, i32 3
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %50 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %49, i32 0, i32 4
  %51 = call i32 @up_read(i32* %50)
  br label %6

52:                                               ; preds = %6
  %53 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %54 = call %struct.ubi_wl_entry* @wl_get_wle(%struct.ubi_device* %53)
  store %struct.ubi_wl_entry* %54, %struct.ubi_wl_entry** %5, align 8
  %55 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %56 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %5, align 8
  %57 = call i32 @prot_queue_add(%struct.ubi_device* %55, %struct.ubi_wl_entry* %56)
  %58 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %59 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %58, i32 0, i32 3
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %62 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %5, align 8
  %63 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %66 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %69 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %72 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  %75 = call i32 @ubi_self_check_all_ff(%struct.ubi_device* %61, i32 %64, i64 %67, i64 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %52
  %79 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %80 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %5, align 8
  %81 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %79, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %89

85:                                               ; preds = %52
  %86 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %5, align 8
  %87 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %85, %78, %40, %23
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, ...) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @produce_free_peb(%struct.ubi_device*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local %struct.ubi_wl_entry* @wl_get_wle(%struct.ubi_device*) #1

declare dso_local i32 @prot_queue_add(%struct.ubi_device*, %struct.ubi_wl_entry*) #1

declare dso_local i32 @ubi_self_check_all_ff(%struct.ubi_device*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
