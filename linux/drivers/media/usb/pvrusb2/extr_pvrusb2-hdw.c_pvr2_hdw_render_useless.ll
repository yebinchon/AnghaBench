; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_render_useless.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_render_useless.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i64, i64 }

@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Device being rendered inoperable\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"flag_ok\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pvr2_hdw_render_useless(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca %struct.pvr2_hdw*, align 8
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %2, align 8
  %3 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %4 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %29

8:                                                ; preds = %1
  %9 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %10 = call i32 @pvr2_trace(i32 %9, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %12 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %17 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @pvr2_stream_setup(i64 %18, i32* null, i32 0, i32 0)
  br label %20

20:                                               ; preds = %15, %8
  %21 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %22 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %24 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @trace_stbit(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %28 = call i32 @pvr2_hdw_state_sched(%struct.pvr2_hdw* %27)
  br label %29

29:                                               ; preds = %20, %7
  ret void
}

declare dso_local i32 @pvr2_trace(i32, i8*) #1

declare dso_local i32 @pvr2_stream_setup(i64, i32*, i32, i32) #1

declare dso_local i32 @trace_stbit(i8*, i64) #1

declare dso_local i32 @pvr2_hdw_state_sched(%struct.pvr2_hdw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
