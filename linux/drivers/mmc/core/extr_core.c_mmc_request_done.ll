; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_request_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_request_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, %struct.mmc_request*, i32, i32 }
%struct.mmc_request = type { i32 (%struct.mmc_request*)*, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.mmc_command* }
%struct.TYPE_6__ = type { i32, i64, i32* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i32* }
%struct.mmc_command = type { i32, i64, i32*, i64 }

@MMC_SEND_TUNING_BLOCK = common dso_local global i64 0, align 8
@MMC_SEND_TUNING_BLOCK_HS200 = common dso_local global i64 0, align 8
@EILSEQ = common dso_local global i32 0, align 4
@R1_SPI_ILLEGAL_COMMAND = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%s: req done <CMD%u>: %d: %08x %08x %08x %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"%s: req done (CMD%u): %d: %08x %08x %08x %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s:     %d bytes transferred: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"%s:     (CMD%u): %d: %08x %08x %08x %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_request_done(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.mmc_command*, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %7 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %8 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %7, i32 0, i32 4
  %9 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  store %struct.mmc_command* %9, %struct.mmc_command** %5, align 8
  %10 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %11 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %14 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MMC_SEND_TUNING_BLOCK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %79

18:                                               ; preds = %2
  %19 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %20 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MMC_SEND_TUNING_BLOCK_HS200, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %79

24:                                               ; preds = %18
  %25 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %26 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %79, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @EILSEQ, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %76, label %34

34:                                               ; preds = %29
  %35 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %36 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %35, i32 0, i32 3
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = icmp ne %struct.TYPE_4__* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %41 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @EILSEQ, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %76, label %48

48:                                               ; preds = %39, %34
  %49 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %50 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = icmp ne %struct.TYPE_5__* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %55 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %54, i32 0, i32 2
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @EILSEQ, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %76, label %62

62:                                               ; preds = %53, %48
  %63 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %64 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = icmp ne %struct.TYPE_6__* %65, null
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %69 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @EILSEQ, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %67, %53, %39, %29
  %77 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %78 = call i32 @mmc_retune_needed(%struct.mmc_host* %77)
  br label %79

79:                                               ; preds = %76, %67, %62, %24, %18, %2
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %79
  %83 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %84 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %82
  %88 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %89 = call i64 @mmc_host_is_spi(%struct.mmc_host* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %87
  %92 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %93 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @R1_SPI_ILLEGAL_COMMAND, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %102 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %101, i32 0, i32 3
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %100, %91
  br label %104

104:                                              ; preds = %103, %87, %82, %79
  %105 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %106 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %105, i32 0, i32 1
  %107 = load %struct.mmc_request*, %struct.mmc_request** %106, align 8
  %108 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %109 = icmp eq %struct.mmc_request* %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %112 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %111, i32 0, i32 1
  store %struct.mmc_request* null, %struct.mmc_request** %112, align 8
  br label %113

113:                                              ; preds = %110, %104
  %114 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %115 = call i32 @mmc_complete_cmd(%struct.mmc_request* %114)
  %116 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %117 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %118 = call i32 @trace_mmc_request_done(%struct.mmc_host* %116, %struct.mmc_request* %117)
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %113
  %122 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %123 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %128 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @mmc_card_removed(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %288

132:                                              ; preds = %126, %121, %113
  %133 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %134 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %135 = call i32 @mmc_should_fail_request(%struct.mmc_host* %133, %struct.mmc_request* %134)
  %136 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %137 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %136, i32 0, i32 1
  %138 = load %struct.mmc_request*, %struct.mmc_request** %137, align 8
  %139 = icmp ne %struct.mmc_request* %138, null
  br i1 %139, label %146, label %140

140:                                              ; preds = %132
  %141 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %142 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @LED_OFF, align 4
  %145 = call i32 @led_trigger_event(i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %140, %132
  %147 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %148 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %147, i32 0, i32 3
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = icmp ne %struct.TYPE_4__* %149, null
  br i1 %150, label %151, label %193

151:                                              ; preds = %146
  %152 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %153 = call i32 @mmc_hostname(%struct.mmc_host* %152)
  %154 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %155 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %154, i32 0, i32 3
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %160 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %159, i32 0, i32 3
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %165 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %164, i32 0, i32 3
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %172 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %171, i32 0, i32 3
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %179 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %178, i32 0, i32 3
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 2
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %186 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %185, i32 0, i32 3
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 3
  %191 = load i32, i32* %190, align 4
  %192 = call i32 (i8*, i32, i64, i32, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %153, i64 %158, i32 %163, i32 %170, i32 %177, i32 %184, i32 %191)
  br label %193

193:                                              ; preds = %151, %146
  %194 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %195 = call i32 @mmc_hostname(%struct.mmc_host* %194)
  %196 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %197 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* %6, align 4
  %200 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %201 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %200, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %206 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %205, i32 0, i32 2
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %211 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %210, i32 0, i32 2
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 2
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %216 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %215, i32 0, i32 2
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 3
  %219 = load i32, i32* %218, align 4
  %220 = call i32 (i8*, i32, i64, i32, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %195, i64 %198, i32 %199, i32 %204, i32 %209, i32 %214, i32 %219)
  %221 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %222 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %221, i32 0, i32 2
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %222, align 8
  %224 = icmp ne %struct.TYPE_5__* %223, null
  br i1 %224, label %225, label %240

225:                                              ; preds = %193
  %226 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %227 = call i32 @mmc_hostname(%struct.mmc_host* %226)
  %228 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %229 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %228, i32 0, i32 2
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  %234 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %235 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %234, i32 0, i32 2
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 (i8*, i32, i64, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %227, i64 %233, i32 %238)
  br label %240

240:                                              ; preds = %225, %193
  %241 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %242 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %241, i32 0, i32 1
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %242, align 8
  %244 = icmp ne %struct.TYPE_6__* %243, null
  br i1 %244, label %245, label %287

245:                                              ; preds = %240
  %246 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %247 = call i32 @mmc_hostname(%struct.mmc_host* %246)
  %248 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %249 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %248, i32 0, i32 1
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %254 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %253, i32 0, i32 1
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %259 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %258, i32 0, i32 1
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 2
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %266 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %265, i32 0, i32 1
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 2
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 1
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %273 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %272, i32 0, i32 1
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 2
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 2
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %280 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %279, i32 0, i32 1
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 2
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 3
  %285 = load i32, i32* %284, align 4
  %286 = call i32 (i8*, i32, i64, i32, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %247, i64 %252, i32 %257, i32 %264, i32 %271, i32 %278, i32 %285)
  br label %287

287:                                              ; preds = %245, %240
  br label %288

288:                                              ; preds = %287, %126
  %289 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %290 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %289, i32 0, i32 0
  %291 = load i32 (%struct.mmc_request*)*, i32 (%struct.mmc_request*)** %290, align 8
  %292 = icmp ne i32 (%struct.mmc_request*)* %291, null
  br i1 %292, label %293, label %299

293:                                              ; preds = %288
  %294 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %295 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %294, i32 0, i32 0
  %296 = load i32 (%struct.mmc_request*)*, i32 (%struct.mmc_request*)** %295, align 8
  %297 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %298 = call i32 %296(%struct.mmc_request* %297)
  br label %299

299:                                              ; preds = %293, %288
  ret void
}

declare dso_local i32 @mmc_retune_needed(%struct.mmc_host*) #1

declare dso_local i64 @mmc_host_is_spi(%struct.mmc_host*) #1

declare dso_local i32 @mmc_complete_cmd(%struct.mmc_request*) #1

declare dso_local i32 @trace_mmc_request_done(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i64 @mmc_card_removed(i32) #1

declare dso_local i32 @mmc_should_fail_request(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @led_trigger_event(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i32, ...) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
