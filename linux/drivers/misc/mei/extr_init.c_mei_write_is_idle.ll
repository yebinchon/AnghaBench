; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_init.c_mei_write_is_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_init.c_mei_write_is_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i64, i32, i32, i32, i32 }

@MEI_DEV_ENABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"write pg: is idle[%d] state=%s ctrl=%01d write=%01d wwait=%01d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_write_is_idle(%struct.mei_device* %0) #0 {
  %2 = alloca %struct.mei_device*, align 8
  %3 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %2, align 8
  %4 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %5 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @MEI_DEV_ENABLED, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %11 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %10, i32 0, i32 3
  %12 = call i64 @list_empty(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %16 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %15, i32 0, i32 2
  %17 = call i64 @list_empty(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %21 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %20, i32 0, i32 1
  %22 = call i64 @list_empty(i32* %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %19, %14, %9, %1
  %25 = phi i1 [ false, %14 ], [ false, %9 ], [ false, %1 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  %27 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %28 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %32 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @mei_dev_state_str(i64 %33)
  %35 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %36 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %35, i32 0, i32 3
  %37 = call i64 @list_empty(i32* %36)
  %38 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %39 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %38, i32 0, i32 2
  %40 = call i64 @list_empty(i32* %39)
  %41 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %42 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %41, i32 0, i32 1
  %43 = call i64 @list_empty(i32* %42)
  %44 = call i32 @dev_dbg(i32 %29, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %34, i64 %37, i64 %40, i64 %43)
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i64, i64, i64) #1

declare dso_local i32 @mei_dev_state_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
