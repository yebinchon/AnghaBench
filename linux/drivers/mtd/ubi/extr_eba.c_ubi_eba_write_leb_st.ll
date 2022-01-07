; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_eba.c_ubi_eba_write_leb_st.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_eba.c_ubi_eba_write_leb_st.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i64 }
%struct.ubi_volume = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ubi_vid_io_buf = type { i32 }
%struct.ubi_vid_hdr = type { i8*, i8*, i8*, i8*, i32, i8*, i32, i8*, i8* }

@EROFS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBI_CRC32_INIT = common dso_local global i32 0, align 4
@UBI_VID_STATIC = common dso_local global i32 0, align 4
@UBI_IO_RETRIES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"try another PEB\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_eba_write_leb_st(%struct.ubi_device* %0, %struct.ubi_volume* %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_device*, align 8
  %9 = alloca %struct.ubi_volume*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ubi_vid_io_buf*, align 8
  %19 = alloca %struct.ubi_vid_hdr*, align 8
  %20 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %8, align 8
  store %struct.ubi_volume* %1, %struct.ubi_volume** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %16, align 4
  %22 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %23 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %17, align 4
  %25 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %26 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %6
  %30 = load i32, i32* @EROFS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %177

32:                                               ; preds = %6
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %13, align 4
  %35 = sub nsw i32 %34, 1
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* %16, align 4
  %39 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %40 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ALIGN(i32 %38, i32 %41)
  store i32 %42, i32* %12, align 4
  br label %54

43:                                               ; preds = %32
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %46 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 1
  %49 = and i32 %44, %48
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @ubi_assert(i32 %52)
  br label %54

54:                                               ; preds = %43, %37
  %55 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %56 = load i32, i32* @GFP_NOFS, align 4
  %57 = call %struct.ubi_vid_io_buf* @ubi_alloc_vid_buf(%struct.ubi_device* %55, i32 %56)
  store %struct.ubi_vid_io_buf* %57, %struct.ubi_vid_io_buf** %18, align 8
  %58 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %18, align 8
  %59 = icmp ne %struct.ubi_vid_io_buf* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  br label %177

63:                                               ; preds = %54
  %64 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %18, align 8
  %65 = call %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf* %64)
  store %struct.ubi_vid_hdr* %65, %struct.ubi_vid_hdr** %19, align 8
  %66 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @leb_write_lock(%struct.ubi_device* %66, i32 %67, i32 %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %173

73:                                               ; preds = %63
  %74 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %75 = call i32 @ubi_next_sqnum(%struct.ubi_device* %74)
  %76 = call i8* @cpu_to_be64(i32 %75)
  %77 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %19, align 8
  %78 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* %17, align 4
  %80 = call i8* @cpu_to_be32(i32 %79)
  %81 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %19, align 8
  %82 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %81, i32 0, i32 8
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i8* @cpu_to_be32(i32 %83)
  %85 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %19, align 8
  %86 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %85, i32 0, i32 7
  store i8* %84, i8** %86, align 8
  %87 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %88 = load i32, i32* %17, align 4
  %89 = call i32 @ubi_get_compat(%struct.ubi_device* %87, i32 %88)
  %90 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %19, align 8
  %91 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 8
  %92 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %93 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @cpu_to_be32(i32 %94)
  %96 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %19, align 8
  %97 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %96, i32 0, i32 5
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* @UBI_CRC32_INIT, align 4
  %99 = load i8*, i8** %11, align 8
  %100 = load i32, i32* %16, align 4
  %101 = call i32 @crc32(i32 %98, i8* %99, i32 %100)
  store i32 %101, i32* %20, align 4
  %102 = load i32, i32* @UBI_VID_STATIC, align 4
  %103 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %19, align 8
  %104 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* %16, align 4
  %106 = call i8* @cpu_to_be32(i32 %105)
  %107 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %19, align 8
  %108 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %107, i32 0, i32 3
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* %13, align 4
  %110 = call i8* @cpu_to_be32(i32 %109)
  %111 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %19, align 8
  %112 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  %113 = load i32, i32* %20, align 4
  %114 = call i8* @cpu_to_be32(i32 %113)
  %115 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %19, align 8
  %116 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  %117 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %118 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %117, i32 0, i32 2
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp slt i64 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i32 @ubi_assert(i32 %128)
  store i32 0, i32* %15, align 4
  br label %130

130:                                              ; preds = %159, %73
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* @UBI_IO_RETRIES, align 4
  %133 = icmp sle i32 %131, %132
  br i1 %133, label %134, label %162

134:                                              ; preds = %130
  %135 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %18, align 8
  %138 = load i8*, i8** %11, align 8
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @try_write_vid_and_data(%struct.ubi_volume* %135, i32 %136, %struct.ubi_vid_io_buf* %137, i8* %138, i32 0, i32 %139)
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* @EIO, align 4
  %143 = sub nsw i32 0, %142
  %144 = icmp ne i32 %141, %143
  br i1 %144, label %150, label %145

145:                                              ; preds = %134
  %146 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %147 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %145, %134
  br label %162

151:                                              ; preds = %145
  %152 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %153 = call i32 @ubi_next_sqnum(%struct.ubi_device* %152)
  %154 = call i8* @cpu_to_be64(i32 %153)
  %155 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %19, align 8
  %156 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %155, i32 0, i32 0
  store i8* %154, i8** %156, align 8
  %157 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %158 = call i32 @ubi_msg(%struct.ubi_device* %157, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %159

159:                                              ; preds = %151
  %160 = load i32, i32* %15, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %15, align 4
  br label %130

162:                                              ; preds = %150, %130
  %163 = load i32, i32* %14, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %167 = call i32 @ubi_ro_mode(%struct.ubi_device* %166)
  br label %168

168:                                              ; preds = %165, %162
  %169 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %170 = load i32, i32* %17, align 4
  %171 = load i32, i32* %10, align 4
  %172 = call i32 @leb_write_unlock(%struct.ubi_device* %169, i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %168, %72
  %174 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %18, align 8
  %175 = call i32 @ubi_free_vid_buf(%struct.ubi_vid_io_buf* %174)
  %176 = load i32, i32* %14, align 4
  store i32 %176, i32* %7, align 4
  br label %177

177:                                              ; preds = %173, %60, %29
  %178 = load i32, i32* %7, align 4
  ret i32 %178
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local %struct.ubi_vid_io_buf* @ubi_alloc_vid_buf(%struct.ubi_device*, i32) #1

declare dso_local %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf*) #1

declare dso_local i32 @leb_write_lock(%struct.ubi_device*, i32, i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @ubi_next_sqnum(%struct.ubi_device*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @ubi_get_compat(%struct.ubi_device*, i32) #1

declare dso_local i32 @crc32(i32, i8*, i32) #1

declare dso_local i32 @try_write_vid_and_data(%struct.ubi_volume*, i32, %struct.ubi_vid_io_buf*, i8*, i32, i32) #1

declare dso_local i32 @ubi_msg(%struct.ubi_device*, i8*) #1

declare dso_local i32 @ubi_ro_mode(%struct.ubi_device*) #1

declare dso_local i32 @leb_write_unlock(%struct.ubi_device*, i32, i32) #1

declare dso_local i32 @ubi_free_vid_buf(%struct.ubi_vid_io_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
