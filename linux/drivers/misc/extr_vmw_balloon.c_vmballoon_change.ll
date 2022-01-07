; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_vmw_balloon.c_vmballoon_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_vmw_balloon.c_vmballoon_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmballoon = type { i32, i64, i32, i32 }

@VMW_BALLOON_2M_PAGE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vmballoon*)* @vmballoon_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vmballoon_change(%struct.vmballoon* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vmballoon*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.vmballoon* %0, %struct.vmballoon** %3, align 8
  %6 = load %struct.vmballoon*, %struct.vmballoon** %3, align 8
  %7 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %6, i32 0, i32 3
  %8 = call i64 @atomic64_read(i32* %7)
  store i64 %8, i64* %4, align 8
  %9 = load %struct.vmballoon*, %struct.vmballoon** %3, align 8
  %10 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @READ_ONCE(i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load %struct.vmballoon*, %struct.vmballoon** %3, align 8
  %14 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %50

18:                                               ; preds = %1
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = sub nsw i64 %26, %27
  %29 = load i32, i32* @VMW_BALLOON_2M_PAGE, align 4
  %30 = call i64 @vmballoon_page_in_frames(i32 %29)
  %31 = icmp slt i64 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i64 0, i64* %2, align 8
  br label %50

33:                                               ; preds = %25, %22, %18
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load i32, i32* @jiffies, align 4
  %39 = load %struct.vmballoon*, %struct.vmballoon** %3, align 8
  %40 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @READ_ONCE(i32 %41)
  %43 = call i64 @time_before(i32 %38, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i64 0, i64* %2, align 8
  br label %50

46:                                               ; preds = %37, %33
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %4, align 8
  %49 = sub nsw i64 %47, %48
  store i64 %49, i64* %2, align 8
  br label %50

50:                                               ; preds = %46, %45, %32, %17
  %51 = load i64, i64* %2, align 8
  ret i64 %51
}

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @vmballoon_page_in_frames(i32) #1

declare dso_local i64 @time_before(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
