; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_command_buffer.c_hl_cb_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_command_buffer.c_hl_cb_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }
%struct.hl_cb_mgr = type { i32, i32 }
%struct.hl_cb = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@cb_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"CB destroy failed, no match to handle 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_cb_destroy(%struct.hl_device* %0, %struct.hl_cb_mgr* %1, i32 %2) #0 {
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca %struct.hl_cb_mgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hl_cb*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store %struct.hl_cb_mgr* %1, %struct.hl_cb_mgr** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @PAGE_SHIFT, align 4
  %11 = load i32, i32* %6, align 4
  %12 = ashr i32 %11, %10
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %8, align 8
  %15 = load %struct.hl_cb_mgr*, %struct.hl_cb_mgr** %5, align 8
  %16 = getelementptr inbounds %struct.hl_cb_mgr, %struct.hl_cb_mgr* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.hl_cb_mgr*, %struct.hl_cb_mgr** %5, align 8
  %19 = getelementptr inbounds %struct.hl_cb_mgr, %struct.hl_cb_mgr* %18, i32 0, i32 1
  %20 = load i64, i64* %8, align 8
  %21 = call %struct.hl_cb* @idr_find(i32* %19, i64 %20)
  store %struct.hl_cb* %21, %struct.hl_cb** %7, align 8
  %22 = load %struct.hl_cb*, %struct.hl_cb** %7, align 8
  %23 = icmp ne %struct.hl_cb* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %3
  %25 = load %struct.hl_cb_mgr*, %struct.hl_cb_mgr** %5, align 8
  %26 = getelementptr inbounds %struct.hl_cb_mgr, %struct.hl_cb_mgr* %25, i32 0, i32 1
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @idr_remove(i32* %26, i64 %27)
  %29 = load %struct.hl_cb_mgr*, %struct.hl_cb_mgr** %5, align 8
  %30 = getelementptr inbounds %struct.hl_cb_mgr, %struct.hl_cb_mgr* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load %struct.hl_cb*, %struct.hl_cb** %7, align 8
  %33 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %32, i32 0, i32 0
  %34 = load i32, i32* @cb_release, align 4
  %35 = call i32 @kref_put(i32* %33, i32 %34)
  br label %47

36:                                               ; preds = %3
  %37 = load %struct.hl_cb_mgr*, %struct.hl_cb_mgr** %5, align 8
  %38 = getelementptr inbounds %struct.hl_cb_mgr, %struct.hl_cb_mgr* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %41 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %36, %24
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.hl_cb* @idr_find(i32*, i64) #1

declare dso_local i32 @idr_remove(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
