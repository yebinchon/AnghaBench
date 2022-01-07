; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-avc.c_avc_tuner_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-avc.c_avc_tuner_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i32, i32, i32, i32, i64 }
%struct.firedtv_tuner_status = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.avc_command_frame = type { i32, i32*, i32, i32 }
%struct.avc_response_frame = type { i64, i32* }

@AVC_CTYPE_CONTROL = common dso_local global i32 0, align 4
@AVC_SUBUNIT_TYPE_TUNER = common dso_local global i32 0, align 4
@AVC_OPCODE_READ_DESCRIPTOR = common dso_local global i32 0, align 4
@DESCRIPTOR_TUNER_STATUS = common dso_local global i32 0, align 4
@AVC_RESPONSE_STABLE = common dso_local global i64 0, align 8
@AVC_RESPONSE_ACCEPTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"cannot read tuner status\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SIZEOF_ANTENNA_INPUT_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"got invalid tuner status\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avc_tuner_status(%struct.firedtv* %0, %struct.firedtv_tuner_status* %1) #0 {
  %3 = alloca %struct.firedtv*, align 8
  %4 = alloca %struct.firedtv_tuner_status*, align 8
  %5 = alloca %struct.avc_command_frame*, align 8
  %6 = alloca %struct.avc_response_frame*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.firedtv* %0, %struct.firedtv** %3, align 8
  store %struct.firedtv_tuner_status* %1, %struct.firedtv_tuner_status** %4, align 8
  %9 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %10 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.avc_command_frame*
  store %struct.avc_command_frame* %13, %struct.avc_command_frame** %5, align 8
  %14 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %15 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.avc_response_frame*
  store %struct.avc_response_frame* %18, %struct.avc_response_frame** %6, align 8
  %19 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %20 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %19, i32 0, i32 2
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i32, i32* @AVC_CTYPE_CONTROL, align 4
  %23 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %24 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @AVC_SUBUNIT_TYPE_TUNER, align 4
  %26 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %27 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %25, %28
  %30 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %31 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @AVC_OPCODE_READ_DESCRIPTOR, align 4
  %33 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %34 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @DESCRIPTOR_TUNER_STATUS, align 4
  %36 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %37 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %35, i32* %39, align 4
  %40 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %41 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 255, i32* %43, align 4
  %44 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %45 = call i32 @clear_operands(%struct.avc_command_frame* %44, i32 2, i32 31)
  %46 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %47 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %46, i32 0, i32 1
  store i32 12, i32* %47, align 4
  %48 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %49 = call i32 @avc_write(%struct.firedtv* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %2
  br label %361

53:                                               ; preds = %2
  %54 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %55 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AVC_RESPONSE_STABLE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %61 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AVC_RESPONSE_ACCEPTED, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %67 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %8, align 4
  br label %361

72:                                               ; preds = %59, %53
  %73 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %74 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 9
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %7, align 4
  %78 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %79 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 16
  br i1 %83, label %88, label %84

84:                                               ; preds = %72
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @SIZEOF_ANTENNA_INPUT_INFO, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %84, %72
  %89 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %90 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dev_err(i32 %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %8, align 4
  br label %361

95:                                               ; preds = %84
  %96 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %97 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 10
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.firedtv_tuner_status*, %struct.firedtv_tuner_status** %4, align 8
  %102 = getelementptr inbounds %struct.firedtv_tuner_status, %struct.firedtv_tuner_status* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %104 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 11
  %107 = load i32, i32* %106, align 4
  %108 = ashr i32 %107, 7
  %109 = and i32 %108, 1
  %110 = load %struct.firedtv_tuner_status*, %struct.firedtv_tuner_status** %4, align 8
  %111 = getelementptr inbounds %struct.firedtv_tuner_status, %struct.firedtv_tuner_status* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %113 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 11
  %116 = load i32, i32* %115, align 4
  %117 = ashr i32 %116, 6
  %118 = and i32 %117, 1
  %119 = load %struct.firedtv_tuner_status*, %struct.firedtv_tuner_status** %4, align 8
  %120 = getelementptr inbounds %struct.firedtv_tuner_status, %struct.firedtv_tuner_status* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  %121 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %122 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 11
  %125 = load i32, i32* %124, align 4
  %126 = ashr i32 %125, 5
  %127 = and i32 %126, 1
  %128 = load %struct.firedtv_tuner_status*, %struct.firedtv_tuner_status** %4, align 8
  %129 = getelementptr inbounds %struct.firedtv_tuner_status, %struct.firedtv_tuner_status* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  %130 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %131 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 12
  %134 = load i32, i32* %133, align 4
  %135 = ashr i32 %134, 7
  %136 = and i32 %135, 1
  %137 = load %struct.firedtv_tuner_status*, %struct.firedtv_tuner_status** %4, align 8
  %138 = getelementptr inbounds %struct.firedtv_tuner_status, %struct.firedtv_tuner_status* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 4
  %139 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %140 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 12
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 127
  %145 = load %struct.firedtv_tuner_status*, %struct.firedtv_tuner_status** %4, align 8
  %146 = getelementptr inbounds %struct.firedtv_tuner_status, %struct.firedtv_tuner_status* %145, i32 0, i32 5
  store i32 %144, i32* %146, align 4
  %147 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %148 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 13
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 %151, 24
  %153 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %154 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 14
  %157 = load i32, i32* %156, align 4
  %158 = shl i32 %157, 16
  %159 = or i32 %152, %158
  %160 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %161 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 15
  %164 = load i32, i32* %163, align 4
  %165 = shl i32 %164, 8
  %166 = or i32 %159, %165
  %167 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %168 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 16
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %166, %171
  %173 = load %struct.firedtv_tuner_status*, %struct.firedtv_tuner_status** %4, align 8
  %174 = getelementptr inbounds %struct.firedtv_tuner_status, %struct.firedtv_tuner_status* %173, i32 0, i32 6
  store i32 %172, i32* %174, align 4
  %175 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %176 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 17
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.firedtv_tuner_status*, %struct.firedtv_tuner_status** %4, align 8
  %181 = getelementptr inbounds %struct.firedtv_tuner_status, %struct.firedtv_tuner_status* %180, i32 0, i32 7
  store i32 %179, i32* %181, align 4
  %182 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %183 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 18
  %186 = load i32, i32* %185, align 4
  %187 = ashr i32 %186, 6
  %188 = and i32 %187, 2
  %189 = load %struct.firedtv_tuner_status*, %struct.firedtv_tuner_status** %4, align 8
  %190 = getelementptr inbounds %struct.firedtv_tuner_status, %struct.firedtv_tuner_status* %189, i32 0, i32 8
  store i32 %188, i32* %190, align 4
  %191 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %192 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 18
  %195 = load i32, i32* %194, align 4
  %196 = and i32 %195, 63
  %197 = shl i32 %196, 16
  %198 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %199 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 19
  %202 = load i32, i32* %201, align 4
  %203 = shl i32 %202, 8
  %204 = or i32 %197, %203
  %205 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %206 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 20
  %209 = load i32, i32* %208, align 4
  %210 = or i32 %204, %209
  %211 = load %struct.firedtv_tuner_status*, %struct.firedtv_tuner_status** %4, align 8
  %212 = getelementptr inbounds %struct.firedtv_tuner_status, %struct.firedtv_tuner_status* %211, i32 0, i32 9
  store i32 %210, i32* %212, align 4
  %213 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %214 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 21
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.firedtv_tuner_status*, %struct.firedtv_tuner_status** %4, align 8
  %219 = getelementptr inbounds %struct.firedtv_tuner_status, %struct.firedtv_tuner_status* %218, i32 0, i32 10
  store i32 %217, i32* %219, align 4
  %220 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %221 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 22
  %224 = load i32, i32* %223, align 4
  %225 = ashr i32 %224, 4
  %226 = and i32 %225, 1
  %227 = load %struct.firedtv_tuner_status*, %struct.firedtv_tuner_status** %4, align 8
  %228 = getelementptr inbounds %struct.firedtv_tuner_status, %struct.firedtv_tuner_status* %227, i32 0, i32 11
  store i32 %226, i32* %228, align 4
  %229 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %230 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 22
  %233 = load i32, i32* %232, align 4
  %234 = ashr i32 %233, 3
  %235 = and i32 %234, 1
  %236 = load %struct.firedtv_tuner_status*, %struct.firedtv_tuner_status** %4, align 8
  %237 = getelementptr inbounds %struct.firedtv_tuner_status, %struct.firedtv_tuner_status* %236, i32 0, i32 12
  store i32 %235, i32* %237, align 4
  %238 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %239 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 22
  %242 = load i32, i32* %241, align 4
  %243 = ashr i32 %242, 1
  %244 = and i32 %243, 1
  %245 = load %struct.firedtv_tuner_status*, %struct.firedtv_tuner_status** %4, align 8
  %246 = getelementptr inbounds %struct.firedtv_tuner_status, %struct.firedtv_tuner_status* %245, i32 0, i32 13
  store i32 %244, i32* %246, align 4
  %247 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %248 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %247, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 22
  %251 = load i32, i32* %250, align 4
  %252 = and i32 %251, 1
  %253 = load %struct.firedtv_tuner_status*, %struct.firedtv_tuner_status** %4, align 8
  %254 = getelementptr inbounds %struct.firedtv_tuner_status, %struct.firedtv_tuner_status* %253, i32 0, i32 14
  store i32 %252, i32* %254, align 4
  %255 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %256 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %255, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 23
  %259 = load i32, i32* %258, align 4
  %260 = shl i32 %259, 8
  %261 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %262 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 24
  %265 = load i32, i32* %264, align 4
  %266 = or i32 %260, %265
  %267 = load %struct.firedtv_tuner_status*, %struct.firedtv_tuner_status** %4, align 8
  %268 = getelementptr inbounds %struct.firedtv_tuner_status, %struct.firedtv_tuner_status* %267, i32 0, i32 15
  store i32 %266, i32* %268, align 4
  %269 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %270 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %269, i32 0, i32 1
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 27
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.firedtv_tuner_status*, %struct.firedtv_tuner_status** %4, align 8
  %275 = getelementptr inbounds %struct.firedtv_tuner_status, %struct.firedtv_tuner_status* %274, i32 0, i32 16
  store i32 %273, i32* %275, align 4
  %276 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %277 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 28
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.firedtv_tuner_status*, %struct.firedtv_tuner_status** %4, align 8
  %282 = getelementptr inbounds %struct.firedtv_tuner_status, %struct.firedtv_tuner_status* %281, i32 0, i32 17
  store i32 %280, i32* %282, align 4
  %283 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %284 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %283, i32 0, i32 1
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 29
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.firedtv_tuner_status*, %struct.firedtv_tuner_status** %4, align 8
  %289 = getelementptr inbounds %struct.firedtv_tuner_status, %struct.firedtv_tuner_status* %288, i32 0, i32 18
  store i32 %287, i32* %289, align 4
  %290 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %291 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %290, i32 0, i32 1
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 30
  %294 = load i32, i32* %293, align 4
  %295 = and i32 %294, 1
  %296 = load %struct.firedtv_tuner_status*, %struct.firedtv_tuner_status** %4, align 8
  %297 = getelementptr inbounds %struct.firedtv_tuner_status, %struct.firedtv_tuner_status* %296, i32 0, i32 19
  store i32 %295, i32* %297, align 4
  %298 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %299 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %298, i32 0, i32 1
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 31
  %302 = load i32, i32* %301, align 4
  %303 = ashr i32 %302, 7
  %304 = and i32 %303, 1
  %305 = load %struct.firedtv_tuner_status*, %struct.firedtv_tuner_status** %4, align 8
  %306 = getelementptr inbounds %struct.firedtv_tuner_status, %struct.firedtv_tuner_status* %305, i32 0, i32 20
  store i32 %304, i32* %306, align 4
  %307 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %308 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %307, i32 0, i32 1
  %309 = load i32*, i32** %308, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 31
  %311 = load i32, i32* %310, align 4
  %312 = ashr i32 %311, 6
  %313 = and i32 %312, 1
  %314 = load %struct.firedtv_tuner_status*, %struct.firedtv_tuner_status** %4, align 8
  %315 = getelementptr inbounds %struct.firedtv_tuner_status, %struct.firedtv_tuner_status* %314, i32 0, i32 21
  store i32 %313, i32* %315, align 4
  %316 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %317 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %316, i32 0, i32 1
  %318 = load i32*, i32** %317, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 31
  %320 = load i32, i32* %319, align 4
  %321 = ashr i32 %320, 5
  %322 = and i32 %321, 1
  %323 = load %struct.firedtv_tuner_status*, %struct.firedtv_tuner_status** %4, align 8
  %324 = getelementptr inbounds %struct.firedtv_tuner_status, %struct.firedtv_tuner_status* %323, i32 0, i32 22
  store i32 %322, i32* %324, align 4
  %325 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %326 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %325, i32 0, i32 1
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 31
  %329 = load i32, i32* %328, align 4
  %330 = ashr i32 %329, 4
  %331 = and i32 %330, 1
  %332 = load %struct.firedtv_tuner_status*, %struct.firedtv_tuner_status** %4, align 8
  %333 = getelementptr inbounds %struct.firedtv_tuner_status, %struct.firedtv_tuner_status* %332, i32 0, i32 23
  store i32 %331, i32* %333, align 4
  %334 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %335 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %334, i32 0, i32 1
  %336 = load i32*, i32** %335, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 31
  %338 = load i32, i32* %337, align 4
  %339 = ashr i32 %338, 3
  %340 = and i32 %339, 1
  %341 = load %struct.firedtv_tuner_status*, %struct.firedtv_tuner_status** %4, align 8
  %342 = getelementptr inbounds %struct.firedtv_tuner_status, %struct.firedtv_tuner_status* %341, i32 0, i32 24
  store i32 %340, i32* %342, align 4
  %343 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %344 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %343, i32 0, i32 1
  %345 = load i32*, i32** %344, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 31
  %347 = load i32, i32* %346, align 4
  %348 = ashr i32 %347, 2
  %349 = and i32 %348, 1
  %350 = load %struct.firedtv_tuner_status*, %struct.firedtv_tuner_status** %4, align 8
  %351 = getelementptr inbounds %struct.firedtv_tuner_status, %struct.firedtv_tuner_status* %350, i32 0, i32 25
  store i32 %349, i32* %351, align 4
  %352 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %353 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %352, i32 0, i32 1
  %354 = load i32*, i32** %353, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 31
  %356 = load i32, i32* %355, align 4
  %357 = ashr i32 %356, 1
  %358 = and i32 %357, 1
  %359 = load %struct.firedtv_tuner_status*, %struct.firedtv_tuner_status** %4, align 8
  %360 = getelementptr inbounds %struct.firedtv_tuner_status, %struct.firedtv_tuner_status* %359, i32 0, i32 26
  store i32 %358, i32* %360, align 4
  br label %361

361:                                              ; preds = %95, %88, %65, %52
  %362 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %363 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %362, i32 0, i32 2
  %364 = call i32 @mutex_unlock(i32* %363)
  %365 = load i32, i32* %8, align 4
  ret i32 %365
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_operands(%struct.avc_command_frame*, i32, i32) #1

declare dso_local i32 @avc_write(%struct.firedtv*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
