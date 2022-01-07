; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_hbuf_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_hbuf_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32, i32 }

@MEI_PG_ON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"device is in pg\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"hbuf is not ready\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_hbuf_acquire(%struct.mei_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mei_device*, align 8
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  %4 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %5 = call i64 @mei_pg_state(%struct.mei_device* %4)
  %6 = load i64, i64* @MEI_PG_ON, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %10 = call i64 @mei_pg_in_transition(%struct.mei_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %8, %1
  %13 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %14 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_dbg(i32 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %30

17:                                               ; preds = %8
  %18 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %19 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %24 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %30

27:                                               ; preds = %17
  %28 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %29 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %22, %12
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @mei_pg_state(%struct.mei_device*) #1

declare dso_local i64 @mei_pg_in_transition(%struct.mei_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
