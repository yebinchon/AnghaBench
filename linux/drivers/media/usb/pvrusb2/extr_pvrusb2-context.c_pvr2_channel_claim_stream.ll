; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-context.c_pvr2_channel_claim_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-context.c_pvr2_channel_claim_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_channel = type { i32, %struct.pvr2_context_stream* }
%struct.pvr2_context_stream = type { %struct.pvr2_channel* }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_channel_claim_stream(%struct.pvr2_channel* %0, %struct.pvr2_context_stream* %1) #0 {
  %3 = alloca %struct.pvr2_channel*, align 8
  %4 = alloca %struct.pvr2_context_stream*, align 8
  %5 = alloca i32, align 4
  store %struct.pvr2_channel* %0, %struct.pvr2_channel** %3, align 8
  store %struct.pvr2_context_stream* %1, %struct.pvr2_context_stream** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.pvr2_channel*, %struct.pvr2_channel** %3, align 8
  %7 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @pvr2_context_enter(i32 %8)
  br label %10

10:                                               ; preds = %2
  %11 = load %struct.pvr2_context_stream*, %struct.pvr2_context_stream** %4, align 8
  %12 = load %struct.pvr2_channel*, %struct.pvr2_channel** %3, align 8
  %13 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %12, i32 0, i32 1
  %14 = load %struct.pvr2_context_stream*, %struct.pvr2_context_stream** %13, align 8
  %15 = icmp eq %struct.pvr2_context_stream* %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %41

17:                                               ; preds = %10
  %18 = load %struct.pvr2_context_stream*, %struct.pvr2_context_stream** %4, align 8
  %19 = icmp ne %struct.pvr2_context_stream* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load %struct.pvr2_context_stream*, %struct.pvr2_context_stream** %4, align 8
  %22 = getelementptr inbounds %struct.pvr2_context_stream, %struct.pvr2_context_stream* %21, i32 0, i32 0
  %23 = load %struct.pvr2_channel*, %struct.pvr2_channel** %22, align 8
  %24 = icmp ne %struct.pvr2_channel* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %41

28:                                               ; preds = %20, %17
  %29 = load %struct.pvr2_channel*, %struct.pvr2_channel** %3, align 8
  %30 = call i32 @pvr2_channel_disclaim_stream(%struct.pvr2_channel* %29)
  %31 = load %struct.pvr2_context_stream*, %struct.pvr2_context_stream** %4, align 8
  %32 = icmp ne %struct.pvr2_context_stream* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %41

34:                                               ; preds = %28
  %35 = load %struct.pvr2_channel*, %struct.pvr2_channel** %3, align 8
  %36 = load %struct.pvr2_context_stream*, %struct.pvr2_context_stream** %4, align 8
  %37 = getelementptr inbounds %struct.pvr2_context_stream, %struct.pvr2_context_stream* %36, i32 0, i32 0
  store %struct.pvr2_channel* %35, %struct.pvr2_channel** %37, align 8
  %38 = load %struct.pvr2_context_stream*, %struct.pvr2_context_stream** %4, align 8
  %39 = load %struct.pvr2_channel*, %struct.pvr2_channel** %3, align 8
  %40 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %39, i32 0, i32 1
  store %struct.pvr2_context_stream* %38, %struct.pvr2_context_stream** %40, align 8
  br label %41

41:                                               ; preds = %34, %33, %25, %16
  %42 = load %struct.pvr2_channel*, %struct.pvr2_channel** %3, align 8
  %43 = getelementptr inbounds %struct.pvr2_channel, %struct.pvr2_channel* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @pvr2_context_exit(i32 %44)
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @pvr2_context_enter(i32) #1

declare dso_local i32 @pvr2_channel_disclaim_stream(%struct.pvr2_channel*) #1

declare dso_local i32 @pvr2_context_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
