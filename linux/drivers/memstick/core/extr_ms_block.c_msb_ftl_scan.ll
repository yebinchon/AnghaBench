; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_ftl_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_ftl_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msb_data = type { i64, i64*, i64*, i32 }
%struct.ms_extra_data_register = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Start of media scanning\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"pba %05d -> [boot block]\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"pba %05d -> [factory bad]\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"oob of pba %d damaged, will try to erase it\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"unknown error %d on read of oob of pba %d - aborting\00", align 1
@MEMSTICK_OVERWRITE_BKST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"pba %05d -> [BAD]\00", align 1
@MEMSTICK_MANAGEMENT_FLAG_NORMAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"pba %05d -> [reserved management flag %02x]\00", align 1
@MEMSTICK_MANAGEMENT_ATFLG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"pba %05d -> [temp table] - will erase\00", align 1
@MS_BLOCK_INVALID = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c"pba %05d -> [free]\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"pba %05d -> [bad lba %05d] - will erase\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"pba %05d -> [lba %05d]\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Collision between pba %d and pba %d\00", align 1
@MEMSTICK_OVERWRITE_UDST = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [35 x i8] c"pba %d is marked as stable, use it\00", align 1
@.str.13 = private unnamed_addr constant [84 x i8] c"collision between blocks %d and %d, without stable flag set on both, erasing pba %d\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"End of media scanning\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msb_data*)* @msb_ftl_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_ftl_scan(%struct.msb_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msb_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ms_extra_data_register, align 4
  %12 = alloca i32*, align 8
  store %struct.msb_data* %0, %struct.msb_data** %3, align 8
  %13 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %14 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kzalloc(i64 %15, i32 %16)
  store i32* %17, i32** %12, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %245

23:                                               ; preds = %1
  %24 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %25

25:                                               ; preds = %238, %23
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %28 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %241

31:                                               ; preds = %25
  %32 = load i64, i64* %4, align 8
  %33 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %34 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %32, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %31
  %40 = load i64, i64* %4, align 8
  %41 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %42 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %40, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %39, %31
  %48 = load i64, i64* %4, align 8
  %49 = call i32 (i8*, i64, ...) @dbg_verbose(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  %50 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @msb_mark_block_used(%struct.msb_data* %50, i64 %51)
  br label %238

53:                                               ; preds = %39
  %54 = load i64, i64* %4, align 8
  %55 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %56 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @test_bit(i64 %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i64, i64* %4, align 8
  %62 = call i32 (i8*, i64, ...) @dbg_verbose(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %61)
  br label %238

63:                                               ; preds = %53
  %64 = call i32 @memset(%struct.ms_extra_data_register* %11, i32 0, i32 12)
  %65 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @msb_read_oob(%struct.msb_data* %65, i64 %66, i32 0, %struct.ms_extra_data_register* %11)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @EBADMSG, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %63
  %73 = load i64, i64* %4, align 8
  %74 = call i32 (i8*, i64, ...) @pr_notice(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %73)
  %75 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %76 = load i64, i64* %4, align 8
  %77 = call i32 @msb_mark_block_used(%struct.msb_data* %75, i64 %76)
  %78 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %79 = load i64, i64* %4, align 8
  %80 = call i32 @msb_erase_block(%struct.msb_data* %78, i64 %79)
  br label %238

81:                                               ; preds = %63
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i32, i32* %10, align 4
  %86 = load i64, i64* %4, align 8
  %87 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %85, i64 %86)
  %88 = load i32*, i32** %12, align 8
  %89 = call i32 @kfree(i32* %88)
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %2, align 4
  br label %245

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91
  %93 = getelementptr inbounds %struct.ms_extra_data_register, %struct.ms_extra_data_register* %11, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @be16_to_cpu(i32 %94)
  store i64 %95, i64* %5, align 8
  %96 = getelementptr inbounds %struct.ms_extra_data_register, %struct.ms_extra_data_register* %11, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %8, align 4
  %98 = getelementptr inbounds %struct.ms_extra_data_register, %struct.ms_extra_data_register* %11, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32*, i32** %12, align 8
  %102 = load i64, i64* %4, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32 %100, i32* %103, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @MEMSTICK_OVERWRITE_BKST, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %92
  %109 = load i64, i64* %4, align 8
  %110 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i64 %109)
  %111 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %112 = load i64, i64* %4, align 8
  %113 = call i32 @msb_mark_block_used(%struct.msb_data* %111, i64 %112)
  br label %238

114:                                              ; preds = %92
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @MEMSTICK_MANAGEMENT_FLAG_NORMAL, align 4
  %117 = and i32 %115, %116
  %118 = load i32, i32* @MEMSTICK_MANAGEMENT_FLAG_NORMAL, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = load i64, i64* %4, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i64 %121, i32 %122)
  %124 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %125 = load i64, i64* %4, align 8
  %126 = call i32 @msb_mark_block_used(%struct.msb_data* %124, i64 %125)
  br label %238

127:                                              ; preds = %114
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @MEMSTICK_MANAGEMENT_ATFLG, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %141, label %132

132:                                              ; preds = %127
  %133 = load i64, i64* %4, align 8
  %134 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i64 %133)
  %135 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %136 = load i64, i64* %4, align 8
  %137 = call i32 @msb_mark_block_used(%struct.msb_data* %135, i64 %136)
  %138 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %139 = load i64, i64* %4, align 8
  %140 = call i32 @msb_erase_block(%struct.msb_data* %138, i64 %139)
  br label %238

141:                                              ; preds = %127
  %142 = load i64, i64* %5, align 8
  %143 = load i64, i64* @MS_BLOCK_INVALID, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load i64, i64* %4, align 8
  %147 = call i32 (i8*, i64, ...) @dbg_verbose(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i64 %146)
  br label %238

148:                                              ; preds = %141
  %149 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %150 = load i64, i64* %4, align 8
  %151 = call i32 @msb_mark_block_used(%struct.msb_data* %149, i64 %150)
  %152 = load i64, i64* %5, align 8
  %153 = call i64 @msb_get_zone_from_lba(i64 %152)
  %154 = load i64, i64* %4, align 8
  %155 = call i64 @msb_get_zone_from_pba(i64 %154)
  %156 = icmp ne i64 %153, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %148
  %158 = load i64, i64* %4, align 8
  %159 = load i64, i64* %5, align 8
  %160 = call i32 (i8*, i64, ...) @pr_notice(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i64 %158, i64 %159)
  %161 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %162 = load i64, i64* %4, align 8
  %163 = call i32 @msb_erase_block(%struct.msb_data* %161, i64 %162)
  br label %238

164:                                              ; preds = %148
  %165 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %166 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %165, i32 0, i32 2
  %167 = load i64*, i64** %166, align 8
  %168 = load i64, i64* %5, align 8
  %169 = getelementptr inbounds i64, i64* %167, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @MS_BLOCK_INVALID, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %183

173:                                              ; preds = %164
  %174 = load i64, i64* %4, align 8
  %175 = load i64, i64* %5, align 8
  %176 = call i32 (i8*, i64, ...) @dbg_verbose(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i64 %174, i64 %175)
  %177 = load i64, i64* %4, align 8
  %178 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %179 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %178, i32 0, i32 2
  %180 = load i64*, i64** %179, align 8
  %181 = load i64, i64* %5, align 8
  %182 = getelementptr inbounds i64, i64* %180, i64 %181
  store i64 %177, i64* %182, align 8
  br label %238

183:                                              ; preds = %164
  %184 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %185 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %184, i32 0, i32 2
  %186 = load i64*, i64** %185, align 8
  %187 = load i64, i64* %5, align 8
  %188 = getelementptr inbounds i64, i64* %186, i64 %187
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %6, align 8
  %190 = load i32*, i32** %12, align 8
  %191 = load i64, i64* %6, align 8
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %9, align 4
  %194 = load i64, i64* %4, align 8
  %195 = load i64, i64* %6, align 8
  %196 = call i32 (i8*, i64, ...) @pr_notice(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i64 %194, i64 %195)
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* @MEMSTICK_OVERWRITE_UDST, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %213, label %201

201:                                              ; preds = %183
  %202 = load i64, i64* %4, align 8
  %203 = call i32 (i8*, i64, ...) @pr_notice(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i64 %202)
  %204 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %205 = load i64, i64* %6, align 8
  %206 = call i32 @msb_erase_block(%struct.msb_data* %204, i64 %205)
  %207 = load i64, i64* %4, align 8
  %208 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %209 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %208, i32 0, i32 2
  %210 = load i64*, i64** %209, align 8
  %211 = load i64, i64* %5, align 8
  %212 = getelementptr inbounds i64, i64* %210, i64 %211
  store i64 %207, i64* %212, align 8
  br label %238

213:                                              ; preds = %183
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* @MEMSTICK_OVERWRITE_UDST, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %224, label %218

218:                                              ; preds = %213
  %219 = load i64, i64* %6, align 8
  %220 = call i32 (i8*, i64, ...) @pr_notice(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i64 %219)
  %221 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %222 = load i64, i64* %4, align 8
  %223 = call i32 @msb_erase_block(%struct.msb_data* %221, i64 %222)
  br label %238

224:                                              ; preds = %213
  %225 = load i64, i64* %4, align 8
  %226 = load i64, i64* %6, align 8
  %227 = load i64, i64* %6, align 8
  %228 = call i32 (i8*, i64, ...) @pr_notice(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.13, i64 0, i64 0), i64 %225, i64 %226, i64 %227)
  %229 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %230 = load i64, i64* %6, align 8
  %231 = call i32 @msb_erase_block(%struct.msb_data* %229, i64 %230)
  %232 = load i64, i64* %4, align 8
  %233 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %234 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %233, i32 0, i32 2
  %235 = load i64*, i64** %234, align 8
  %236 = load i64, i64* %5, align 8
  %237 = getelementptr inbounds i64, i64* %235, i64 %236
  store i64 %232, i64* %237, align 8
  br label %238

238:                                              ; preds = %224, %218, %201, %173, %157, %145, %132, %120, %108, %72, %60, %47
  %239 = load i64, i64* %4, align 8
  %240 = add i64 %239, 1
  store i64 %240, i64* %4, align 8
  br label %25

241:                                              ; preds = %25
  %242 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  %243 = load i32*, i32** %12, align 8
  %244 = call i32 @kfree(i32* %243)
  store i32 0, i32* %2, align 4
  br label %245

245:                                              ; preds = %241, %84, %20
  %246 = load i32, i32* %2, align 4
  ret i32 %246
}

declare dso_local i32* @kzalloc(i64, i32) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @dbg_verbose(i8*, i64, ...) #1

declare dso_local i32 @msb_mark_block_used(%struct.msb_data*, i64) #1

declare dso_local i64 @test_bit(i64, i32) #1

declare dso_local i32 @memset(%struct.ms_extra_data_register*, i32, i32) #1

declare dso_local i32 @msb_read_oob(%struct.msb_data*, i64, i32, %struct.ms_extra_data_register*) #1

declare dso_local i32 @pr_notice(i8*, i64, ...) #1

declare dso_local i32 @msb_erase_block(%struct.msb_data*, i64) #1

declare dso_local i32 @pr_err(i8*, i32, i64) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i64 @msb_get_zone_from_lba(i64) #1

declare dso_local i64 @msb_get_zone_from_pba(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
