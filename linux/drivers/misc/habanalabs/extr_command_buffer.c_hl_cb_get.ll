; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_command_buffer.c_hl_cb_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_command_buffer.c_hl_cb_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_cb = type { i32 }
%struct.hl_device = type { i32 }
%struct.hl_cb_mgr = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"CB get failed, no match to handle %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hl_cb* @hl_cb_get(%struct.hl_device* %0, %struct.hl_cb_mgr* %1, i32 %2) #0 {
  %4 = alloca %struct.hl_cb*, align 8
  %5 = alloca %struct.hl_device*, align 8
  %6 = alloca %struct.hl_cb_mgr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hl_cb*, align 8
  store %struct.hl_device* %0, %struct.hl_device** %5, align 8
  store %struct.hl_cb_mgr* %1, %struct.hl_cb_mgr** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.hl_cb_mgr*, %struct.hl_cb_mgr** %6, align 8
  %10 = getelementptr inbounds %struct.hl_cb_mgr, %struct.hl_cb_mgr* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.hl_cb_mgr*, %struct.hl_cb_mgr** %6, align 8
  %13 = getelementptr inbounds %struct.hl_cb_mgr, %struct.hl_cb_mgr* %12, i32 0, i32 1
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.hl_cb* @idr_find(i32* %13, i32 %14)
  store %struct.hl_cb* %15, %struct.hl_cb** %8, align 8
  %16 = load %struct.hl_cb*, %struct.hl_cb** %8, align 8
  %17 = icmp ne %struct.hl_cb* %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %3
  %19 = load %struct.hl_cb_mgr*, %struct.hl_cb_mgr** %6, align 8
  %20 = getelementptr inbounds %struct.hl_cb_mgr, %struct.hl_cb_mgr* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %23 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @dev_warn(i32 %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %25)
  store %struct.hl_cb* null, %struct.hl_cb** %4, align 8
  br label %35

27:                                               ; preds = %3
  %28 = load %struct.hl_cb*, %struct.hl_cb** %8, align 8
  %29 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %28, i32 0, i32 0
  %30 = call i32 @kref_get(i32* %29)
  %31 = load %struct.hl_cb_mgr*, %struct.hl_cb_mgr** %6, align 8
  %32 = getelementptr inbounds %struct.hl_cb_mgr, %struct.hl_cb_mgr* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load %struct.hl_cb*, %struct.hl_cb** %8, align 8
  store %struct.hl_cb* %34, %struct.hl_cb** %4, align 8
  br label %35

35:                                               ; preds = %27, %18
  %36 = load %struct.hl_cb*, %struct.hl_cb** %4, align 8
  ret %struct.hl_cb* %36
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.hl_cb* @idr_find(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @kref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
