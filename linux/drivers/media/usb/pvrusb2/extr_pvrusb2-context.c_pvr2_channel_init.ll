; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-context.c_pvr2_channel_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-context.c_pvr2_channel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_channel = type { %struct.pvr2_channel*, %struct.pvr2_channel*, %struct.pvr2_context*, i32 }
%struct.pvr2_context = type { %struct.pvr2_channel*, %struct.pvr2_channel*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pvr2_channel_init(%struct.pvr2_channel* %0, %struct.pvr2_context* %1) #0 {
  %3 = alloca %struct.pvr2_channel*, align 8
  %4 = alloca %struct.pvr2_context*, align 8
  store %struct.pvr2_channel* %0, %struct.pvr2_channel** %3, align 8
  store %struct.pvr2_context* %1, %struct.pvr2_context** %4, align 8
  %5 = load %struct.pvr2_context*, %struct.pvr2_context** %4, align 8
  %6 = call i32 @pvr2_context_enter(%struct.pvr2_context* %5)
  %7 = load %struct.pvr2_context*, %struct.pvr2_context** %4, align 8
  %8 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.pvr2_channel*, %struct.pvr2_channel** %3, align 8
  %11 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load %struct.pvr2_context*, %struct.pvr2_context** %4, align 8
  %13 = load %struct.pvr2_channel*, %struct.pvr2_channel** %3, align 8
  %14 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %13, i32 0, i32 2
  store %struct.pvr2_context* %12, %struct.pvr2_context** %14, align 8
  %15 = load %struct.pvr2_channel*, %struct.pvr2_channel** %3, align 8
  %16 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %15, i32 0, i32 0
  store %struct.pvr2_channel* null, %struct.pvr2_channel** %16, align 8
  %17 = load %struct.pvr2_context*, %struct.pvr2_context** %4, align 8
  %18 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %17, i32 0, i32 0
  %19 = load %struct.pvr2_channel*, %struct.pvr2_channel** %18, align 8
  %20 = load %struct.pvr2_channel*, %struct.pvr2_channel** %3, align 8
  %21 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %20, i32 0, i32 1
  store %struct.pvr2_channel* %19, %struct.pvr2_channel** %21, align 8
  %22 = load %struct.pvr2_context*, %struct.pvr2_context** %4, align 8
  %23 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %22, i32 0, i32 0
  %24 = load %struct.pvr2_channel*, %struct.pvr2_channel** %23, align 8
  %25 = icmp ne %struct.pvr2_channel* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.pvr2_channel*, %struct.pvr2_channel** %3, align 8
  %28 = load %struct.pvr2_context*, %struct.pvr2_context** %4, align 8
  %29 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %28, i32 0, i32 0
  %30 = load %struct.pvr2_channel*, %struct.pvr2_channel** %29, align 8
  %31 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %30, i32 0, i32 0
  store %struct.pvr2_channel* %27, %struct.pvr2_channel** %31, align 8
  br label %36

32:                                               ; preds = %2
  %33 = load %struct.pvr2_channel*, %struct.pvr2_channel** %3, align 8
  %34 = load %struct.pvr2_context*, %struct.pvr2_context** %4, align 8
  %35 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %34, i32 0, i32 1
  store %struct.pvr2_channel* %33, %struct.pvr2_channel** %35, align 8
  br label %36

36:                                               ; preds = %32, %26
  %37 = load %struct.pvr2_channel*, %struct.pvr2_channel** %3, align 8
  %38 = load %struct.pvr2_context*, %struct.pvr2_context** %4, align 8
  %39 = getelementptr inbounds %struct.pvr2_context, %struct.pvr2_context* %38, i32 0, i32 0
  store %struct.pvr2_channel* %37, %struct.pvr2_channel** %39, align 8
  %40 = load %struct.pvr2_context*, %struct.pvr2_context** %4, align 8
  %41 = call i32 @pvr2_context_exit(%struct.pvr2_context* %40)
  ret void
}

declare dso_local i32 @pvr2_context_enter(%struct.pvr2_context*) #1

declare dso_local i32 @pvr2_context_exit(%struct.pvr2_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
