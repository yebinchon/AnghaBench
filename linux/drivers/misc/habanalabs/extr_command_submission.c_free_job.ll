; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_command_submission.c_free_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_command_submission.c_free_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }
%struct.hl_cs_job = type { i64, i32, %struct.TYPE_2__*, i32, %struct.hl_cs* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hl_cs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*, %struct.hl_cs_job*)* @free_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_job(%struct.hl_device* %0, %struct.hl_cs_job* %1) #0 {
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca %struct.hl_cs_job*, align 8
  %5 = alloca %struct.hl_cs*, align 8
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  store %struct.hl_cs_job* %1, %struct.hl_cs_job** %4, align 8
  %6 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %7 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %6, i32 0, i32 4
  %8 = load %struct.hl_cs*, %struct.hl_cs** %7, align 8
  store %struct.hl_cs* %8, %struct.hl_cs** %5, align 8
  %9 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %10 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %2
  %14 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %15 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %16 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %15, i32 0, i32 3
  %17 = call i32 @hl_userptr_delete_list(%struct.hl_device* %14, i32* %16)
  %18 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %19 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %13
  %23 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %24 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %29 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %35 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %40 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = call i32 @hl_cb_put(%struct.TYPE_2__* %41)
  br label %43

43:                                               ; preds = %22, %13
  br label %44

44:                                               ; preds = %43, %2
  %45 = load %struct.hl_cs*, %struct.hl_cs** %5, align 8
  %46 = getelementptr inbounds %struct.hl_cs, %struct.hl_cs* %45, i32 0, i32 0
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %49 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %48, i32 0, i32 1
  %50 = call i32 @list_del(i32* %49)
  %51 = load %struct.hl_cs*, %struct.hl_cs** %5, align 8
  %52 = getelementptr inbounds %struct.hl_cs, %struct.hl_cs* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %55 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %56 = call i32 @hl_debugfs_remove_job(%struct.hl_device* %54, %struct.hl_cs_job* %55)
  %57 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %58 = getelementptr inbounds %struct.hl_cs_job, %struct.hl_cs_job* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %44
  %62 = load %struct.hl_cs*, %struct.hl_cs** %5, align 8
  %63 = call i32 @cs_put(%struct.hl_cs* %62)
  br label %64

64:                                               ; preds = %61, %44
  %65 = load %struct.hl_cs_job*, %struct.hl_cs_job** %4, align 8
  %66 = call i32 @kfree(%struct.hl_cs_job* %65)
  ret void
}

declare dso_local i32 @hl_userptr_delete_list(%struct.hl_device*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @hl_cb_put(%struct.TYPE_2__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @hl_debugfs_remove_job(%struct.hl_device*, %struct.hl_cs_job*) #1

declare dso_local i32 @cs_put(%struct.hl_cs*) #1

declare dso_local i32 @kfree(%struct.hl_cs_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
