; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_eba.c_try_write_vid_and_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_eba.c_try_write_vid_and_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume = type { i32, %struct.TYPE_4__*, %struct.ubi_device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ubi_device = type { i32 }
%struct.ubi_vid_io_buf = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"write VID hdr and %d bytes at offset %d of LEB %d:%d, PEB %d\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"failed to write VID header to LEB %d:%d, PEB %d\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"failed to write %d bytes at offset %d of LEB %d:%d, PEB %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_volume*, i32, %struct.ubi_vid_io_buf*, i8*, i32, i32)* @try_write_vid_and_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_write_vid_and_data(%struct.ubi_volume* %0, i32 %1, %struct.ubi_vid_io_buf* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ubi_volume*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubi_vid_io_buf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ubi_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ubi_volume* %0, %struct.ubi_volume** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ubi_vid_io_buf* %2, %struct.ubi_vid_io_buf** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.ubi_volume*, %struct.ubi_volume** %7, align 8
  %19 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %18, i32 0, i32 2
  %20 = load %struct.ubi_device*, %struct.ubi_device** %19, align 8
  store %struct.ubi_device* %20, %struct.ubi_device** %13, align 8
  %21 = load %struct.ubi_volume*, %struct.ubi_volume** %7, align 8
  %22 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %17, align 4
  %24 = load %struct.ubi_device*, %struct.ubi_device** %13, align 8
  %25 = call i32 @ubi_wl_get_peb(%struct.ubi_device* %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %16, align 4
  br label %91

30:                                               ; preds = %6
  %31 = load %struct.ubi_volume*, %struct.ubi_volume** %7, align 8
  %32 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %17, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @dbg_eba(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.ubi_device*, %struct.ubi_device** %13, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %9, align 8
  %50 = call i32 @ubi_io_write_vid_hdr(%struct.ubi_device* %47, i32 %48, %struct.ubi_vid_io_buf* %49)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %30
  %54 = load %struct.ubi_device*, %struct.ubi_device** %13, align 8
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 (%struct.ubi_device*, i8*, i32, i32, i32, ...) @ubi_warn(%struct.ubi_device* %54, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56, i32 %57)
  br label %91

59:                                               ; preds = %30
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %59
  %63 = load %struct.ubi_device*, %struct.ubi_device** %13, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @ubi_io_write_data(%struct.ubi_device* %63, i8* %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %62
  %72 = load %struct.ubi_device*, %struct.ubi_device** %13, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %14, align 4
  %78 = call i32 (%struct.ubi_device*, i8*, i32, i32, i32, ...) @ubi_warn(%struct.ubi_device* %72, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %74, i32 %75, i32 %76, i32 %77)
  br label %91

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %79, %59
  %81 = load i32, i32* %14, align 4
  %82 = load %struct.ubi_volume*, %struct.ubi_volume** %7, align 8
  %83 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i32 %81, i32* %90, align 4
  br label %91

91:                                               ; preds = %80, %71, %53, %28
  %92 = load %struct.ubi_device*, %struct.ubi_device** %13, align 8
  %93 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %92, i32 0, i32 0
  %94 = call i32 @up_read(i32* %93)
  %95 = load i32, i32* %16, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %91
  %98 = load i32, i32* %14, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load %struct.ubi_device*, %struct.ubi_device** %13, align 8
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @ubi_wl_put_peb(%struct.ubi_device* %101, i32 %102, i32 %103, i32 %104, i32 1)
  store i32 %105, i32* %16, align 4
  br label %119

106:                                              ; preds = %97, %91
  %107 = load i32, i32* %16, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %118, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %15, align 4
  %111 = icmp sge i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load %struct.ubi_device*, %struct.ubi_device** %13, align 8
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %15, align 4
  %117 = call i32 @ubi_wl_put_peb(%struct.ubi_device* %113, i32 %114, i32 %115, i32 %116, i32 0)
  store i32 %117, i32* %16, align 4
  br label %118

118:                                              ; preds = %112, %109, %106
  br label %119

119:                                              ; preds = %118, %100
  %120 = load i32, i32* %16, align 4
  ret i32 %120
}

declare dso_local i32 @ubi_wl_get_peb(%struct.ubi_device*) #1

declare dso_local i32 @dbg_eba(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ubi_io_write_vid_hdr(%struct.ubi_device*, i32, %struct.ubi_vid_io_buf*) #1

declare dso_local i32 @ubi_warn(%struct.ubi_device*, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @ubi_io_write_data(%struct.ubi_device*, i8*, i32, i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ubi_wl_put_peb(%struct.ubi_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
