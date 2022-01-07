; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_main.c_lbs_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_main.c_lbs_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.lbs_private* }
%struct.lbs_private = type { i64, i64, i64, i64, i64, i32 (%struct.lbs_private*, i32, i32, i64)*, i32, i32, i32, i32, i64, i64, i64, i32, %struct.cmd_ctrl_node*, i64, i32, i64, i32 (%struct.lbs_private*)*, i64 (%struct.lbs_private*)*, i64, i32, i64*, i32*, i64, i32, i64, i32 }
%struct.cmd_ctrl_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"1: currenttxskb %p, dnld_sent %d\0A\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@PS_STATE_SLEEP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"sleeping, connect_status %d, psmode %d, psstate %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"2: currenttxskb %p, dnld_send %d\0A\00", align 1
@TASK_RUNNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"3: currenttxskb %p, dnld_sent %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"break from main thread\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"adapter removed; waiting to die...\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"4: currenttxskb %p, dnld_sent %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Waking up device...\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Wakeup device failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Timeout submitting command 0x%04x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@PS_STATE_PRE_SLEEP = common dso_local global i64 0, align 8
@LBS_CONNECTED = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [54 x i8] c"pre-sleep, currenttxskb %p, dnld_sent %d, cur_cmd %p\0A\00", align 1
@PS_STATE_AWAKE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [47 x i8] c"ignore PS_SleepConfirm in non-connected state\0A\00", align 1
@MVMS_DAT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"host_to_card failed %d\0A\00", align 1
@DNLD_RES_RECEIVED = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @lbs_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cmd_ctrl_node*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.net_device*
  store %struct.net_device* %12, %struct.net_device** %3, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  %15 = load %struct.lbs_private*, %struct.lbs_private** %14, align 8
  store %struct.lbs_private* %15, %struct.lbs_private** %4, align 8
  %16 = load i32, i32* @current, align 4
  %17 = call i32 @init_waitqueue_entry(i32* %5, i32 %16)
  br label %18

18:                                               ; preds = %472, %379, %373, %318, %267, %170, %1
  %19 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %20 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %23 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %22, i32 0, i32 12
  %24 = load i64, i64* %23, align 8
  %25 = call i32 (i8*, ...) @lbs_deb_thread(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %21, i64 %24)
  %26 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %27 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %26, i32 0, i32 25
  %28 = call i32 @add_wait_queue(i32* %27, i32* %5)
  %29 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %30 = call i32 @set_current_state(i32 %29)
  %31 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %32 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %31, i32 0, i32 9
  %33 = call i32 @spin_lock_irq(i32* %32)
  %34 = call i64 (...) @kthread_should_stop()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %119

37:                                               ; preds = %18
  %38 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %39 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %38, i32 0, i32 24
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 1, i32* %6, align 4
  br label %118

43:                                               ; preds = %37
  %44 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %45 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PS_STATE_SLEEP, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 1, i32* %6, align 4
  br label %117

50:                                               ; preds = %43
  %51 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %52 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %51, i32 0, i32 17
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %116

56:                                               ; preds = %50
  %57 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %58 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %57, i32 0, i32 16
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  store i32 1, i32* %6, align 4
  br label %115

62:                                               ; preds = %56
  %63 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %64 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %63, i32 0, i32 12
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 1, i32* %6, align 4
  br label %114

68:                                               ; preds = %62
  %69 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %70 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 0, i32* %6, align 4
  br label %113

74:                                               ; preds = %68
  %75 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %76 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %75, i32 0, i32 22
  %77 = load i64*, i64** %76, align 8
  %78 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %79 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i64, i64* %77, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  store i32 0, i32* %6, align 4
  br label %112

85:                                               ; preds = %74
  %86 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %87 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %86, i32 0, i32 14
  %88 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %87, align 8
  %89 = icmp ne %struct.cmd_ctrl_node* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 1, i32* %6, align 4
  br label %111

91:                                               ; preds = %85
  %92 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %93 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %92, i32 0, i32 27
  %94 = call i32 @list_empty(i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %91
  %97 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %98 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %97, i32 0, i32 20
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  store i32 0, i32* %6, align 4
  br label %110

102:                                              ; preds = %96, %91
  %103 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %104 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %103, i32 0, i32 21
  %105 = call i64 @kfifo_len(i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 0, i32* %6, align 4
  br label %109

108:                                              ; preds = %102
  store i32 1, i32* %6, align 4
  br label %109

109:                                              ; preds = %108, %107
  br label %110

110:                                              ; preds = %109, %101
  br label %111

111:                                              ; preds = %110, %90
  br label %112

112:                                              ; preds = %111, %84
  br label %113

113:                                              ; preds = %112, %73
  br label %114

114:                                              ; preds = %113, %67
  br label %115

115:                                              ; preds = %114, %61
  br label %116

116:                                              ; preds = %115, %55
  br label %117

117:                                              ; preds = %116, %49
  br label %118

118:                                              ; preds = %117, %42
  br label %119

119:                                              ; preds = %118, %36
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %119
  %123 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %124 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %127 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %126, i32 0, i32 26
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %130 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i32 (i8*, ...) @lbs_deb_thread(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %125, i64 %128, i64 %131)
  %133 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %134 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %133, i32 0, i32 9
  %135 = call i32 @spin_unlock_irq(i32* %134)
  %136 = call i32 (...) @schedule()
  br label %141

137:                                              ; preds = %119
  %138 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %139 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %138, i32 0, i32 9
  %140 = call i32 @spin_unlock_irq(i32* %139)
  br label %141

141:                                              ; preds = %137, %122
  %142 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %143 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %146 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %145, i32 0, i32 12
  %147 = load i64, i64* %146, align 8
  %148 = call i32 (i8*, ...) @lbs_deb_thread(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %144, i64 %147)
  %149 = load i32, i32* @TASK_RUNNING, align 4
  %150 = call i32 @set_current_state(i32 %149)
  %151 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %152 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %151, i32 0, i32 25
  %153 = call i32 @remove_wait_queue(i32* %152, i32* %5)
  %154 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %155 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %158 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %157, i32 0, i32 12
  %159 = load i64, i64* %158, align 8
  %160 = call i32 (i8*, ...) @lbs_deb_thread(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %156, i64 %159)
  %161 = call i64 (...) @kthread_should_stop()
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %141
  %164 = call i32 (i8*, ...) @lbs_deb_thread(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %476

165:                                              ; preds = %141
  %166 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %167 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %166, i32 0, i32 24
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = call i32 (i8*, ...) @lbs_deb_thread(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %18

172:                                              ; preds = %165
  %173 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %174 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %177 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %176, i32 0, i32 12
  %178 = load i64, i64* %177, align 8
  %179 = call i32 (i8*, ...) @lbs_deb_thread(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i64 %175, i64 %178)
  %180 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %181 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %180, i32 0, i32 9
  %182 = call i32 @spin_lock_irq(i32* %181)
  %183 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %184 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  store i64 %185, i64* %7, align 8
  %186 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %187 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %186, i32 0, i32 22
  %188 = load i64*, i64** %187, align 8
  %189 = load i64, i64* %7, align 8
  %190 = getelementptr inbounds i64, i64* %188, i64 %189
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %219

193:                                              ; preds = %172
  %194 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %195 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %194, i32 0, i32 9
  %196 = call i32 @spin_unlock_irq(i32* %195)
  %197 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %198 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %199 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %198, i32 0, i32 23
  %200 = load i32*, i32** %199, align 8
  %201 = load i64, i64* %7, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %205 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %204, i32 0, i32 22
  %206 = load i64*, i64** %205, align 8
  %207 = load i64, i64* %7, align 8
  %208 = getelementptr inbounds i64, i64* %206, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @lbs_process_command_response(%struct.lbs_private* %197, i32 %203, i64 %209)
  %211 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %212 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %211, i32 0, i32 9
  %213 = call i32 @spin_lock_irq(i32* %212)
  %214 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %215 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %214, i32 0, i32 22
  %216 = load i64*, i64** %215, align 8
  %217 = load i64, i64* %7, align 8
  %218 = getelementptr inbounds i64, i64* %216, i64 %217
  store i64 0, i64* %218, align 8
  br label %219

219:                                              ; preds = %193, %172
  %220 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %221 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %220, i32 0, i32 9
  %222 = call i32 @spin_unlock_irq(i32* %221)
  %223 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %224 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %223, i32 0, i32 9
  %225 = call i32 @spin_lock_irq(i32* %224)
  br label %226

226:                                              ; preds = %239, %219
  %227 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %228 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %227, i32 0, i32 21
  %229 = call i64 @kfifo_len(i32* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %249

231:                                              ; preds = %226
  %232 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %233 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %232, i32 0, i32 21
  %234 = bitcast i32* %8 to i8*
  %235 = call i32 @kfifo_out(i32* %233, i8* %234, i32 4)
  %236 = sext i32 %235 to i64
  %237 = icmp ne i64 %236, 4
  br i1 %237, label %238, label %239

238:                                              ; preds = %231
  br label %249

239:                                              ; preds = %231
  %240 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %241 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %240, i32 0, i32 9
  %242 = call i32 @spin_unlock_irq(i32* %241)
  %243 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %244 = load i32, i32* %8, align 4
  %245 = call i32 @lbs_process_event(%struct.lbs_private* %243, i32 %244)
  %246 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %247 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %246, i32 0, i32 9
  %248 = call i32 @spin_lock_irq(i32* %247)
  br label %226

249:                                              ; preds = %238, %226
  %250 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %251 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %250, i32 0, i32 9
  %252 = call i32 @spin_unlock_irq(i32* %251)
  %253 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %254 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %253, i32 0, i32 20
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %268

257:                                              ; preds = %249
  %258 = call i32 (i8*, ...) @lbs_deb_thread(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %259 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %260 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %259, i32 0, i32 19
  %261 = load i64 (%struct.lbs_private*)*, i64 (%struct.lbs_private*)** %260, align 8
  %262 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %263 = call i64 %261(%struct.lbs_private* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %257
  %266 = call i32 (i8*, ...) @lbs_deb_thread(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %267

267:                                              ; preds = %265, %257
  br label %18

268:                                              ; preds = %249
  %269 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %270 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %269, i32 0, i32 17
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %311

273:                                              ; preds = %268
  %274 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %275 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %274, i32 0, i32 14
  %276 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %275, align 8
  %277 = icmp ne %struct.cmd_ctrl_node* %276, null
  br i1 %277, label %278, label %311

278:                                              ; preds = %273
  %279 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %280 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %279, i32 0, i32 14
  %281 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %280, align 8
  store %struct.cmd_ctrl_node* %281, %struct.cmd_ctrl_node** %9, align 8
  %282 = load %struct.net_device*, %struct.net_device** %3, align 8
  %283 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %9, align 8
  %284 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %283, i32 0, i32 0
  %285 = load %struct.TYPE_2__*, %struct.TYPE_2__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @le16_to_cpu(i32 %287)
  %289 = call i32 @netdev_info(%struct.net_device* %282, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %288)
  %290 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %291 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %9, align 8
  %292 = load i32, i32* @ETIMEDOUT, align 4
  %293 = sub nsw i32 0, %292
  %294 = call i32 @lbs_complete_command(%struct.lbs_private* %290, %struct.cmd_ctrl_node* %291, i32 %293)
  %295 = load %struct.net_device*, %struct.net_device** %3, align 8
  %296 = getelementptr inbounds %struct.net_device, %struct.net_device* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %310, label %299

299:                                              ; preds = %278
  %300 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %301 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %300, i32 0, i32 18
  %302 = load i32 (%struct.lbs_private*)*, i32 (%struct.lbs_private*)** %301, align 8
  %303 = icmp ne i32 (%struct.lbs_private*)* %302, null
  br i1 %303, label %304, label %310

304:                                              ; preds = %299
  %305 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %306 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %305, i32 0, i32 18
  %307 = load i32 (%struct.lbs_private*)*, i32 (%struct.lbs_private*)** %306, align 8
  %308 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %309 = call i32 %307(%struct.lbs_private* %308)
  br label %310

310:                                              ; preds = %304, %299, %278
  br label %311

311:                                              ; preds = %310, %273, %268
  %312 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %313 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %312, i32 0, i32 17
  store i64 0, i64* %313, align 8
  %314 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %315 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %314, i32 0, i32 16
  %316 = load i32, i32* %315, align 8
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %319, label %318

318:                                              ; preds = %311
  br label %18

319:                                              ; preds = %311
  %320 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %321 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* @PS_STATE_PRE_SLEEP, align 8
  %324 = icmp eq i64 %322, %323
  br i1 %324, label %325, label %361

325:                                              ; preds = %319
  %326 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %327 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %326, i32 0, i32 12
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %361, label %330

330:                                              ; preds = %325
  %331 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %332 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %331, i32 0, i32 14
  %333 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %332, align 8
  %334 = icmp ne %struct.cmd_ctrl_node* %333, null
  br i1 %334, label %361, label %335

335:                                              ; preds = %330
  %336 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %337 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %336, i32 0, i32 4
  %338 = load i64, i64* %337, align 8
  %339 = load i64, i64* @LBS_CONNECTED, align 8
  %340 = icmp eq i64 %338, %339
  br i1 %340, label %341, label %354

341:                                              ; preds = %335
  %342 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %343 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %346 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %345, i32 0, i32 12
  %347 = load i64, i64* %346, align 8
  %348 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %349 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %348, i32 0, i32 14
  %350 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %349, align 8
  %351 = call i32 (i8*, ...) @lbs_deb_thread(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i64 %344, i64 %347, %struct.cmd_ctrl_node* %350)
  %352 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %353 = call i32 @lbs_ps_confirm_sleep(%struct.lbs_private* %352)
  br label %360

354:                                              ; preds = %335
  %355 = load i64, i64* @PS_STATE_AWAKE, align 8
  %356 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %357 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %356, i32 0, i32 1
  store i64 %355, i64* %357, align 8
  %358 = load %struct.net_device*, %struct.net_device** %3, align 8
  %359 = call i32 @netdev_alert(%struct.net_device* %358, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0))
  br label %360

360:                                              ; preds = %354, %341
  br label %361

361:                                              ; preds = %360, %330, %325, %319
  %362 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %363 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %362, i32 0, i32 1
  %364 = load i64, i64* %363, align 8
  %365 = load i64, i64* @PS_STATE_SLEEP, align 8
  %366 = icmp eq i64 %364, %365
  br i1 %366, label %373, label %367

367:                                              ; preds = %361
  %368 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %369 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %368, i32 0, i32 1
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* @PS_STATE_PRE_SLEEP, align 8
  %372 = icmp eq i64 %370, %371
  br i1 %372, label %373, label %374

373:                                              ; preds = %367, %361
  br label %18

374:                                              ; preds = %367
  %375 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %376 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %375, i32 0, i32 15
  %377 = load i64, i64* %376, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %380

379:                                              ; preds = %374
  br label %18

380:                                              ; preds = %374
  %381 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %382 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %381, i32 0, i32 12
  %383 = load i64, i64* %382, align 8
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %393, label %385

385:                                              ; preds = %380
  %386 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %387 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %386, i32 0, i32 14
  %388 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %387, align 8
  %389 = icmp ne %struct.cmd_ctrl_node* %388, null
  br i1 %389, label %393, label %390

390:                                              ; preds = %385
  %391 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %392 = call i32 @lbs_execute_next_command(%struct.lbs_private* %391)
  br label %393

393:                                              ; preds = %390, %385, %380
  %394 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %395 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %394, i32 0, i32 9
  %396 = call i32 @spin_lock_irq(i32* %395)
  %397 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %398 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %397, i32 0, i32 12
  %399 = load i64, i64* %398, align 8
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %472, label %401

401:                                              ; preds = %393
  %402 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %403 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %402, i32 0, i32 2
  %404 = load i64, i64* %403, align 8
  %405 = icmp sgt i64 %404, 0
  br i1 %405, label %406, label %472

406:                                              ; preds = %401
  %407 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %408 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %407, i32 0, i32 5
  %409 = load i32 (%struct.lbs_private*, i32, i32, i64)*, i32 (%struct.lbs_private*, i32, i32, i64)** %408, align 8
  %410 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %411 = load i32, i32* @MVMS_DAT, align 4
  %412 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %413 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %412, i32 0, i32 13
  %414 = load i32, i32* %413, align 8
  %415 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %416 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %415, i32 0, i32 2
  %417 = load i64, i64* %416, align 8
  %418 = call i32 %409(%struct.lbs_private* %410, i32 %411, i32 %414, i64 %417)
  store i32 %418, i32* %10, align 4
  %419 = load i32, i32* %10, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %427

421:                                              ; preds = %406
  %422 = load i32, i32* %10, align 4
  %423 = call i32 @lbs_deb_tx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %422)
  %424 = load i64, i64* @DNLD_RES_RECEIVED, align 8
  %425 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %426 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %425, i32 0, i32 12
  store i64 %424, i64* %426, align 8
  br label %436

427:                                              ; preds = %406
  %428 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %429 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %428, i32 0, i32 7
  %430 = load i64, i64* @jiffies, align 8
  %431 = load i32, i32* @HZ, align 4
  %432 = mul nsw i32 %431, 5
  %433 = sext i32 %432 to i64
  %434 = add nsw i64 %430, %433
  %435 = call i32 @mod_timer(i32* %429, i64 %434)
  br label %436

436:                                              ; preds = %427, %421
  %437 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %438 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %437, i32 0, i32 2
  store i64 0, i64* %438, align 8
  %439 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %440 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %439, i32 0, i32 0
  %441 = load i64, i64* %440, align 8
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %471, label %443

443:                                              ; preds = %436
  %444 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %445 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %444, i32 0, i32 4
  %446 = load i64, i64* %445, align 8
  %447 = load i64, i64* @LBS_CONNECTED, align 8
  %448 = icmp eq i64 %446, %447
  br i1 %448, label %449, label %454

449:                                              ; preds = %443
  %450 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %451 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %450, i32 0, i32 11
  %452 = load i64, i64* %451, align 8
  %453 = call i32 @netif_wake_queue(i64 %452)
  br label %454

454:                                              ; preds = %449, %443
  %455 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %456 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %455, i32 0, i32 10
  %457 = load i64, i64* %456, align 8
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %459, label %470

459:                                              ; preds = %454
  %460 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %461 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %460, i32 0, i32 10
  %462 = load i64, i64* %461, align 8
  %463 = call i64 @netif_running(i64 %462)
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %470

465:                                              ; preds = %459
  %466 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %467 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %466, i32 0, i32 10
  %468 = load i64, i64* %467, align 8
  %469 = call i32 @netif_wake_queue(i64 %468)
  br label %470

470:                                              ; preds = %465, %459, %454
  br label %471

471:                                              ; preds = %470, %436
  br label %472

472:                                              ; preds = %471, %401, %393
  %473 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %474 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %473, i32 0, i32 9
  %475 = call i32 @spin_unlock_irq(i32* %474)
  br label %18

476:                                              ; preds = %163
  %477 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %478 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %477, i32 0, i32 8
  %479 = call i32 @del_timer(i32* %478)
  %480 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %481 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %480, i32 0, i32 7
  %482 = call i32 @del_timer(i32* %481)
  %483 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %484 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %483, i32 0, i32 6
  %485 = call i32 @del_timer(i32* %484)
  ret i32 0
}

declare dso_local i32 @init_waitqueue_entry(i32*, i32) #1

declare dso_local i32 @lbs_deb_thread(i8*, ...) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @kfifo_len(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @lbs_process_command_response(%struct.lbs_private*, i32, i64) #1

declare dso_local i32 @kfifo_out(i32*, i8*, i32) #1

declare dso_local i32 @lbs_process_event(%struct.lbs_private*, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @lbs_complete_command(%struct.lbs_private*, %struct.cmd_ctrl_node*, i32) #1

declare dso_local i32 @lbs_ps_confirm_sleep(%struct.lbs_private*) #1

declare dso_local i32 @netdev_alert(%struct.net_device*, i8*) #1

declare dso_local i32 @lbs_execute_next_command(%struct.lbs_private*) #1

declare dso_local i32 @lbs_deb_tx(i8*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @netif_wake_queue(i64) #1

declare dso_local i64 @netif_running(i64) #1

declare dso_local i32 @del_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
