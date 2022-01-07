; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_tm6000_alloc_urb_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_tm6000_alloc_urb_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm6000_core = type { i32, i32*, i32*, i32 }

@TM6000_NUM_URB_BUF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"unable to allocate %i bytes for transfer buffer %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm6000_core*)* @tm6000_alloc_urb_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tm6000_alloc_urb_buffers(%struct.tm6000_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tm6000_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tm6000_core* %0, %struct.tm6000_core** %3, align 8
  %6 = load i32, i32* @TM6000_NUM_URB_BUF, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %8 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %98

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kmalloc_array(i32 %13, i32 8, i32 %14)
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %18 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %17, i32 0, i32 1
  store i32* %16, i32** %18, align 8
  %19 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %20 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %12
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %98

26:                                               ; preds = %12
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @kmalloc_array(i32 %27, i32 8, i32 %28)
  %30 = bitcast i8* %29 to i32*
  %31 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %32 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %31, i32 0, i32 2
  store i32* %30, i32** %32, align 8
  %33 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %34 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %26
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %98

40:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %94, %40
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %97

45:                                               ; preds = %41
  %46 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %47 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %50 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %54 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = call i32 @usb_alloc_coherent(i32 %48, i32 %51, i32 %52, i32* %58)
  %60 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %61 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  %66 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %67 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %45
  %75 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %76 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @tm6000_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %98

82:                                               ; preds = %45
  %83 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %84 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %91 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @memset(i32 %89, i32 0, i32 %92)
  br label %94

94:                                               ; preds = %82
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %41

97:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %74, %37, %23, %11
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i8* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @usb_alloc_coherent(i32, i32, i32, i32*) #1

declare dso_local i32 @tm6000_err(i8*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
