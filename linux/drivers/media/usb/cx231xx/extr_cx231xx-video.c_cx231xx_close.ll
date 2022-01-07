; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_cx231xx_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_cx231xx_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cx231xx_fh* }
%struct.cx231xx_fh = type { i64, i32, %struct.cx231xx*, i32 }
%struct.cx231xx = type { i32, i32, i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"users=%d\0A\00", align 1
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i64 0, align 8
@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@INDEX_VANC = common dso_local global i32 0, align 4
@INDEX_HANC = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@standby = common dso_local global i32 0, align 4
@CX231XX_SUSPEND = common dso_local global i32 0, align 4
@INDEX_VIDEO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @cx231xx_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx231xx_close(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.cx231xx_fh*, align 8
  %5 = alloca %struct.cx231xx*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  store %struct.cx231xx_fh* %8, %struct.cx231xx_fh** %4, align 8
  %9 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %10 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %9, i32 0, i32 2
  %11 = load %struct.cx231xx*, %struct.cx231xx** %10, align 8
  store %struct.cx231xx* %11, %struct.cx231xx** %5, align 8
  %12 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %13 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @cx231xx_videodbg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %17 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @cx231xx_videodbg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %21 = call i64 @res_check(%struct.cx231xx_fh* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %25 = call i32 @res_free(%struct.cx231xx_fh* %24)
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %28 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %94, label %32

32:                                               ; preds = %26
  %33 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %34 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @V4L2_BUF_TYPE_VBI_CAPTURE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %93

38:                                               ; preds = %32
  %39 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %40 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %39, i32 0, i32 3
  %41 = call i32 @videobuf_stop(i32* %40)
  %42 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %43 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %42, i32 0, i32 3
  %44 = call i32 @videobuf_mmap_free(i32* %43)
  %45 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %46 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @DEV_DISCONNECTED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %38
  %52 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %53 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %52, i32 0, i32 5
  %54 = call i64 @atomic_read(i32* %53)
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %58 = call i32 @cx231xx_release_resources(%struct.cx231xx* %57)
  %59 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %60 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %59, i32 0, i32 2
  store %struct.cx231xx* null, %struct.cx231xx** %60, align 8
  store i32 0, i32* %2, align 4
  br label %155

61:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %155

62:                                               ; preds = %38
  %63 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %64 = call i32 @cx231xx_uninit_vbi_isoc(%struct.cx231xx* %63)
  %65 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %66 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %62
  %70 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %71 = load i32, i32* @INDEX_VANC, align 4
  %72 = call i32 @cx231xx_set_alt_setting(%struct.cx231xx* %70, i32 %71, i32 0)
  br label %77

73:                                               ; preds = %62
  %74 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %75 = load i32, i32* @INDEX_HANC, align 4
  %76 = call i32 @cx231xx_set_alt_setting(%struct.cx231xx* %74, i32 %75, i32 0)
  br label %77

77:                                               ; preds = %73, %69
  %78 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %79 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %78, i32 0, i32 1
  %80 = call i32 @v4l2_fh_del(i32* %79)
  %81 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %82 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %81, i32 0, i32 1
  %83 = call i32 @v4l2_fh_exit(i32* %82)
  %84 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %85 = call i32 @kfree(%struct.cx231xx_fh* %84)
  %86 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %87 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %87, align 8
  %90 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %91 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %90, i32 0, i32 1
  %92 = call i32 @wake_up_interruptible(i32* %91)
  store i32 0, i32* %2, align 4
  br label %155

93:                                               ; preds = %32
  br label %94

94:                                               ; preds = %93, %26
  %95 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %96 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %95, i32 0, i32 1
  %97 = call i32 @v4l2_fh_del(i32* %96)
  %98 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %99 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %99, align 8
  %102 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %103 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %146, label %106

106:                                              ; preds = %94
  %107 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %108 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %107, i32 0, i32 3
  %109 = call i32 @videobuf_stop(i32* %108)
  %110 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %111 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %110, i32 0, i32 3
  %112 = call i32 @videobuf_mmap_free(i32* %111)
  %113 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %114 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @DEV_DISCONNECTED, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %106
  %120 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %121 = call i32 @cx231xx_release_resources(%struct.cx231xx* %120)
  %122 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %123 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %122, i32 0, i32 2
  store %struct.cx231xx* null, %struct.cx231xx** %123, align 8
  store i32 0, i32* %2, align 4
  br label %155

124:                                              ; preds = %106
  %125 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %126 = load i32, i32* @tuner, align 4
  %127 = load i32, i32* @standby, align 4
  %128 = call i32 @call_all(%struct.cx231xx* %125, i32 %126, i32 %127)
  %129 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %130 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %124
  %134 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %135 = call i32 @cx231xx_uninit_isoc(%struct.cx231xx* %134)
  br label %139

136:                                              ; preds = %124
  %137 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %138 = call i32 @cx231xx_uninit_bulk(%struct.cx231xx* %137)
  br label %139

139:                                              ; preds = %136, %133
  %140 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %141 = load i32, i32* @CX231XX_SUSPEND, align 4
  %142 = call i32 @cx231xx_set_mode(%struct.cx231xx* %140, i32 %141)
  %143 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %144 = load i32, i32* @INDEX_VIDEO, align 4
  %145 = call i32 @cx231xx_set_alt_setting(%struct.cx231xx* %143, i32 %144, i32 0)
  br label %146

146:                                              ; preds = %139, %94
  %147 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %148 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %147, i32 0, i32 1
  %149 = call i32 @v4l2_fh_exit(i32* %148)
  %150 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %4, align 8
  %151 = call i32 @kfree(%struct.cx231xx_fh* %150)
  %152 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %153 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %152, i32 0, i32 1
  %154 = call i32 @wake_up_interruptible(i32* %153)
  store i32 0, i32* %2, align 4
  br label %155

155:                                              ; preds = %146, %119, %77, %61, %56
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @cx231xx_videodbg(i8*, i32) #1

declare dso_local i64 @res_check(%struct.cx231xx_fh*) #1

declare dso_local i32 @res_free(%struct.cx231xx_fh*) #1

declare dso_local i32 @videobuf_stop(i32*) #1

declare dso_local i32 @videobuf_mmap_free(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @cx231xx_release_resources(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_uninit_vbi_isoc(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_set_alt_setting(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @v4l2_fh_del(i32*) #1

declare dso_local i32 @v4l2_fh_exit(i32*) #1

declare dso_local i32 @kfree(%struct.cx231xx_fh*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @call_all(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @cx231xx_uninit_isoc(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_uninit_bulk(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_set_mode(%struct.cx231xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
