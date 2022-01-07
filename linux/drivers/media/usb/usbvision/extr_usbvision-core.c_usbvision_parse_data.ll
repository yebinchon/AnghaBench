; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_parse_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_parse_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i64, i32, i32, i32, %struct.usbvision_frame*, i32 }
%struct.usbvision_frame = type { i64, i64, i32, i32, i32, i32 }

@DBG_PARSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"parsing len=%d\0A\00", align 1
@parse_state_out = common dso_local global i32 0, align 4
@scan_state_scanning = common dso_local global i64 0, align 8
@scan_state_lines = common dso_local global i64 0, align 8
@ISOC_MODE_YUV420 = common dso_local global i64 0, align 8
@ISOC_MODE_YUV422 = common dso_local global i64 0, align 8
@ISOC_MODE_COMPRESS = common dso_local global i64 0, align 8
@parse_state_continue = common dso_local global i32 0, align 4
@parse_state_next_frame = common dso_local global i32 0, align 4
@frame_state_done = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Wake up !\00", align 1
@frame_state_grabbing = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_usbvision*)* @usbvision_parse_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbvision_parse_data(%struct.usb_usbvision* %0) #0 {
  %2 = alloca %struct.usb_usbvision*, align 8
  %3 = alloca %struct.usbvision_frame*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %2, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %8 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %7, i32 0, i32 4
  %9 = load %struct.usbvision_frame*, %struct.usbvision_frame** %8, align 8
  store %struct.usbvision_frame* %9, %struct.usbvision_frame** %3, align 8
  %10 = load i32, i32* @DBG_PARSE, align 4
  %11 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %12 = call i64 @scratch_len(%struct.usb_usbvision* %11)
  %13 = call i32 (i32, i8*, ...) @PDEBUG(i32 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %12)
  br label %14

14:                                               ; preds = %1, %70
  %15 = load i32, i32* @parse_state_out, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %17 = call i64 @scratch_len(%struct.usb_usbvision* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %66

19:                                               ; preds = %14
  %20 = load %struct.usbvision_frame*, %struct.usbvision_frame** %3, align 8
  %21 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @scan_state_scanning, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %27 = call i32 @usbvision_find_header(%struct.usb_usbvision* %26)
  store i32 %27, i32* %4, align 4
  br label %65

28:                                               ; preds = %19
  %29 = load %struct.usbvision_frame*, %struct.usbvision_frame** %3, align 8
  %30 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @scan_state_lines, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %64

34:                                               ; preds = %28
  %35 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %36 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ISOC_MODE_YUV420, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %42 = call i32 @usbvision_parse_lines_420(%struct.usb_usbvision* %41, i64* %5)
  store i32 %42, i32* %4, align 4
  br label %63

43:                                               ; preds = %34
  %44 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %45 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ISOC_MODE_YUV422, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %51 = call i32 @usbvision_parse_lines_422(%struct.usb_usbvision* %50, i64* %5)
  store i32 %51, i32* %4, align 4
  br label %62

52:                                               ; preds = %43
  %53 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %54 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ISOC_MODE_COMPRESS, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %60 = call i32 @usbvision_parse_compress(%struct.usb_usbvision* %59, i64* %5)
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %52
  br label %62

62:                                               ; preds = %61, %49
  br label %63

63:                                               ; preds = %62, %40
  br label %64

64:                                               ; preds = %63, %28
  br label %65

65:                                               ; preds = %64, %25
  br label %66

66:                                               ; preds = %65, %14
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @parse_state_continue, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %14

71:                                               ; preds = %66
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @parse_state_next_frame, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @parse_state_out, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75, %71
  br label %81

80:                                               ; preds = %75
  br label %137

81:                                               ; preds = %79
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @parse_state_next_frame, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %127

85:                                               ; preds = %81
  %86 = load i32, i32* @frame_state_done, align 4
  %87 = load %struct.usbvision_frame*, %struct.usbvision_frame** %3, align 8
  %88 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = call i32 (...) @ktime_get_ns()
  %90 = load %struct.usbvision_frame*, %struct.usbvision_frame** %3, align 8
  %91 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  %92 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %93 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.usbvision_frame*, %struct.usbvision_frame** %3, align 8
  %96 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %98 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %97, i32 0, i32 3
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @spin_lock_irqsave(i32* %98, i64 %99)
  %101 = load %struct.usbvision_frame*, %struct.usbvision_frame** %3, align 8
  %102 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %101, i32 0, i32 3
  %103 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %104 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %103, i32 0, i32 5
  %105 = call i32 @list_move_tail(i32* %102, i32* %104)
  %106 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %107 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %106, i32 0, i32 4
  store %struct.usbvision_frame* null, %struct.usbvision_frame** %107, align 8
  %108 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %109 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %108, i32 0, i32 3
  %110 = load i64, i64* %6, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  %112 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %113 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  %116 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %117 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %116, i32 0, i32 1
  %118 = call i64 @waitqueue_active(i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %85
  %121 = load i32, i32* @DBG_PARSE, align 4
  %122 = call i32 (i32, i8*, ...) @PDEBUG(i32 %121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %123 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %124 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %123, i32 0, i32 1
  %125 = call i32 @wake_up_interruptible(i32* %124)
  br label %126

126:                                              ; preds = %120, %85
  br label %131

127:                                              ; preds = %81
  %128 = load i32, i32* @frame_state_grabbing, align 4
  %129 = load %struct.usbvision_frame*, %struct.usbvision_frame** %3, align 8
  %130 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  br label %131

131:                                              ; preds = %127, %126
  %132 = load i64, i64* %5, align 8
  %133 = load %struct.usbvision_frame*, %struct.usbvision_frame** %3, align 8
  %134 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, %132
  store i64 %136, i64* %134, align 8
  br label %137

137:                                              ; preds = %131, %80
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i64 @scratch_len(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_find_header(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_parse_lines_420(%struct.usb_usbvision*, i64*) #1

declare dso_local i32 @usbvision_parse_lines_422(%struct.usb_usbvision*, i64*) #1

declare dso_local i32 @usbvision_parse_compress(%struct.usb_usbvision*, i64*) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
