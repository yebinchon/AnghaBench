; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_eba.c_ubi_eba_write_leb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_eba.c_ubi_eba_write_leb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i64, i64 }
%struct.ubi_volume = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ubi_vid_io_buf = type { i32 }
%struct.ubi_vid_hdr = type { i8*, i8*, i32, i8*, i8*, i32 }

@EROFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"write %d bytes at offset %d of LEB %d:%d, PEB %d\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to write data to PEB %d\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBI_VID_DYNAMIC = common dso_local global i32 0, align 4
@UBI_IO_RETRIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"try another PEB\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_eba_write_leb(%struct.ubi_device* %0, %struct.ubi_volume* %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
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
  store %struct.ubi_device* %0, %struct.ubi_device** %8, align 8
  store %struct.ubi_volume* %1, %struct.ubi_volume** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %21 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %17, align 4
  %23 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %24 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load i32, i32* @EROFS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %194

30:                                               ; preds = %6
  %31 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @leb_write_lock(%struct.ubi_device* %31, i32 %32, i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %7, align 4
  br label %194

39:                                               ; preds = %30
  %40 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %41 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %39
  %53 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %54 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @check_mapping(%struct.ubi_device* %53, %struct.ubi_volume* %54, i32 %55, i32* %15)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %182

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %39
  %62 = load i32, i32* %15, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %103

64:                                               ; preds = %61
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @dbg_eba(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @ubi_io_write_data(%struct.ubi_device* %71, i8* %72, i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %102

79:                                               ; preds = %64
  %80 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @ubi_warn(%struct.ubi_device* %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %79
  %88 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %89 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i8*, i8** %11, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @recover_peb(%struct.ubi_device* %93, i32 %94, i32 %95, i32 %96, i8* %97, i32 %98, i32 %99)
  store i32 %100, i32* %14, align 4
  br label %101

101:                                              ; preds = %92, %87, %79
  br label %102

102:                                              ; preds = %101, %64
  br label %182

103:                                              ; preds = %61
  %104 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %105 = load i32, i32* @GFP_NOFS, align 4
  %106 = call %struct.ubi_vid_io_buf* @ubi_alloc_vid_buf(%struct.ubi_device* %104, i32 %105)
  store %struct.ubi_vid_io_buf* %106, %struct.ubi_vid_io_buf** %18, align 8
  %107 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %18, align 8
  %108 = icmp ne %struct.ubi_vid_io_buf* %107, null
  br i1 %108, label %116, label %109

109:                                              ; preds = %103
  %110 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @leb_write_unlock(%struct.ubi_device* %110, i32 %111, i32 %112)
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %7, align 4
  br label %194

116:                                              ; preds = %103
  %117 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %18, align 8
  %118 = call %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf* %117)
  store %struct.ubi_vid_hdr* %118, %struct.ubi_vid_hdr** %19, align 8
  %119 = load i32, i32* @UBI_VID_DYNAMIC, align 4
  %120 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %19, align 8
  %121 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 8
  %122 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %123 = call i32 @ubi_next_sqnum(%struct.ubi_device* %122)
  %124 = call i8* @cpu_to_be64(i32 %123)
  %125 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %19, align 8
  %126 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  %127 = load i32, i32* %17, align 4
  %128 = call i8* @cpu_to_be32(i32 %127)
  %129 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %19, align 8
  %130 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %129, i32 0, i32 4
  store i8* %128, i8** %130, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i8* @cpu_to_be32(i32 %131)
  %133 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %19, align 8
  %134 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %133, i32 0, i32 3
  store i8* %132, i8** %134, align 8
  %135 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %136 = load i32, i32* %17, align 4
  %137 = call i32 @ubi_get_compat(%struct.ubi_device* %135, i32 %136)
  %138 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %19, align 8
  %139 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %141 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @cpu_to_be32(i32 %142)
  %144 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %19, align 8
  %145 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %144, i32 0, i32 1
  store i8* %143, i8** %145, align 8
  store i32 0, i32* %16, align 4
  br label %146

146:                                              ; preds = %176, %116
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* @UBI_IO_RETRIES, align 4
  %149 = icmp sle i32 %147, %148
  br i1 %149, label %150, label %179

150:                                              ; preds = %146
  %151 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %18, align 8
  %154 = load i8*, i8** %11, align 8
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %13, align 4
  %157 = call i32 @try_write_vid_and_data(%struct.ubi_volume* %151, i32 %152, %struct.ubi_vid_io_buf* %153, i8* %154, i32 %155, i32 %156)
  store i32 %157, i32* %14, align 4
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* @EIO, align 4
  %160 = sub nsw i32 0, %159
  %161 = icmp ne i32 %158, %160
  br i1 %161, label %167, label %162

162:                                              ; preds = %150
  %163 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %164 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %162, %150
  br label %179

168:                                              ; preds = %162
  %169 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %170 = call i32 @ubi_next_sqnum(%struct.ubi_device* %169)
  %171 = call i8* @cpu_to_be64(i32 %170)
  %172 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %19, align 8
  %173 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %172, i32 0, i32 0
  store i8* %171, i8** %173, align 8
  %174 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %175 = call i32 @ubi_msg(%struct.ubi_device* %174, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %176

176:                                              ; preds = %168
  %177 = load i32, i32* %16, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %16, align 4
  br label %146

179:                                              ; preds = %167, %146
  %180 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %18, align 8
  %181 = call i32 @ubi_free_vid_buf(%struct.ubi_vid_io_buf* %180)
  br label %182

182:                                              ; preds = %179, %102, %59
  %183 = load i32, i32* %14, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %187 = call i32 @ubi_ro_mode(%struct.ubi_device* %186)
  br label %188

188:                                              ; preds = %185, %182
  %189 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %190 = load i32, i32* %17, align 4
  %191 = load i32, i32* %10, align 4
  %192 = call i32 @leb_write_unlock(%struct.ubi_device* %189, i32 %190, i32 %191)
  %193 = load i32, i32* %14, align 4
  store i32 %193, i32* %7, align 4
  br label %194

194:                                              ; preds = %188, %109, %37, %27
  %195 = load i32, i32* %7, align 4
  ret i32 %195
}

declare dso_local i32 @leb_write_lock(%struct.ubi_device*, i32, i32) #1

declare dso_local i32 @check_mapping(%struct.ubi_device*, %struct.ubi_volume*, i32, i32*) #1

declare dso_local i32 @dbg_eba(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ubi_io_write_data(%struct.ubi_device*, i8*, i32, i32, i32) #1

declare dso_local i32 @ubi_warn(%struct.ubi_device*, i8*, i32) #1

declare dso_local i32 @recover_peb(%struct.ubi_device*, i32, i32, i32, i8*, i32, i32) #1

declare dso_local %struct.ubi_vid_io_buf* @ubi_alloc_vid_buf(%struct.ubi_device*, i32) #1

declare dso_local i32 @leb_write_unlock(%struct.ubi_device*, i32, i32) #1

declare dso_local %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf*) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @ubi_next_sqnum(%struct.ubi_device*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @ubi_get_compat(%struct.ubi_device*, i32) #1

declare dso_local i32 @try_write_vid_and_data(%struct.ubi_volume*, i32, %struct.ubi_vid_io_buf*, i8*, i32, i32) #1

declare dso_local i32 @ubi_msg(%struct.ubi_device*, i8*) #1

declare dso_local i32 @ubi_free_vid_buf(%struct.ubi_vid_io_buf*) #1

declare dso_local i32 @ubi_ro_mode(%struct.ubi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
