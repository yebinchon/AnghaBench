; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap-wl.c_ubi_ensure_anchor_pebs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap-wl.c_ubi_ensure_anchor_pebs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32 }
%struct.ubi_work = type { i32, i32* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wear_leveling_worker = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_ensure_anchor_pebs(%struct.ubi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubi_device*, align 8
  %4 = alloca %struct.ubi_work*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %3, align 8
  %5 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %6 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %5, i32 0, i32 1
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %9 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %14 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %13, i32 0, i32 1
  %15 = call i32 @spin_unlock(i32* %14)
  store i32 0, i32* %2, align 4
  br label %45

16:                                               ; preds = %1
  %17 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %18 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %20 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %19, i32 0, i32 1
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = load i32, i32* @GFP_NOFS, align 4
  %23 = call %struct.ubi_work* @kmalloc(i32 16, i32 %22)
  store %struct.ubi_work* %23, %struct.ubi_work** %4, align 8
  %24 = load %struct.ubi_work*, %struct.ubi_work** %4, align 8
  %25 = icmp ne %struct.ubi_work* %24, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %16
  %27 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %28 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %27, i32 0, i32 1
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %31 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  %32 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %33 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %32, i32 0, i32 1
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %45

37:                                               ; preds = %16
  %38 = load %struct.ubi_work*, %struct.ubi_work** %4, align 8
  %39 = getelementptr inbounds %struct.ubi_work, %struct.ubi_work* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.ubi_work*, %struct.ubi_work** %4, align 8
  %41 = getelementptr inbounds %struct.ubi_work, %struct.ubi_work* %40, i32 0, i32 1
  store i32* @wear_leveling_worker, i32** %41, align 8
  %42 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %43 = load %struct.ubi_work*, %struct.ubi_work** %4, align 8
  %44 = call i32 @__schedule_ubi_work(%struct.ubi_device* %42, %struct.ubi_work* %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %37, %26, %12
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.ubi_work* @kmalloc(i32, i32) #1

declare dso_local i32 @__schedule_ubi_work(%struct.ubi_device*, %struct.ubi_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
