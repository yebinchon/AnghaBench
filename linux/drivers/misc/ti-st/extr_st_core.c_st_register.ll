; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_core.c_st_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_core.c_st_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_proto_s = type { i64, i8*, i32*, i32* }
%struct.st_data_s = type { i32*, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"gdata/new_proto/recv or reg_complete_cb not ready\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@ST_MAX_CHANNELS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"chnl_id %d not supported\00", align 1
@EPROTONOSUPPORT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"chnl_id %d already registered\00", align 1
@EALREADY = common dso_local global i64 0, align 8
@ST_REG_IN_PROGRESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c" ST_REG_IN_PROGRESS:%d \00", align 1
@st_write = common dso_local global i8* null, align 8
@ST_REG_PENDING = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i64 0, align 8
@ST_EMPTY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c" chnl_id list empty :%d \00", align 1
@st_kim_recv = common dso_local global i32 0, align 4
@st_recv = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c" KIM failure complete callback \00", align 1
@st_int_recv = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c" call reg complete callback \00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c" proto %d already registered \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @st_register(%struct.st_proto_s* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.st_proto_s*, align 8
  %4 = alloca %struct.st_data_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.st_proto_s* %0, %struct.st_proto_s** %3, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %7 = call i32 @st_kim_ref(%struct.st_data_s** %4, i32 0)
  %8 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %9 = icmp eq %struct.st_data_s* %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %1
  %11 = load %struct.st_proto_s*, %struct.st_proto_s** %3, align 8
  %12 = icmp eq %struct.st_proto_s* %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %10
  %14 = load %struct.st_proto_s*, %struct.st_proto_s** %3, align 8
  %15 = getelementptr inbounds %struct.st_proto_s, %struct.st_proto_s* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.st_proto_s*, %struct.st_proto_s** %3, align 8
  %20 = getelementptr inbounds %struct.st_proto_s, %struct.st_proto_s* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18, %13, %10, %1
  %24 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub nsw i64 0, %25
  store i64 %26, i64* %2, align 8
  br label %238

27:                                               ; preds = %18
  %28 = load %struct.st_proto_s*, %struct.st_proto_s** %3, align 8
  %29 = getelementptr inbounds %struct.st_proto_s, %struct.st_proto_s* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ST_MAX_CHANNELS, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.st_proto_s*, %struct.st_proto_s** %3, align 8
  %35 = getelementptr inbounds %struct.st_proto_s, %struct.st_proto_s* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load i64, i64* @EPROTONOSUPPORT, align 8
  %39 = sub nsw i64 0, %38
  store i64 %39, i64* %2, align 8
  br label %238

40:                                               ; preds = %27
  %41 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %42 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.st_proto_s*, %struct.st_proto_s** %3, align 8
  %45 = getelementptr inbounds %struct.st_proto_s, %struct.st_proto_s* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %57

50:                                               ; preds = %40
  %51 = load %struct.st_proto_s*, %struct.st_proto_s** %3, align 8
  %52 = getelementptr inbounds %struct.st_proto_s, %struct.st_proto_s* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  %55 = load i64, i64* @EALREADY, align 8
  %56 = sub nsw i64 0, %55
  store i64 %56, i64* %2, align 8
  br label %238

57:                                               ; preds = %40
  %58 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %59 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %58, i32 0, i32 2
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @spin_lock_irqsave(i32* %59, i64 %60)
  %62 = load i32, i32* @ST_REG_IN_PROGRESS, align 4
  %63 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %64 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %63, i32 0, i32 3
  %65 = call i64 @test_bit(i32 %62, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %57
  %68 = load %struct.st_proto_s*, %struct.st_proto_s** %3, align 8
  %69 = getelementptr inbounds %struct.st_proto_s, %struct.st_proto_s* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %70)
  %72 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %73 = load %struct.st_proto_s*, %struct.st_proto_s** %3, align 8
  %74 = call i32 @add_channel_to_table(%struct.st_data_s* %72, %struct.st_proto_s* %73)
  %75 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %76 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %76, align 8
  %79 = load i8*, i8** @st_write, align 8
  %80 = load %struct.st_proto_s*, %struct.st_proto_s** %3, align 8
  %81 = getelementptr inbounds %struct.st_proto_s, %struct.st_proto_s* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* @ST_REG_PENDING, align 4
  %83 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %84 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %83, i32 0, i32 3
  %85 = call i32 @set_bit(i32 %82, i32* %84)
  %86 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %87 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %86, i32 0, i32 2
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  %90 = load i64, i64* @EINPROGRESS, align 8
  %91 = sub nsw i64 0, %90
  store i64 %91, i64* %2, align 8
  br label %238

92:                                               ; preds = %57
  %93 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %94 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @ST_EMPTY, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %222

98:                                               ; preds = %92
  %99 = load %struct.st_proto_s*, %struct.st_proto_s** %3, align 8
  %100 = getelementptr inbounds %struct.st_proto_s, %struct.st_proto_s* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %101)
  %103 = load i32, i32* @ST_REG_IN_PROGRESS, align 4
  %104 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %105 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %104, i32 0, i32 3
  %106 = call i32 @set_bit(i32 %103, i32* %105)
  %107 = load i32, i32* @st_kim_recv, align 4
  store i32 %107, i32* @st_recv, align 4
  %108 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %109 = call i32 @st_ll_enable(%struct.st_data_s* %108)
  %110 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %111 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %110, i32 0, i32 2
  %112 = load i64, i64* %6, align 8
  %113 = call i32 @spin_unlock_irqrestore(i32* %111, i64 %112)
  %114 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %115 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @st_kim_start(i32 %116)
  store i64 %117, i64* %5, align 8
  %118 = load i64, i64* %5, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %156

120:                                              ; preds = %98
  %121 = load i32, i32* @ST_REG_IN_PROGRESS, align 4
  %122 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %123 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %122, i32 0, i32 3
  %124 = call i32 @clear_bit(i32 %121, i32* %123)
  %125 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %126 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @ST_EMPTY, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %153

130:                                              ; preds = %120
  %131 = load i32, i32* @ST_REG_PENDING, align 4
  %132 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %133 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %132, i32 0, i32 3
  %134 = call i64 @test_bit(i32 %131, i32* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %153

136:                                              ; preds = %130
  %137 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %138 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %139 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %138, i32 0, i32 2
  %140 = load i64, i64* %6, align 8
  %141 = call i32 @spin_lock_irqsave(i32* %139, i64 %140)
  %142 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %143 = load i64, i64* %5, align 8
  %144 = call i32 @st_reg_complete(%struct.st_data_s* %142, i64 %143)
  %145 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %146 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %145, i32 0, i32 2
  %147 = load i64, i64* %6, align 8
  %148 = call i32 @spin_unlock_irqrestore(i32* %146, i64 %147)
  %149 = load i32, i32* @ST_REG_PENDING, align 4
  %150 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %151 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %150, i32 0, i32 3
  %152 = call i32 @clear_bit(i32 %149, i32* %151)
  br label %153

153:                                              ; preds = %136, %130, %120
  %154 = load i64, i64* @EINVAL, align 8
  %155 = sub nsw i64 0, %154
  store i64 %155, i64* %2, align 8
  br label %238

156:                                              ; preds = %98
  %157 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %158 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %157, i32 0, i32 2
  %159 = load i64, i64* %6, align 8
  %160 = call i32 @spin_lock_irqsave(i32* %158, i64 %159)
  %161 = load i32, i32* @ST_REG_IN_PROGRESS, align 4
  %162 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %163 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %162, i32 0, i32 3
  %164 = call i32 @clear_bit(i32 %161, i32* %163)
  %165 = load i32, i32* @st_int_recv, align 4
  store i32 %165, i32* @st_recv, align 4
  %166 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %167 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @ST_EMPTY, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %181

171:                                              ; preds = %156
  %172 = load i32, i32* @ST_REG_PENDING, align 4
  %173 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %174 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %173, i32 0, i32 3
  %175 = call i64 @test_bit(i32 %172, i32* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %171
  %178 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %179 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %180 = call i32 @st_reg_complete(%struct.st_data_s* %179, i64 0)
  br label %181

181:                                              ; preds = %177, %171, %156
  %182 = load i32, i32* @ST_REG_PENDING, align 4
  %183 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %184 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %183, i32 0, i32 3
  %185 = call i32 @clear_bit(i32 %182, i32* %184)
  %186 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %187 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load %struct.st_proto_s*, %struct.st_proto_s** %3, align 8
  %190 = getelementptr inbounds %struct.st_proto_s, %struct.st_proto_s* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds i32, i32* %188, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %206

195:                                              ; preds = %181
  %196 = load %struct.st_proto_s*, %struct.st_proto_s** %3, align 8
  %197 = getelementptr inbounds %struct.st_proto_s, %struct.st_proto_s* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i64 %198)
  %200 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %201 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %200, i32 0, i32 2
  %202 = load i64, i64* %6, align 8
  %203 = call i32 @spin_unlock_irqrestore(i32* %201, i64 %202)
  %204 = load i64, i64* @EALREADY, align 8
  %205 = sub nsw i64 0, %204
  store i64 %205, i64* %2, align 8
  br label %238

206:                                              ; preds = %181
  %207 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %208 = load %struct.st_proto_s*, %struct.st_proto_s** %3, align 8
  %209 = call i32 @add_channel_to_table(%struct.st_data_s* %207, %struct.st_proto_s* %208)
  %210 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %211 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = add nsw i64 %212, 1
  store i64 %213, i64* %211, align 8
  %214 = load i8*, i8** @st_write, align 8
  %215 = load %struct.st_proto_s*, %struct.st_proto_s** %3, align 8
  %216 = getelementptr inbounds %struct.st_proto_s, %struct.st_proto_s* %215, i32 0, i32 1
  store i8* %214, i8** %216, align 8
  %217 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %218 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %217, i32 0, i32 2
  %219 = load i64, i64* %6, align 8
  %220 = call i32 @spin_unlock_irqrestore(i32* %218, i64 %219)
  %221 = load i64, i64* %5, align 8
  store i64 %221, i64* %2, align 8
  br label %238

222:                                              ; preds = %92
  %223 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %224 = load %struct.st_proto_s*, %struct.st_proto_s** %3, align 8
  %225 = call i32 @add_channel_to_table(%struct.st_data_s* %223, %struct.st_proto_s* %224)
  %226 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %227 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = add nsw i64 %228, 1
  store i64 %229, i64* %227, align 8
  %230 = load i8*, i8** @st_write, align 8
  %231 = load %struct.st_proto_s*, %struct.st_proto_s** %3, align 8
  %232 = getelementptr inbounds %struct.st_proto_s, %struct.st_proto_s* %231, i32 0, i32 1
  store i8* %230, i8** %232, align 8
  %233 = load %struct.st_data_s*, %struct.st_data_s** %4, align 8
  %234 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %233, i32 0, i32 2
  %235 = load i64, i64* %6, align 8
  %236 = call i32 @spin_unlock_irqrestore(i32* %234, i64 %235)
  %237 = load i64, i64* %5, align 8
  store i64 %237, i64* %2, align 8
  br label %238

238:                                              ; preds = %222, %206, %195, %153, %67, %50, %33, %23
  %239 = load i64, i64* %2, align 8
  ret i64 %239
}

declare dso_local i32 @st_kim_ref(%struct.st_data_s**, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i32 @add_channel_to_table(%struct.st_data_s*, %struct.st_proto_s*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @st_ll_enable(%struct.st_data_s*) #1

declare dso_local i64 @st_kim_start(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @st_reg_complete(%struct.st_data_s*, i64) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
