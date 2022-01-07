; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-ioread.c_pvr2_ioread_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-ioread.c_pvr2_ioread_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ioread = type { %struct.pvr2_ioread* }

@PVR2_TRACE_STRUCT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"pvr2_ioread_destroy id=%p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pvr2_ioread_destroy(%struct.pvr2_ioread* %0) #0 {
  %2 = alloca %struct.pvr2_ioread*, align 8
  store %struct.pvr2_ioread* %0, %struct.pvr2_ioread** %2, align 8
  %3 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %4 = icmp ne %struct.pvr2_ioread* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %26

6:                                                ; preds = %1
  %7 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %8 = call i32 @pvr2_ioread_done(%struct.pvr2_ioread* %7)
  %9 = load i32, i32* @PVR2_TRACE_STRUCT, align 4
  %10 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %11 = call i32 @pvr2_trace(i32 %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.pvr2_ioread* %10)
  %12 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %13 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %12, i32 0, i32 0
  %14 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %13, align 8
  %15 = icmp ne %struct.pvr2_ioread* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %6
  %17 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %18 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %17, i32 0, i32 0
  %19 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %18, align 8
  %20 = call i32 @kfree(%struct.pvr2_ioread* %19)
  %21 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %22 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %21, i32 0, i32 0
  store %struct.pvr2_ioread* null, %struct.pvr2_ioread** %22, align 8
  br label %23

23:                                               ; preds = %16, %6
  %24 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %2, align 8
  %25 = call i32 @kfree(%struct.pvr2_ioread* %24)
  br label %26

26:                                               ; preds = %23, %5
  ret void
}

declare dso_local i32 @pvr2_ioread_done(%struct.pvr2_ioread*) #1

declare dso_local i32 @pvr2_trace(i32, i8*, %struct.pvr2_ioread*) #1

declare dso_local i32 @kfree(%struct.pvr2_ioread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
