; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/msi2500/extr_msi2500.c_msi2500_isoc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/msi2500/extr_msi2500.c_msi2500_isoc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi2500_dev = type { %struct.urb**, i32, i32, i64 }
%struct.urb = type { i32, i32, i32, %struct.TYPE_2__*, i64, %struct.msi2500_dev*, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MAX_ISO_BUFS = common dso_local global i32 0, align 4
@ISO_FRAMES_PER_DESC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Allocated URB at 0x%p\0A\00", align 1
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@ISO_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to allocate urb buffer %d\0A\00", align 1
@msi2500_isoc_handler = common dso_local global i32 0, align 4
@ISO_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"usb_submit_urb %d failed with error %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"URB 0x%p submitted.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msi2500_dev*)* @msi2500_isoc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi2500_isoc_init(%struct.msi2500_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msi2500_dev*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.msi2500_dev* %0, %struct.msi2500_dev** %3, align 8
  %8 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %9 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i32, i8*, ...) @dev_dbg(i32 %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %13 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %15 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @usb_set_interface(i32 %16, i32 0, i32 1)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %181

22:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %135, %22
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @MAX_ISO_BUFS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %138

27:                                               ; preds = %23
  %28 = load i32, i32* @ISO_FRAMES_PER_DESC, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.urb* @usb_alloc_urb(i32 %28, i32 %29)
  store %struct.urb* %30, %struct.urb** %4, align 8
  %31 = load %struct.urb*, %struct.urb** %4, align 8
  %32 = icmp eq %struct.urb* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %35 = call i32 @msi2500_isoc_cleanup(%struct.msi2500_dev* %34)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %181

38:                                               ; preds = %27
  %39 = load %struct.urb*, %struct.urb** %4, align 8
  %40 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %41 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %40, i32 0, i32 0
  %42 = load %struct.urb**, %struct.urb*** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.urb*, %struct.urb** %42, i64 %44
  store %struct.urb* %39, %struct.urb** %45, align 8
  %46 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %47 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.urb*, %struct.urb** %4, align 8
  %50 = call i32 (i32, i8*, ...) @dev_dbg(i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.urb* %49)
  %51 = load %struct.urb*, %struct.urb** %4, align 8
  %52 = getelementptr inbounds %struct.urb, %struct.urb* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %54 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.urb*, %struct.urb** %4, align 8
  %57 = getelementptr inbounds %struct.urb, %struct.urb* %56, i32 0, i32 11
  store i32 %55, i32* %57, align 8
  %58 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %59 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @usb_rcvisocpipe(i32 %60, i32 129)
  %62 = load %struct.urb*, %struct.urb** %4, align 8
  %63 = getelementptr inbounds %struct.urb, %struct.urb* %62, i32 0, i32 10
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @URB_ISO_ASAP, align 4
  %65 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.urb*, %struct.urb** %4, align 8
  %68 = getelementptr inbounds %struct.urb, %struct.urb* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %70 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ISO_BUFFER_SIZE, align 4
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = load %struct.urb*, %struct.urb** %4, align 8
  %75 = getelementptr inbounds %struct.urb, %struct.urb* %74, i32 0, i32 9
  %76 = call i32* @usb_alloc_coherent(i32 %71, i32 %72, i32 %73, i32* %75)
  %77 = load %struct.urb*, %struct.urb** %4, align 8
  %78 = getelementptr inbounds %struct.urb, %struct.urb* %77, i32 0, i32 8
  store i32* %76, i32** %78, align 8
  %79 = load %struct.urb*, %struct.urb** %4, align 8
  %80 = getelementptr inbounds %struct.urb, %struct.urb* %79, i32 0, i32 8
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %93

83:                                               ; preds = %38
  %84 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %85 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %86, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %90 = call i32 @msi2500_isoc_cleanup(%struct.msi2500_dev* %89)
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %181

93:                                               ; preds = %38
  %94 = load i32, i32* @ISO_BUFFER_SIZE, align 4
  %95 = load %struct.urb*, %struct.urb** %4, align 8
  %96 = getelementptr inbounds %struct.urb, %struct.urb* %95, i32 0, i32 7
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @msi2500_isoc_handler, align 4
  %98 = load %struct.urb*, %struct.urb** %4, align 8
  %99 = getelementptr inbounds %struct.urb, %struct.urb* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 8
  %100 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %101 = load %struct.urb*, %struct.urb** %4, align 8
  %102 = getelementptr inbounds %struct.urb, %struct.urb* %101, i32 0, i32 5
  store %struct.msi2500_dev* %100, %struct.msi2500_dev** %102, align 8
  %103 = load %struct.urb*, %struct.urb** %4, align 8
  %104 = getelementptr inbounds %struct.urb, %struct.urb* %103, i32 0, i32 4
  store i64 0, i64* %104, align 8
  %105 = load i32, i32* @ISO_FRAMES_PER_DESC, align 4
  %106 = load %struct.urb*, %struct.urb** %4, align 8
  %107 = getelementptr inbounds %struct.urb, %struct.urb* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %131, %93
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @ISO_FRAMES_PER_DESC, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %134

112:                                              ; preds = %108
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @ISO_MAX_FRAME_SIZE, align 4
  %115 = mul nsw i32 %113, %114
  %116 = load %struct.urb*, %struct.urb** %4, align 8
  %117 = getelementptr inbounds %struct.urb, %struct.urb* %116, i32 0, i32 3
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  store i32 %115, i32* %122, align 4
  %123 = load i32, i32* @ISO_MAX_FRAME_SIZE, align 4
  %124 = load %struct.urb*, %struct.urb** %4, align 8
  %125 = getelementptr inbounds %struct.urb, %struct.urb* %124, i32 0, i32 3
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  store i32 %123, i32* %130, align 4
  br label %131

131:                                              ; preds = %112
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %6, align 4
  br label %108

134:                                              ; preds = %108
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %5, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %5, align 4
  br label %23

138:                                              ; preds = %23
  store i32 0, i32* %5, align 4
  br label %139

139:                                              ; preds = %177, %138
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @MAX_ISO_BUFS, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %180

143:                                              ; preds = %139
  %144 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %145 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %144, i32 0, i32 0
  %146 = load %struct.urb**, %struct.urb*** %145, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.urb*, %struct.urb** %146, i64 %148
  %150 = load %struct.urb*, %struct.urb** %149, align 8
  %151 = load i32, i32* @GFP_KERNEL, align 4
  %152 = call i32 @usb_submit_urb(%struct.urb* %150, i32 %151)
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %143
  %156 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %157 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* %7, align 4
  %161 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %158, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %159, i32 %160)
  %162 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %163 = call i32 @msi2500_isoc_cleanup(%struct.msi2500_dev* %162)
  %164 = load i32, i32* %7, align 4
  store i32 %164, i32* %2, align 4
  br label %181

165:                                              ; preds = %143
  %166 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %167 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.msi2500_dev*, %struct.msi2500_dev** %3, align 8
  %170 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %169, i32 0, i32 0
  %171 = load %struct.urb**, %struct.urb*** %170, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.urb*, %struct.urb** %171, i64 %173
  %175 = load %struct.urb*, %struct.urb** %174, align 8
  %176 = call i32 (i32, i8*, ...) @dev_dbg(i32 %168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), %struct.urb* %175)
  br label %177

177:                                              ; preds = %165
  %178 = load i32, i32* %5, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %5, align 4
  br label %139

180:                                              ; preds = %139
  store i32 0, i32* %2, align 4
  br label %181

181:                                              ; preds = %180, %155, %83, %33, %20
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @msi2500_isoc_cleanup(%struct.msi2500_dev*) #1

declare dso_local i32 @usb_rcvisocpipe(i32, i32) #1

declare dso_local i32* @usb_alloc_coherent(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
