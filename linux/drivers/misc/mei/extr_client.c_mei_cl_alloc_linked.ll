; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_alloc_linked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_client.c_mei_cl_alloc_linked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl = type { i32 }
%struct.mei_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mei_cl* @mei_cl_alloc_linked(%struct.mei_device* %0) #0 {
  %2 = alloca %struct.mei_cl*, align 8
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca %struct.mei_cl*, align 8
  %5 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  %6 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %7 = call %struct.mei_cl* @mei_cl_allocate(%struct.mei_device* %6)
  store %struct.mei_cl* %7, %struct.mei_cl** %4, align 8
  %8 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %9 = icmp ne %struct.mei_cl* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %5, align 4
  br label %21

13:                                               ; preds = %1
  %14 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %15 = call i32 @mei_cl_link(%struct.mei_cl* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %21

19:                                               ; preds = %13
  %20 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  store %struct.mei_cl* %20, %struct.mei_cl** %2, align 8
  br label %26

21:                                               ; preds = %18, %10
  %22 = load %struct.mei_cl*, %struct.mei_cl** %4, align 8
  %23 = call i32 @kfree(%struct.mei_cl* %22)
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.mei_cl* @ERR_PTR(i32 %24)
  store %struct.mei_cl* %25, %struct.mei_cl** %2, align 8
  br label %26

26:                                               ; preds = %21, %19
  %27 = load %struct.mei_cl*, %struct.mei_cl** %2, align 8
  ret %struct.mei_cl* %27
}

declare dso_local %struct.mei_cl* @mei_cl_allocate(%struct.mei_device*) #1

declare dso_local i32 @mei_cl_link(%struct.mei_cl*) #1

declare dso_local i32 @kfree(%struct.mei_cl*) #1

declare dso_local %struct.mei_cl* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
