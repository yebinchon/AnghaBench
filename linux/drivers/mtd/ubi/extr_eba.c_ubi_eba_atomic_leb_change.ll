; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_eba.c_ubi_eba_atomic_leb_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_eba.c_ubi_eba_atomic_leb_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i64 }
%struct.ubi_volume = type { i32, i32 }
%struct.ubi_vid_io_buf = type { i32 }
%struct.ubi_vid_hdr = type { i32, i8*, i8*, i8*, i32, i8*, i32, i8*, i8* }

@EROFS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBI_CRC32_INIT = common dso_local global i32 0, align 4
@UBI_VID_DYNAMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"change LEB %d:%d\00", align 1
@UBI_IO_RETRIES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"try another PEB\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_eba_atomic_leb_change(%struct.ubi_device* %0, %struct.ubi_volume* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubi_device*, align 8
  %8 = alloca %struct.ubi_volume*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ubi_vid_io_buf*, align 8
  %16 = alloca %struct.ubi_vid_hdr*, align 8
  %17 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %7, align 8
  store %struct.ubi_volume* %1, %struct.ubi_volume** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.ubi_volume*, %struct.ubi_volume** %8, align 8
  %19 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %14, align 4
  %21 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %22 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @EROFS, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %162

28:                                               ; preds = %5
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %33 = load %struct.ubi_volume*, %struct.ubi_volume** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @ubi_eba_unmap_leb(%struct.ubi_device* %32, %struct.ubi_volume* %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %6, align 4
  br label %162

40:                                               ; preds = %31
  %41 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %42 = load %struct.ubi_volume*, %struct.ubi_volume** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @ubi_eba_write_leb(%struct.ubi_device* %41, %struct.ubi_volume* %42, i32 %43, i32* null, i32 0, i32 0)
  store i32 %44, i32* %6, align 4
  br label %162

45:                                               ; preds = %28
  %46 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %47 = load i32, i32* @GFP_NOFS, align 4
  %48 = call %struct.ubi_vid_io_buf* @ubi_alloc_vid_buf(%struct.ubi_device* %46, i32 %47)
  store %struct.ubi_vid_io_buf* %48, %struct.ubi_vid_io_buf** %15, align 8
  %49 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %15, align 8
  %50 = icmp ne %struct.ubi_vid_io_buf* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %162

54:                                               ; preds = %45
  %55 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %15, align 8
  %56 = call %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf* %55)
  store %struct.ubi_vid_hdr* %56, %struct.ubi_vid_hdr** %16, align 8
  %57 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %58 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %57, i32 0, i32 0
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @leb_write_lock(%struct.ubi_device* %60, i32 %61, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  br label %155

67:                                               ; preds = %54
  %68 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %69 = call i32 @ubi_next_sqnum(%struct.ubi_device* %68)
  %70 = call i8* @cpu_to_be64(i32 %69)
  %71 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %16, align 8
  %72 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* %14, align 4
  %74 = call i8* @cpu_to_be32(i32 %73)
  %75 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %16, align 8
  %76 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %75, i32 0, i32 8
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i8* @cpu_to_be32(i32 %77)
  %79 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %16, align 8
  %80 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %79, i32 0, i32 7
  store i8* %78, i8** %80, align 8
  %81 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @ubi_get_compat(%struct.ubi_device* %81, i32 %82)
  %84 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %16, align 8
  %85 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 8
  %86 = load %struct.ubi_volume*, %struct.ubi_volume** %8, align 8
  %87 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @cpu_to_be32(i32 %88)
  %90 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %16, align 8
  %91 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %90, i32 0, i32 5
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* @UBI_CRC32_INIT, align 4
  %93 = load i8*, i8** %10, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @crc32(i32 %92, i8* %93, i32 %94)
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* @UBI_VID_DYNAMIC, align 4
  %97 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %16, align 8
  %98 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i8* @cpu_to_be32(i32 %99)
  %101 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %16, align 8
  %102 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %101, i32 0, i32 3
  store i8* %100, i8** %102, align 8
  %103 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %16, align 8
  %104 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  %105 = load i32, i32* %17, align 4
  %106 = call i8* @cpu_to_be32(i32 %105)
  %107 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %16, align 8
  %108 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @dbg_eba(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %110)
  store i32 0, i32* %13, align 4
  br label %112

112:                                              ; preds = %141, %67
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* @UBI_IO_RETRIES, align 4
  %115 = icmp sle i32 %113, %114
  br i1 %115, label %116, label %144

116:                                              ; preds = %112
  %117 = load %struct.ubi_volume*, %struct.ubi_volume** %8, align 8
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %15, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @try_write_vid_and_data(%struct.ubi_volume* %117, i32 %118, %struct.ubi_vid_io_buf* %119, i8* %120, i32 0, i32 %121)
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @EIO, align 4
  %125 = sub nsw i32 0, %124
  %126 = icmp ne i32 %123, %125
  br i1 %126, label %132, label %127

127:                                              ; preds = %116
  %128 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %129 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %127, %116
  br label %144

133:                                              ; preds = %127
  %134 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %135 = call i32 @ubi_next_sqnum(%struct.ubi_device* %134)
  %136 = call i8* @cpu_to_be64(i32 %135)
  %137 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %16, align 8
  %138 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  %139 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %140 = call i32 @ubi_msg(%struct.ubi_device* %139, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %141

141:                                              ; preds = %133
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %13, align 4
  br label %112

144:                                              ; preds = %132, %112
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %149 = call i32 @ubi_ro_mode(%struct.ubi_device* %148)
  br label %150

150:                                              ; preds = %147, %144
  %151 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @leb_write_unlock(%struct.ubi_device* %151, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %150, %66
  %156 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %157 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %156, i32 0, i32 0
  %158 = call i32 @mutex_unlock(i32* %157)
  %159 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %15, align 8
  %160 = call i32 @ubi_free_vid_buf(%struct.ubi_vid_io_buf* %159)
  %161 = load i32, i32* %12, align 4
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %155, %51, %40, %38, %25
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

declare dso_local i32 @ubi_eba_unmap_leb(%struct.ubi_device*, %struct.ubi_volume*, i32) #1

declare dso_local i32 @ubi_eba_write_leb(%struct.ubi_device*, %struct.ubi_volume*, i32, i32*, i32, i32) #1

declare dso_local %struct.ubi_vid_io_buf* @ubi_alloc_vid_buf(%struct.ubi_device*, i32) #1

declare dso_local %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @leb_write_lock(%struct.ubi_device*, i32, i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @ubi_next_sqnum(%struct.ubi_device*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @ubi_get_compat(%struct.ubi_device*, i32) #1

declare dso_local i32 @crc32(i32, i8*, i32) #1

declare dso_local i32 @dbg_eba(i8*, i32, i32) #1

declare dso_local i32 @try_write_vid_and_data(%struct.ubi_volume*, i32, %struct.ubi_vid_io_buf*, i8*, i32, i32) #1

declare dso_local i32 @ubi_msg(%struct.ubi_device*, i8*) #1

declare dso_local i32 @ubi_ro_mode(%struct.ubi_device*) #1

declare dso_local i32 @leb_write_unlock(%struct.ubi_device*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubi_free_vid_buf(%struct.ubi_vid_io_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
