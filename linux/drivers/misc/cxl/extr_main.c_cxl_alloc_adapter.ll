; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_main.c_cxl_alloc_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_main.c_cxl_alloc_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"card%i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cxl* @cxl_alloc_adapter() #0 {
  %1 = alloca %struct.cxl*, align 8
  %2 = alloca %struct.cxl*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.cxl* @kzalloc(i32 16, i32 %3)
  store %struct.cxl* %4, %struct.cxl** %2, align 8
  %5 = icmp ne %struct.cxl* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store %struct.cxl* null, %struct.cxl** %1, align 8
  br label %35

7:                                                ; preds = %0
  %8 = load %struct.cxl*, %struct.cxl** %2, align 8
  %9 = getelementptr inbounds %struct.cxl, %struct.cxl* %8, i32 0, i32 3
  %10 = call i32 @spin_lock_init(i32* %9)
  %11 = load %struct.cxl*, %struct.cxl** %2, align 8
  %12 = call i64 @cxl_alloc_adapter_nr(%struct.cxl* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %32

15:                                               ; preds = %7
  %16 = load %struct.cxl*, %struct.cxl** %2, align 8
  %17 = getelementptr inbounds %struct.cxl, %struct.cxl* %16, i32 0, i32 2
  %18 = load %struct.cxl*, %struct.cxl** %2, align 8
  %19 = getelementptr inbounds %struct.cxl, %struct.cxl* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @dev_set_name(i32* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %29

24:                                               ; preds = %15
  %25 = load %struct.cxl*, %struct.cxl** %2, align 8
  %26 = getelementptr inbounds %struct.cxl, %struct.cxl* %25, i32 0, i32 0
  %27 = call i32 @atomic_set(i32* %26, i32 -1)
  %28 = load %struct.cxl*, %struct.cxl** %2, align 8
  store %struct.cxl* %28, %struct.cxl** %1, align 8
  br label %35

29:                                               ; preds = %23
  %30 = load %struct.cxl*, %struct.cxl** %2, align 8
  %31 = call i32 @cxl_remove_adapter_nr(%struct.cxl* %30)
  br label %32

32:                                               ; preds = %29, %14
  %33 = load %struct.cxl*, %struct.cxl** %2, align 8
  %34 = call i32 @kfree(%struct.cxl* %33)
  store %struct.cxl* null, %struct.cxl** %1, align 8
  br label %35

35:                                               ; preds = %32, %24, %6
  %36 = load %struct.cxl*, %struct.cxl** %1, align 8
  ret %struct.cxl* %36
}

declare dso_local %struct.cxl* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @cxl_alloc_adapter_nr(%struct.cxl*) #1

declare dso_local i64 @dev_set_name(i32*, i8*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @cxl_remove_adapter_nr(%struct.cxl*) #1

declare dso_local i32 @kfree(%struct.cxl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
