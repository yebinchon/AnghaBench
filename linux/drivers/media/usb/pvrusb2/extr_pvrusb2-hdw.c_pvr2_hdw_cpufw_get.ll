; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_cpufw_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_cpufw_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PVR2_TRACE_FIRMWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Read firmware data offs=%d EOF\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Read firmware data offs=%d cnt=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_hdw_cpufw_get(%struct.pvr2_hdw* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.pvr2_hdw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %13 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @LOCK_TAKE(i32 %14)
  br label %16

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  br label %71

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  br label %71

24:                                               ; preds = %20
  %25 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %26 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %71

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %35 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp uge i32 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* @PVR2_TRACE_FIRMWARE, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (i32, i8*, i32, ...) @pvr2_trace(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i32 0, i32* %9, align 4
  br label %71

42:                                               ; preds = %32
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %8, align 4
  %45 = add i32 %43, %44
  %46 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %47 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ugt i32 %45, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %52 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sub i32 %53, %54
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %50, %42
  %57 = load i8*, i8** %7, align 8
  %58 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %59 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = zext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @memcpy(i8* %57, i64 %63, i32 %64)
  %66 = load i32, i32* @PVR2_TRACE_FIRMWARE, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 (i32, i8*, i32, ...) @pvr2_trace(i32 %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %56, %38, %29, %23, %19
  %72 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %5, align 8
  %73 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @LOCK_GIVE(i32 %74)
  %76 = load i32, i32* %9, align 4
  ret i32 %76
}

declare dso_local i32 @LOCK_TAKE(i32) #1

declare dso_local i32 @pvr2_trace(i32, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @LOCK_GIVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
