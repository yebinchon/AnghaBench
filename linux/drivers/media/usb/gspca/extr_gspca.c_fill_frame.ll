; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_gspca.c_fill_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_gspca.c_fill_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 (%struct.gspca_dev*, i32*, i32)* }
%struct.urb = type { i32, %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"urb status: %d\0A\00", align 1
@D_PACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"ISOC data error: [%d] len=%d, status=%d\0A\00", align 1
@DISCARD_PACKET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"packet [%d] o:%d l:%d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"usb_submit_urb() ret %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, %struct.urb*)* @fill_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_frame(%struct.gspca_dev* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32 (%struct.gspca_dev*, i32*, i32)*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %10 = load %struct.urb*, %struct.urb** %4, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load %struct.urb*, %struct.urb** %4, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ESHUTDOWN, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %135

22:                                               ; preds = %14
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %24 = load %struct.urb*, %struct.urb** %4, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @gspca_err(%struct.gspca_dev* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.urb*, %struct.urb** %4, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 3
  store i32 0, i32* %29, align 8
  br label %120

30:                                               ; preds = %2
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %32 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %31, i32 0, i32 3
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (%struct.gspca_dev*, i32*, i32)*, i32 (%struct.gspca_dev*, i32*, i32)** %34, align 8
  store i32 (%struct.gspca_dev*, i32*, i32)* %35, i32 (%struct.gspca_dev*, i32*, i32)** %9, align 8
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %116, %30
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.urb*, %struct.urb** %4, align 8
  %39 = getelementptr inbounds %struct.urb, %struct.urb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %119

42:                                               ; preds = %36
  %43 = load %struct.urb*, %struct.urb** %4, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %7, align 4
  %51 = load %struct.urb*, %struct.urb** %4, align 8
  %52 = getelementptr inbounds %struct.urb, %struct.urb* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %42
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %63 = load i32, i32* @D_PACK, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @gspca_dbg(%struct.gspca_dev* %62, i32 %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* @DISCARD_PACKET, align 4
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %70 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  br label %116

71:                                               ; preds = %42
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %76 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %81 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %74
  br label %116

83:                                               ; preds = %71
  %84 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %85 = load i32, i32* @D_PACK, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.urb*, %struct.urb** %4, align 8
  %88 = getelementptr inbounds %struct.urb, %struct.urb* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @gspca_dbg(%struct.gspca_dev* %84, i32 %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %94, i32 %95)
  %97 = load %struct.urb*, %struct.urb** %4, align 8
  %98 = getelementptr inbounds %struct.urb, %struct.urb* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i32*
  %101 = load %struct.urb*, %struct.urb** %4, align 8
  %102 = getelementptr inbounds %struct.urb, %struct.urb* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %100, i64 %109
  store i32* %110, i32** %5, align 8
  %111 = load i32 (%struct.gspca_dev*, i32*, i32)*, i32 (%struct.gspca_dev*, i32*, i32)** %9, align 8
  %112 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 %111(%struct.gspca_dev* %112, i32* %113, i32 %114)
  br label %116

116:                                              ; preds = %83, %82, %61
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %36

119:                                              ; preds = %36
  br label %120

120:                                              ; preds = %119, %22
  %121 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %122 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %120
  br label %135

126:                                              ; preds = %120
  %127 = load %struct.urb*, %struct.urb** %4, align 8
  %128 = load i32, i32* @GFP_ATOMIC, align 4
  %129 = call i32 @usb_submit_urb(%struct.urb* %127, i32 %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %21, %125, %132, %126
  ret void
}

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
