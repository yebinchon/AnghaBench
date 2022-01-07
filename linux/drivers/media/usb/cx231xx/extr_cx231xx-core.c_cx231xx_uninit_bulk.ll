; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-core.c_cx231xx_uninit_bulk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-core.c_cx231xx_uninit_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, %struct.cx231xx_dmaqueue }
%struct.TYPE_3__ = type { i32, i32, %struct.urb**, %struct.urb** }
%struct.urb = type { i32, i32, i32 }
%struct.cx231xx_dmaqueue = type { %struct.urb** }

@.str = private unnamed_addr constant [37 x i8] c"cx231xx: called cx231xx_uninit_bulk\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Reset endpoint to recover broken pipe.\00", align 1
@Raw_Video = common dso_local global i32 0, align 4
@TS1_serial_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx231xx_uninit_bulk(%struct.cx231xx* %0) #0 {
  %2 = alloca %struct.cx231xx*, align 8
  %3 = alloca %struct.cx231xx_dmaqueue*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %2, align 8
  %7 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %8 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store %struct.cx231xx_dmaqueue* %9, %struct.cx231xx_dmaqueue** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = call i32 @cx231xx_isocdbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %12 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 -1, i32* %14, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %103, %1
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %18 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %16, %21
  br i1 %22, label %23, label %106

23:                                               ; preds = %15
  %24 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %25 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load %struct.urb**, %struct.urb*** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.urb*, %struct.urb** %28, i64 %30
  %32 = load %struct.urb*, %struct.urb** %31, align 8
  store %struct.urb* %32, %struct.urb** %4, align 8
  %33 = load %struct.urb*, %struct.urb** %4, align 8
  %34 = icmp ne %struct.urb* %33, null
  br i1 %34, label %35, label %94

35:                                               ; preds = %23
  %36 = call i32 (...) @irqs_disabled()
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load %struct.urb*, %struct.urb** %4, align 8
  %40 = call i32 @usb_kill_urb(%struct.urb* %39)
  br label %44

41:                                               ; preds = %35
  %42 = load %struct.urb*, %struct.urb** %4, align 8
  %43 = call i32 @usb_unlink_urb(%struct.urb* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %46 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load %struct.urb**, %struct.urb*** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.urb*, %struct.urb** %49, i64 %51
  %53 = load %struct.urb*, %struct.urb** %52, align 8
  %54 = icmp ne %struct.urb* %53, null
  br i1 %54, label %55, label %75

55:                                               ; preds = %44
  %56 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %57 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.urb*, %struct.urb** %4, align 8
  %60 = getelementptr inbounds %struct.urb, %struct.urb* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %63 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load %struct.urb**, %struct.urb*** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.urb*, %struct.urb** %66, i64 %68
  %70 = load %struct.urb*, %struct.urb** %69, align 8
  %71 = load %struct.urb*, %struct.urb** %4, align 8
  %72 = getelementptr inbounds %struct.urb, %struct.urb* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @usb_free_coherent(i32 %58, i32 %61, %struct.urb* %70, i32 %73)
  br label %75

75:                                               ; preds = %55, %44
  %76 = load %struct.urb*, %struct.urb** %4, align 8
  %77 = getelementptr inbounds %struct.urb, %struct.urb* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @EPIPE, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  store i32 1, i32* %6, align 4
  br label %83

83:                                               ; preds = %82, %75
  %84 = load %struct.urb*, %struct.urb** %4, align 8
  %85 = call i32 @usb_free_urb(%struct.urb* %84)
  %86 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %87 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 3
  %90 = load %struct.urb**, %struct.urb*** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.urb*, %struct.urb** %90, i64 %92
  store %struct.urb* null, %struct.urb** %93, align 8
  br label %94

94:                                               ; preds = %83, %23
  %95 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %96 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load %struct.urb**, %struct.urb*** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.urb*, %struct.urb** %99, i64 %101
  store %struct.urb* null, %struct.urb** %102, align 8
  br label %103

103:                                              ; preds = %94
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %15

106:                                              ; preds = %15
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = call i32 @cx231xx_isocdbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %111 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %112 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %115 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @usb_reset_endpoint(i32 %113, i32 %117)
  br label %119

119:                                              ; preds = %109, %106
  %120 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %121 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 3
  %124 = load %struct.urb**, %struct.urb*** %123, align 8
  %125 = call i32 @kfree(%struct.urb** %124)
  %126 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %127 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  %130 = load %struct.urb**, %struct.urb*** %129, align 8
  %131 = call i32 @kfree(%struct.urb** %130)
  %132 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %3, align 8
  %133 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %132, i32 0, i32 0
  %134 = load %struct.urb**, %struct.urb*** %133, align 8
  %135 = call i32 @kfree(%struct.urb** %134)
  %136 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %137 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 3
  store %struct.urb** null, %struct.urb*** %139, align 8
  %140 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %141 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  store %struct.urb** null, %struct.urb*** %143, align 8
  %144 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %145 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  store i32 0, i32* %147, align 4
  %148 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %3, align 8
  %149 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %148, i32 0, i32 0
  store %struct.urb** null, %struct.urb*** %149, align 8
  %150 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %151 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %119
  %155 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %156 = load i32, i32* @Raw_Video, align 4
  %157 = call i32 @cx231xx_capture_start(%struct.cx231xx* %155, i32 0, i32 %156)
  br label %162

158:                                              ; preds = %119
  %159 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %160 = load i32, i32* @TS1_serial_mode, align 4
  %161 = call i32 @cx231xx_capture_start(%struct.cx231xx* %159, i32 0, i32 %160)
  br label %162

162:                                              ; preds = %158, %154
  ret void
}

declare dso_local i32 @cx231xx_isocdbg(i8*) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i32 @usb_unlink_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_coherent(i32, i32, %struct.urb*, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_reset_endpoint(i32, i32) #1

declare dso_local i32 @kfree(%struct.urb**) #1

declare dso_local i32 @cx231xx_capture_start(%struct.cx231xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
