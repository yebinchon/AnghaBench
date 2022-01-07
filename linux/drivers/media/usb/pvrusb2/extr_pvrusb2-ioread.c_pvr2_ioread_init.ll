; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-ioread.c_pvr2_ioread_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-ioread.c_pvr2_ioread_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ioread = type { i32*, i32, i32* }

@BUFFER_COUNT = common dso_local global i32 0, align 4
@BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_ioread*)* @pvr2_ioread_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_ioread_init(%struct.pvr2_ioread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvr2_ioread*, align 8
  %4 = alloca i32, align 4
  store %struct.pvr2_ioread* %0, %struct.pvr2_ioread** %3, align 8
  %5 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %6 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %5, i32 0, i32 2
  store i32* null, i32** %6, align 8
  %7 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %8 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %7, i32 0, i32 1
  %9 = call i32 @mutex_init(i32* %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %34, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @BUFFER_COUNT, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = load i32, i32* @BUFFER_SIZE, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32 @kmalloc(i32 %15, i32 %16)
  %18 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %19 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 %17, i32* %23, align 4
  %24 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %25 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %14
  br label %37

33:                                               ; preds = %14
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %10

37:                                               ; preds = %32, %10
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @BUFFER_COUNT, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %71

41:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %65, %41
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @BUFFER_COUNT, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %42
  %47 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %48 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %46
  br label %65

56:                                               ; preds = %46
  %57 = load %struct.pvr2_ioread*, %struct.pvr2_ioread** %3, align 8
  %58 = getelementptr inbounds %struct.pvr2_ioread, %struct.pvr2_ioread* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @kfree(i32 %63)
  br label %65

65:                                               ; preds = %56, %55
  %66 = load i32, i32* %4, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %42

68:                                               ; preds = %42
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %72

71:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %68
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
