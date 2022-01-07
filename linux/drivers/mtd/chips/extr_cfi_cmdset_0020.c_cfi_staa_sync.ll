; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0020.c_cfi_staa_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0020.c_cfi_staa_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.map_info* }
%struct.map_info = type { %struct.cfi_private* }
%struct.cfi_private = type { i32, %struct.flchip* }
%struct.flchip = type { i32, i32, i32, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*)* @cfi_staa_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfi_staa_sync(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.map_info*, align 8
  %4 = alloca %struct.cfi_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.flchip*, align 8
  %7 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %8 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %9 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %8, i32 0, i32 0
  %10 = load %struct.map_info*, %struct.map_info** %9, align 8
  store %struct.map_info* %10, %struct.map_info** %3, align 8
  %11 = load %struct.map_info*, %struct.map_info** %3, align 8
  %12 = getelementptr inbounds %struct.map_info, %struct.map_info* %11, i32 0, i32 0
  %13 = load %struct.cfi_private*, %struct.cfi_private** %12, align 8
  store %struct.cfi_private* %13, %struct.cfi_private** %4, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* @wait, align 4
  %15 = load i32, i32* @current, align 4
  %16 = call i32 @DECLARE_WAITQUEUE(i32 %14, i32 %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %68, %1
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.cfi_private*, %struct.cfi_private** %4, align 8
  %23 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br label %26

26:                                               ; preds = %20, %17
  %27 = phi i1 [ false, %17 ], [ %25, %20 ]
  br i1 %27, label %28, label %71

28:                                               ; preds = %26
  %29 = load %struct.cfi_private*, %struct.cfi_private** %4, align 8
  %30 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %29, i32 0, i32 1
  %31 = load %struct.flchip*, %struct.flchip** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.flchip, %struct.flchip* %31, i64 %33
  store %struct.flchip* %34, %struct.flchip** %6, align 8
  br label %35

35:                                               ; preds = %54, %28
  %36 = load %struct.flchip*, %struct.flchip** %6, align 8
  %37 = getelementptr inbounds %struct.flchip, %struct.flchip* %36, i32 0, i32 2
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.flchip*, %struct.flchip** %6, align 8
  %40 = getelementptr inbounds %struct.flchip, %struct.flchip* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %54 [
    i32 130, label %42
    i32 129, label %42
    i32 132, label %42
    i32 131, label %42
    i32 128, label %50
  ]

42:                                               ; preds = %35, %35, %35, %35
  %43 = load %struct.flchip*, %struct.flchip** %6, align 8
  %44 = getelementptr inbounds %struct.flchip, %struct.flchip* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.flchip*, %struct.flchip** %6, align 8
  %47 = getelementptr inbounds %struct.flchip, %struct.flchip* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.flchip*, %struct.flchip** %6, align 8
  %49 = getelementptr inbounds %struct.flchip, %struct.flchip* %48, i32 0, i32 0
  store i32 128, i32* %49, align 4
  br label %50

50:                                               ; preds = %35, %42
  %51 = load %struct.flchip*, %struct.flchip** %6, align 8
  %52 = getelementptr inbounds %struct.flchip, %struct.flchip* %51, i32 0, i32 2
  %53 = call i32 @mutex_unlock(i32* %52)
  br label %67

54:                                               ; preds = %35
  %55 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %56 = call i32 @set_current_state(i32 %55)
  %57 = load %struct.flchip*, %struct.flchip** %6, align 8
  %58 = getelementptr inbounds %struct.flchip, %struct.flchip* %57, i32 0, i32 3
  %59 = call i32 @add_wait_queue(i32* %58, i32* @wait)
  %60 = load %struct.flchip*, %struct.flchip** %6, align 8
  %61 = getelementptr inbounds %struct.flchip, %struct.flchip* %60, i32 0, i32 2
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = call i32 (...) @schedule()
  %64 = load %struct.flchip*, %struct.flchip** %6, align 8
  %65 = getelementptr inbounds %struct.flchip, %struct.flchip* %64, i32 0, i32 3
  %66 = call i32 @remove_wait_queue(i32* %65, i32* @wait)
  br label %35

67:                                               ; preds = %50
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %17

71:                                               ; preds = %26
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %104, %71
  %75 = load i32, i32* %5, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %107

77:                                               ; preds = %74
  %78 = load %struct.cfi_private*, %struct.cfi_private** %4, align 8
  %79 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %78, i32 0, i32 1
  %80 = load %struct.flchip*, %struct.flchip** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.flchip, %struct.flchip* %80, i64 %82
  store %struct.flchip* %83, %struct.flchip** %6, align 8
  %84 = load %struct.flchip*, %struct.flchip** %6, align 8
  %85 = getelementptr inbounds %struct.flchip, %struct.flchip* %84, i32 0, i32 2
  %86 = call i32 @mutex_lock(i32* %85)
  %87 = load %struct.flchip*, %struct.flchip** %6, align 8
  %88 = getelementptr inbounds %struct.flchip, %struct.flchip* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 128
  br i1 %90, label %91, label %100

91:                                               ; preds = %77
  %92 = load %struct.flchip*, %struct.flchip** %6, align 8
  %93 = getelementptr inbounds %struct.flchip, %struct.flchip* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.flchip*, %struct.flchip** %6, align 8
  %96 = getelementptr inbounds %struct.flchip, %struct.flchip* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.flchip*, %struct.flchip** %6, align 8
  %98 = getelementptr inbounds %struct.flchip, %struct.flchip* %97, i32 0, i32 3
  %99 = call i32 @wake_up(i32* %98)
  br label %100

100:                                              ; preds = %91, %77
  %101 = load %struct.flchip*, %struct.flchip** %6, align 8
  %102 = getelementptr inbounds %struct.flchip, %struct.flchip* %101, i32 0, i32 2
  %103 = call i32 @mutex_unlock(i32* %102)
  br label %104

104:                                              ; preds = %100
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %5, align 4
  br label %74

107:                                              ; preds = %74
  ret void
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
