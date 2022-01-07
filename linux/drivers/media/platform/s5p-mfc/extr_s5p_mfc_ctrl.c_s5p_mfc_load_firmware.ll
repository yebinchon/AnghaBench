; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_ctrl.c_s5p_mfc_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_ctrl.c_s5p_mfc_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.firmware = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MFC_FW_MAX_VERSIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"Firmware is not present in the /lib/firmware directory nor compiled in kernel\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"MFC firmware is too big to be loaded\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s5p_mfc_load_firmware(%struct.s5p_mfc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %3, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = call i32 (...) @mfc_debug_enter()
  %10 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %11 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %98

15:                                               ; preds = %1
  %16 = load i32, i32* @MFC_FW_MAX_VERSIONS, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %55, %15
  %19 = load i32, i32* %5, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %18
  %22 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %23 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %22, i32 0, i32 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %55

33:                                               ; preds = %21
  %34 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %35 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %34, i32 0, i32 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %44 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = call i32 @request_firmware(%struct.firmware** %4, i32 %42, i32* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %33
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %53 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %58

54:                                               ; preds = %33
  br label %55

55:                                               ; preds = %54, %32
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %5, align 4
  br label %18

58:                                               ; preds = %50, %18
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = call i32 @mfc_err(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %98

65:                                               ; preds = %58
  %66 = load %struct.firmware*, %struct.firmware** %4, align 8
  %67 = getelementptr inbounds %struct.firmware, %struct.firmware* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %70 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %68, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %65
  %75 = call i32 @mfc_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %76 = load %struct.firmware*, %struct.firmware** %4, align 8
  %77 = call i32 @release_firmware(%struct.firmware* %76)
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %98

80:                                               ; preds = %65
  %81 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %82 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.firmware*, %struct.firmware** %4, align 8
  %86 = getelementptr inbounds %struct.firmware, %struct.firmware* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.firmware*, %struct.firmware** %4, align 8
  %89 = getelementptr inbounds %struct.firmware, %struct.firmware* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @memcpy(i32 %84, i32 %87, i64 %90)
  %92 = call i32 (...) @wmb()
  %93 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %94 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = load %struct.firmware*, %struct.firmware** %4, align 8
  %96 = call i32 @release_firmware(%struct.firmware* %95)
  %97 = call i32 (...) @mfc_debug_leave()
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %80, %74, %61, %14
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @mfc_debug_enter(...) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32*) #1

declare dso_local i32 @mfc_err(i8*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mfc_debug_leave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
