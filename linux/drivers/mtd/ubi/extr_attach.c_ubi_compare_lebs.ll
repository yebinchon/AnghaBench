; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_attach.c_ubi_compare_lebs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_attach.c_ubi_compare_lebs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32 }
%struct.ubi_ainf_peb = type { i64, i32, i32 }
%struct.ubi_vid_hdr = type { i32, i32, i32, i32 }
%struct.ubi_vid_io_buf = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"unsupported on-flash UBI format\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"second PEB %d is newer, copy_flag is unset\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"first PEB %d is newer, copy_flag is unset\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBI_IO_BITFLIPS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"VID of PEB %d header is bad, but it was OK earlier, err %d\00", align 1
@EIO = common dso_local global i32 0, align 4
@UBI_CRC32_INIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"PEB %d CRC error: calculated %#08x, must be %#08x\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"PEB %d CRC is OK\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"second PEB %d is newer, copy_flag is set\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"first PEB %d is newer, copy_flag is set\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_compare_lebs(%struct.ubi_device* %0, %struct.ubi_ainf_peb* %1, i32 %2, %struct.ubi_vid_hdr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_device*, align 8
  %7 = alloca %struct.ubi_ainf_peb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubi_vid_hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.ubi_vid_io_buf*, align 8
  %18 = alloca i64, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %6, align 8
  store %struct.ubi_ainf_peb* %1, %struct.ubi_ainf_peb** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ubi_vid_hdr* %3, %struct.ubi_vid_hdr** %9, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store %struct.ubi_vid_io_buf* null, %struct.ubi_vid_io_buf** %17, align 8
  %19 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %9, align 8
  %20 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @be64_to_cpu(i32 %21)
  store i64 %22, i64* %18, align 8
  %23 = load i64, i64* %18, align 8
  %24 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %7, align 8
  %25 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %30 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %190

33:                                               ; preds = %4
  %34 = load i64, i64* %18, align 8
  %35 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %7, align 8
  %36 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ugt i64 %34, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %33
  %43 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %9, align 8
  %44 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %8, align 4
  %49 = call i32 (i8*, i32, ...) @dbg_bld(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  store i32 1, i32* %5, align 4
  br label %190

50:                                               ; preds = %42
  br label %100

51:                                               ; preds = %33
  %52 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %7, align 8
  %53 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (i8*, i32, ...) @dbg_bld(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %13, align 4
  %60 = shl i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %190

61:                                               ; preds = %51
  %62 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.ubi_vid_io_buf* @ubi_alloc_vid_buf(%struct.ubi_device* %62, i32 %63)
  store %struct.ubi_vid_io_buf* %64, %struct.ubi_vid_io_buf** %17, align 8
  %65 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %17, align 8
  %66 = icmp ne %struct.ubi_vid_io_buf* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %190

70:                                               ; preds = %61
  %71 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %7, align 8
  %72 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %8, align 4
  %74 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %17, align 8
  %77 = call i32 @ubi_io_read_vid_hdr(%struct.ubi_device* %74, i32 %75, %struct.ubi_vid_io_buf* %76, i32 0)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %70
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 1, i32* %13, align 4
  br label %96

85:                                               ; preds = %80
  %86 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %86, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load i32, i32* %11, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %92, %85
  br label %186

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96, %70
  %98 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %17, align 8
  %99 = call %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf* %98)
  store %struct.ubi_vid_hdr* %99, %struct.ubi_vid_hdr** %9, align 8
  br label %100

100:                                              ; preds = %97, %50
  %101 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %9, align 8
  %102 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @be32_to_cpu(i32 %103)
  %105 = ptrtoint i8* %104 to i32
  store i32 %105, i32* %10, align 4
  %106 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %107 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %106, i32 0, i32 0
  %108 = call i32 @mutex_lock(i32* %107)
  %109 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %110 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %111 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @ubi_io_read_data(%struct.ubi_device* %109, i32 %112, i32 %113, i32 0, i32 %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %100
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @mtd_is_eccerr(i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  br label %182

127:                                              ; preds = %122, %118, %100
  %128 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %9, align 8
  %129 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @be32_to_cpu(i32 %130)
  store i8* %131, i8** %15, align 8
  %132 = load i32, i32* @UBI_CRC32_INIT, align 4
  %133 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %134 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %10, align 4
  %137 = call i8* @crc32(i32 %132, i32 %135, i32 %136)
  store i8* %137, i8** %16, align 8
  %138 = load i8*, i8** %16, align 8
  %139 = load i8*, i8** %15, align 8
  %140 = icmp ne i8* %138, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %127
  %142 = load i32, i32* %8, align 4
  %143 = load i8*, i8** %16, align 8
  %144 = load i8*, i8** %15, align 8
  %145 = call i32 (i8*, i32, ...) @dbg_bld(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %142, i8* %143, i8* %144)
  store i32 1, i32* %14, align 4
  store i32 0, i32* %13, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  store i32 %149, i32* %12, align 4
  br label %160

150:                                              ; preds = %127
  %151 = load i32, i32* %8, align 4
  %152 = call i32 (i8*, i32, ...) @dbg_bld(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  %156 = xor i1 %155, true
  %157 = zext i1 %156 to i32
  %158 = load i32, i32* %13, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %13, align 4
  br label %160

160:                                              ; preds = %150, %141
  %161 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %162 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %161, i32 0, i32 0
  %163 = call i32 @mutex_unlock(i32* %162)
  %164 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %17, align 8
  %165 = call i32 @ubi_free_vid_buf(%struct.ubi_vid_io_buf* %164)
  %166 = load i32, i32* %12, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %160
  %169 = load i32, i32* %8, align 4
  %170 = call i32 (i8*, i32, ...) @dbg_bld(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %169)
  br label %174

171:                                              ; preds = %160
  %172 = load i32, i32* %8, align 4
  %173 = call i32 (i8*, i32, ...) @dbg_bld(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %171, %168
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* %13, align 4
  %177 = shl i32 %176, 1
  %178 = or i32 %175, %177
  %179 = load i32, i32* %14, align 4
  %180 = shl i32 %179, 2
  %181 = or i32 %178, %180
  store i32 %181, i32* %5, align 4
  br label %190

182:                                              ; preds = %126
  %183 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %184 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %183, i32 0, i32 0
  %185 = call i32 @mutex_unlock(i32* %184)
  br label %186

186:                                              ; preds = %182, %95
  %187 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %17, align 8
  %188 = call i32 @ubi_free_vid_buf(%struct.ubi_vid_io_buf* %187)
  %189 = load i32, i32* %11, align 4
  store i32 %189, i32* %5, align 4
  br label %190

190:                                              ; preds = %186, %174, %67, %56, %47, %28
  %191 = load i32, i32* %5, align 4
  ret i32 %191
}

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, ...) #1

declare dso_local i32 @dbg_bld(i8*, i32, ...) #1

declare dso_local %struct.ubi_vid_io_buf* @ubi_alloc_vid_buf(%struct.ubi_device*, i32) #1

declare dso_local i32 @ubi_io_read_vid_hdr(%struct.ubi_device*, i32, %struct.ubi_vid_io_buf*, i32) #1

declare dso_local %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf*) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubi_io_read_data(%struct.ubi_device*, i32, i32, i32, i32) #1

declare dso_local i32 @mtd_is_eccerr(i32) #1

declare dso_local i8* @crc32(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubi_free_vid_buf(%struct.ubi_vid_io_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
