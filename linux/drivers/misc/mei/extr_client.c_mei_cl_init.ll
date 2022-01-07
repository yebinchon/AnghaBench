; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { %struct.mei_device*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mei_device = type { i32 }

@MEI_IDLE = common dso_local global i32 0, align 4
@MEI_FILE_UNINITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mei_cl*, %struct.mei_device*)* @mei_cl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mei_cl_init(%struct.mei_cl* %0, %struct.mei_device* %1) #0 {
  %3 = alloca %struct.mei_cl*, align 8
  %4 = alloca %struct.mei_device*, align 8
  store %struct.mei_cl* %0, %struct.mei_cl** %3, align 8
  store %struct.mei_device* %1, %struct.mei_device** %4, align 8
  %5 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %6 = call i32 @memset(%struct.mei_cl* %5, i32 0, i32 48)
  %7 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %8 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %7, i32 0, i32 9
  %9 = call i32 @init_waitqueue_head(i32* %8)
  %10 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %11 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %10, i32 0, i32 8
  %12 = call i32 @init_waitqueue_head(i32* %11)
  %13 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %14 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %13, i32 0, i32 7
  %15 = call i32 @init_waitqueue_head(i32* %14)
  %16 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %17 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %16, i32 0, i32 6
  %18 = call i32 @init_waitqueue_head(i32* %17)
  %19 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %20 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %19, i32 0, i32 5
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %23 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %22, i32 0, i32 4
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %26 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %25, i32 0, i32 3
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load i32, i32* @MEI_IDLE, align 4
  %29 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %30 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @MEI_FILE_UNINITIALIZED, align 4
  %32 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %33 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %35 = load %struct.mei_cl*, %struct.mei_cl** %3, align 8
  %36 = getelementptr inbounds %struct.mei_cl, %struct.mei_cl* %35, i32 0, i32 0
  store %struct.mei_device* %34, %struct.mei_device** %36, align 8
  ret void
}

declare dso_local i32 @memset(%struct.mei_cl*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
