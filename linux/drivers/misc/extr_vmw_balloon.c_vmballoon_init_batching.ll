; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_vmw_balloon.c_vmballoon_init_batching.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_vmw_balloon.c_vmballoon_init_batching.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmballoon = type { i32, i32 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@vmw_balloon_batching = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmballoon*)* @vmballoon_init_batching to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmballoon_init_batching(%struct.vmballoon* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmballoon*, align 8
  %4 = alloca %struct.page*, align 8
  store %struct.vmballoon* %0, %struct.vmballoon** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = load i32, i32* @__GFP_ZERO, align 4
  %7 = or i32 %5, %6
  %8 = call %struct.page* @alloc_page(i32 %7)
  store %struct.page* %8, %struct.page** %4, align 8
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = icmp ne %struct.page* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %26

14:                                               ; preds = %1
  %15 = load %struct.page*, %struct.page** %4, align 8
  %16 = call i32 @page_address(%struct.page* %15)
  %17 = load %struct.vmballoon*, %struct.vmballoon** %3, align 8
  %18 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = sext i32 %19 to i64
  %21 = udiv i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = load %struct.vmballoon*, %struct.vmballoon** %3, align 8
  %24 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = call i32 @static_branch_enable(i32* @vmw_balloon_batching)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %14, %11
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @static_branch_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
