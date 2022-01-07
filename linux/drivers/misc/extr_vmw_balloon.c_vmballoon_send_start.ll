; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_vmw_balloon.c_vmballoon_send_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_vmw_balloon.c_vmballoon_send_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmballoon = type { i64, i32 }

@VMW_BALLOON_CMD_START = common dso_local global i32 0, align 4
@VMW_BALLOON_BASIC_CMDS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@VMW_BALLOON_4K_PAGE = common dso_local global i32 0, align 4
@VMW_BALLOON_BATCHED_2M_CMDS = common dso_local global i32 0, align 4
@VMW_BALLOON_BATCHED_CMDS = common dso_local global i32 0, align 4
@VMW_BALLOON_2M_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmballoon*, i64)* @vmballoon_send_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmballoon_send_start(%struct.vmballoon* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmballoon*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.vmballoon* %0, %struct.vmballoon** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.vmballoon*, %struct.vmballoon** %4, align 8
  %9 = load i32, i32* @VMW_BALLOON_CMD_START, align 4
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @__vmballoon_cmd(%struct.vmballoon* %8, i32 %9, i64 %10, i32 0, i64* %7)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  switch i64 %12, label %21 [
    i64 128, label %13
    i64 129, label %17
  ]

13:                                               ; preds = %2
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.vmballoon*, %struct.vmballoon** %4, align 8
  %16 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  br label %24

17:                                               ; preds = %2
  %18 = load i64, i64* @VMW_BALLOON_BASIC_CMDS, align 8
  %19 = load %struct.vmballoon*, %struct.vmballoon** %4, align 8
  %20 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %48

24:                                               ; preds = %17, %13
  %25 = load i32, i32* @VMW_BALLOON_4K_PAGE, align 4
  %26 = load %struct.vmballoon*, %struct.vmballoon** %4, align 8
  %27 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.vmballoon*, %struct.vmballoon** %4, align 8
  %29 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @VMW_BALLOON_BATCHED_2M_CMDS, align 4
  %32 = sext i32 %31 to i64
  %33 = and i64 %30, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %24
  %36 = load %struct.vmballoon*, %struct.vmballoon** %4, align 8
  %37 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @VMW_BALLOON_BATCHED_CMDS, align 4
  %40 = sext i32 %39 to i64
  %41 = and i64 %38, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load i32, i32* @VMW_BALLOON_2M_PAGE, align 4
  %45 = load %struct.vmballoon*, %struct.vmballoon** %4, align 8
  %46 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %43, %35, %24
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %21
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @__vmballoon_cmd(%struct.vmballoon*, i32, i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
