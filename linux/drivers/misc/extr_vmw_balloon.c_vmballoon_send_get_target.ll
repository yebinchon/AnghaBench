; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_vmw_balloon.c_vmballoon_send_get_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_vmw_balloon.c_vmballoon_send_get_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmballoon = type { i32 }

@VMW_BALLOON_64_BIT_TARGET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VMW_BALLOON_CMD_GET_TARGET = common dso_local global i32 0, align 4
@VMW_BALLOON_SUCCESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmballoon*)* @vmballoon_send_get_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmballoon_send_get_target(%struct.vmballoon* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmballoon*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.vmballoon* %0, %struct.vmballoon** %3, align 8
  %6 = call i64 (...) @totalram_pages()
  store i64 %6, i64* %5, align 8
  %7 = load %struct.vmballoon*, %struct.vmballoon** %3, align 8
  %8 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @VMW_BALLOON_64_BIT_TARGET, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %34

20:                                               ; preds = %13, %1
  %21 = load %struct.vmballoon*, %struct.vmballoon** %3, align 8
  %22 = load i32, i32* @VMW_BALLOON_CMD_GET_TARGET, align 4
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @vmballoon_cmd(%struct.vmballoon* %21, i32 %22, i64 %23, i32 0)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @VMW_BALLOON_SUCCESS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  br label %32

32:                                               ; preds = %29, %28
  %33 = phi i32 [ 0, %28 ], [ %31, %29 ]
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %17
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @totalram_pages(...) #1

declare dso_local i64 @vmballoon_cmd(%struct.vmballoon*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
