; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-context.c_pvr2_context_reset_input_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-context.c_pvr2_context_reset_input_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_context = type { %struct.pvr2_channel*, %struct.pvr2_hdw* }
%struct.pvr2_channel = type { i32, %struct.pvr2_channel* }
%struct.pvr2_hdw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_context*)* @pvr2_context_reset_input_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_context_reset_input_limits(%struct.pvr2_context* %0) #0 {
  %2 = alloca %struct.pvr2_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvr2_channel*, align 8
  %6 = alloca %struct.pvr2_hdw*, align 8
  store %struct.pvr2_context* %0, %struct.pvr2_context** %2, align 8
  %7 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %8 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %7, i32 0, i32 1
  %9 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  store %struct.pvr2_hdw* %9, %struct.pvr2_hdw** %6, align 8
  %10 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %11 = call i32 @pvr2_hdw_get_input_available(%struct.pvr2_hdw* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %3, align 4
  %13 = load %struct.pvr2_context*, %struct.pvr2_context** %2, align 8
  %14 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %13, i32 0, i32 0
  %15 = load %struct.pvr2_channel*, %struct.pvr2_channel** %14, align 8
  store %struct.pvr2_channel* %15, %struct.pvr2_channel** %5, align 8
  br label %16

16:                                               ; preds = %31, %1
  %17 = load %struct.pvr2_channel*, %struct.pvr2_channel** %5, align 8
  %18 = icmp ne %struct.pvr2_channel* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load %struct.pvr2_channel*, %struct.pvr2_channel** %5, align 8
  %21 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %31

25:                                               ; preds = %19
  %26 = load %struct.pvr2_channel*, %struct.pvr2_channel** %5, align 8
  %27 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %25, %24
  %32 = load %struct.pvr2_channel*, %struct.pvr2_channel** %5, align 8
  %33 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %32, i32 0, i32 1
  %34 = load %struct.pvr2_channel*, %struct.pvr2_channel** %33, align 8
  store %struct.pvr2_channel* %34, %struct.pvr2_channel** %5, align 8
  br label %16

35:                                               ; preds = %16
  %36 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @pvr2_hdw_set_input_allowed(%struct.pvr2_hdw* %36, i32 %37, i32 %38)
  %40 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %6, align 8
  %41 = call i32 @pvr2_hdw_commit_ctl(%struct.pvr2_hdw* %40)
  ret void
}

declare dso_local i32 @pvr2_hdw_get_input_available(%struct.pvr2_hdw*) #1

declare dso_local i32 @pvr2_hdw_set_input_allowed(%struct.pvr2_hdw*, i32, i32) #1

declare dso_local i32 @pvr2_hdw_commit_ctl(%struct.pvr2_hdw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
