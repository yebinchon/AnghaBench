; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_core.c_lkdtm_register_cpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_core.c_lkdtm_register_cpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.crashpoint = type { %struct.TYPE_4__ }
%struct.crashtype = type { i32 }

@lkdtm_kprobe = common dso_local global %struct.TYPE_4__* null, align 8
@lkdtm_crashpoint = common dso_local global %struct.crashpoint* null, align 8
@lkdtm_crashtype = common dso_local global %struct.crashtype* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Couldn't register kprobe %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crashpoint*, %struct.crashtype*)* @lkdtm_register_cpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lkdtm_register_cpoint(%struct.crashpoint* %0, %struct.crashtype* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crashpoint*, align 8
  %5 = alloca %struct.crashtype*, align 8
  %6 = alloca i32, align 4
  store %struct.crashpoint* %0, %struct.crashpoint** %4, align 8
  store %struct.crashtype* %1, %struct.crashtype** %5, align 8
  %7 = load %struct.crashpoint*, %struct.crashpoint** %4, align 8
  %8 = getelementptr inbounds %struct.crashpoint, %struct.crashpoint* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.crashtype*, %struct.crashtype** %5, align 8
  %14 = call i32 @lkdtm_do_action(%struct.crashtype* %13)
  store i32 0, i32* %3, align 4
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lkdtm_kprobe, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lkdtm_kprobe, align 8
  %20 = call i32 @unregister_kprobe(%struct.TYPE_4__* %19)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.crashpoint*, %struct.crashpoint** %4, align 8
  store %struct.crashpoint* %22, %struct.crashpoint** @lkdtm_crashpoint, align 8
  %23 = load %struct.crashtype*, %struct.crashtype** %5, align 8
  store %struct.crashtype* %23, %struct.crashtype** @lkdtm_crashtype, align 8
  %24 = load %struct.crashpoint*, %struct.crashpoint** %4, align 8
  %25 = getelementptr inbounds %struct.crashpoint, %struct.crashpoint* %24, i32 0, i32 0
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** @lkdtm_kprobe, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lkdtm_kprobe, align 8
  %27 = call i32 @register_kprobe(%struct.TYPE_4__* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load %struct.crashpoint*, %struct.crashpoint** %4, align 8
  %32 = getelementptr inbounds %struct.crashpoint, %struct.crashpoint* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %34)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** @lkdtm_kprobe, align 8
  store %struct.crashpoint* null, %struct.crashpoint** @lkdtm_crashpoint, align 8
  store %struct.crashtype* null, %struct.crashtype** @lkdtm_crashtype, align 8
  br label %36

36:                                               ; preds = %30, %21
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @lkdtm_do_action(%struct.crashtype*) #1

declare dso_local i32 @unregister_kprobe(%struct.TYPE_4__*) #1

declare dso_local i32 @register_kprobe(%struct.TYPE_4__*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
