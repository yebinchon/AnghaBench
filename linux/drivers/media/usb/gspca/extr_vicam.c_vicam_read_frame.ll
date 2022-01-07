; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_vicam.c_vicam_read_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_vicam.c_vicam_read_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32*, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"bulk read fail (%d) len %d/%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32*, i32)* @vicam_read_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vicam_read_frame(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %15 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %11, align 8
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %18 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @v4l2_ctrl_g_ctrl(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %22 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @v4l2_ctrl_g_ctrl(i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @memset(i32* %25, i32 0, i32 16)
  %27 = load i32, i32* %13, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %31 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 256
  br i1 %34, label %35, label %40

35:                                               ; preds = %3
  %36 = load i32*, i32** %11, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %35, %3
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %42 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp sle i32 %44, 122
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load i32*, i32** %11, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, 16
  store i32 %50, i32* %48, align 4
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %52 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 2
  store i32 %55, i32* %9, align 4
  br label %61

56:                                               ; preds = %40
  %57 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %58 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %56, %46
  %62 = load i32*, i32** %11, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32 144, i32* %63, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp sle i32 %64, 200
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32*, i32** %11, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  store i32 6, i32* %68, align 4
  br label %79

69:                                               ; preds = %61
  %70 = load i32, i32* %9, align 4
  %71 = icmp sle i32 %70, 242
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32*, i32** %11, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  store i32 7, i32* %74, align 4
  br label %78

75:                                               ; preds = %69
  %76 = load i32*, i32** %11, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  store i32 8, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %72
  br label %79

79:                                               ; preds = %78, %66
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %80, 256
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = load i32, i32* %12, align 4
  %84 = sub nsw i32 255, %83
  %85 = load i32*, i32** %11, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  store i32 %84, i32* %86, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 5
  store i32 0, i32* %88, align 4
  %89 = load i32*, i32** %11, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 6
  store i32 0, i32* %90, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 7
  store i32 1, i32* %92, align 4
  br label %106

93:                                               ; preds = %79
  %94 = load i32*, i32** %11, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 4
  store i32 0, i32* %95, align 4
  %96 = load i32*, i32** %11, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 5
  store i32 0, i32* %97, align 4
  %98 = load i32, i32* %12, align 4
  %99 = and i32 %98, 255
  %100 = load i32*, i32** %11, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 6
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %12, align 4
  %103 = ashr i32 %102, 8
  %104 = load i32*, i32** %11, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 7
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %93, %82
  %107 = load i32, i32* %9, align 4
  %108 = sub nsw i32 244, %107
  %109 = sdiv i32 %108, 2
  %110 = and i32 %109, -2
  %111 = load i32*, i32** %11, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 8
  store i32 %110, i32* %112, align 4
  %113 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %114 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %113, i32 0, i32 2
  %115 = call i32 @mutex_lock(i32* %114)
  %116 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %117 = load i32*, i32** %11, align 8
  %118 = call i32 @vicam_control_msg(%struct.gspca_dev* %116, i32 81, i32 128, i32 0, i32* %117, i32 16)
  store i32 %118, i32* %8, align 4
  %119 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %120 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %119, i32 0, i32 2
  %121 = call i32 @mutex_unlock(i32* %120)
  %122 = load i32, i32* %8, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %106
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %4, align 4
  br label %151

126:                                              ; preds = %106
  %127 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %128 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %131 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @usb_rcvbulkpipe(i32 %132, i32 129)
  %134 = load i32*, i32** %6, align 8
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @usb_bulk_msg(i32 %129, i32 %133, i32* %134, i32 %135, i32* %10, i32 10000)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %126
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %139, %126
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %144, i32 %145, i32 %146)
  %148 = load i32, i32* @EIO, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %4, align 4
  br label %151

150:                                              ; preds = %139
  store i32 0, i32* %4, align 4
  br label %151

151:                                              ; preds = %150, %143, %124
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vicam_control_msg(%struct.gspca_dev*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_bulk_msg(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
