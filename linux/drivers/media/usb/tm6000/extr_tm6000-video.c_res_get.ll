; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_res_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_res_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm6000_core = type { i32, %struct.tm6000_fh* }
%struct.tm6000_fh = type { i32 }

@V4L2_DEBUG_RES_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"res: get\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm6000_core*, %struct.tm6000_fh*, i32)* @res_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @res_get(%struct.tm6000_core* %0, %struct.tm6000_fh* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm6000_core*, align 8
  %6 = alloca %struct.tm6000_fh*, align 8
  %7 = alloca i32, align 4
  store %struct.tm6000_core* %0, %struct.tm6000_core** %5, align 8
  store %struct.tm6000_fh* %1, %struct.tm6000_fh** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %9 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %8, i32 0, i32 1
  %10 = load %struct.tm6000_fh*, %struct.tm6000_fh** %9, align 8
  %11 = load %struct.tm6000_fh*, %struct.tm6000_fh** %6, align 8
  %12 = icmp eq %struct.tm6000_fh* %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %15 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %36

20:                                               ; preds = %13, %3
  %21 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %22 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %21, i32 0, i32 1
  %23 = load %struct.tm6000_fh*, %struct.tm6000_fh** %22, align 8
  %24 = icmp ne %struct.tm6000_fh* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %36

26:                                               ; preds = %20
  %27 = load %struct.tm6000_fh*, %struct.tm6000_fh** %6, align 8
  %28 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %29 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %28, i32 0, i32 1
  store %struct.tm6000_fh* %27, %struct.tm6000_fh** %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %32 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.tm6000_core*, %struct.tm6000_core** %5, align 8
  %34 = load i32, i32* @V4L2_DEBUG_RES_LOCK, align 4
  %35 = call i32 @dprintk(%struct.tm6000_core* %33, i32 %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %36

36:                                               ; preds = %26, %25, %19
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @dprintk(%struct.tm6000_core*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
