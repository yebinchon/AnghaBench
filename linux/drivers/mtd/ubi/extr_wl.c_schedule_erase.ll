; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c_schedule_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c_schedule_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_wl_entry = type { i32, i32 }
%struct.ubi_work = type { i32, i32, i32, %struct.ubi_wl_entry*, i32* }

@.str = private unnamed_addr constant [46 x i8] c"schedule erasure of PEB %d, EC %d, torture %d\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@erase_worker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_wl_entry*, i32, i32, i32, i32)* @schedule_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schedule_erase(%struct.ubi_device* %0, %struct.ubi_wl_entry* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_device*, align 8
  %9 = alloca %struct.ubi_wl_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ubi_work*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %8, align 8
  store %struct.ubi_wl_entry* %1, %struct.ubi_wl_entry** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %16 = call i32 @ubi_assert(%struct.ubi_wl_entry* %15)
  %17 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %18 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %21 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @dbg_wl(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %23)
  %25 = load i32, i32* @GFP_NOFS, align 4
  %26 = call %struct.ubi_work* @kmalloc(i32 32, i32 %25)
  store %struct.ubi_work* %26, %struct.ubi_work** %14, align 8
  %27 = load %struct.ubi_work*, %struct.ubi_work** %14, align 8
  %28 = icmp ne %struct.ubi_work* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %6
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %58

32:                                               ; preds = %6
  %33 = load %struct.ubi_work*, %struct.ubi_work** %14, align 8
  %34 = getelementptr inbounds %struct.ubi_work, %struct.ubi_work* %33, i32 0, i32 4
  store i32* @erase_worker, i32** %34, align 8
  %35 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %36 = load %struct.ubi_work*, %struct.ubi_work** %14, align 8
  %37 = getelementptr inbounds %struct.ubi_work, %struct.ubi_work* %36, i32 0, i32 3
  store %struct.ubi_wl_entry* %35, %struct.ubi_wl_entry** %37, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.ubi_work*, %struct.ubi_work** %14, align 8
  %40 = getelementptr inbounds %struct.ubi_work, %struct.ubi_work* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.ubi_work*, %struct.ubi_work** %14, align 8
  %43 = getelementptr inbounds %struct.ubi_work, %struct.ubi_work* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.ubi_work*, %struct.ubi_work** %14, align 8
  %46 = getelementptr inbounds %struct.ubi_work, %struct.ubi_work* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %32
  %50 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %51 = load %struct.ubi_work*, %struct.ubi_work** %14, align 8
  %52 = call i32 @__schedule_ubi_work(%struct.ubi_device* %50, %struct.ubi_work* %51)
  br label %57

53:                                               ; preds = %32
  %54 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %55 = load %struct.ubi_work*, %struct.ubi_work** %14, align 8
  %56 = call i32 @schedule_ubi_work(%struct.ubi_device* %54, %struct.ubi_work* %55)
  br label %57

57:                                               ; preds = %53, %49
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %57, %29
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @ubi_assert(%struct.ubi_wl_entry*) #1

declare dso_local i32 @dbg_wl(i8*, i32, i32, i32) #1

declare dso_local %struct.ubi_work* @kmalloc(i32, i32) #1

declare dso_local i32 @__schedule_ubi_work(%struct.ubi_device*, %struct.ubi_work*) #1

declare dso_local i32 @schedule_ubi_work(%struct.ubi_device*, %struct.ubi_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
