; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx23885_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx23885_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.cx25840_state = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.workqueue_struct = type { i32 }

@wait = common dso_local global i32 0, align 4
@cx25840_work_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"cx25840_fw\00", align 1
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@CX25840_VID_INT_STAT_REG = common dso_local global i32 0, align 4
@CX25840_AUD_INT_CTRL_REG = common dso_local global i32 0, align 4
@CX25840_AUD_INT_STAT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @cx23885_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx23885_initialize(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.cx25840_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.workqueue_struct*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = load i32, i32* @wait, align 4
  %7 = call i32 @DEFINE_WAIT(i32 %6)
  %8 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %9 = call i32 @i2c_get_clientdata(%struct.i2c_client* %8)
  %10 = call %struct.cx25840_state* @to_state(i32 %9)
  store %struct.cx25840_state* %10, %struct.cx25840_state** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %12 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %11, i32 0, i32 6
  %13 = call i64 @v4l2_get_subdev_hostdata(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %17 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %16, i32 0, i32 6
  %18 = call i64 @v4l2_get_subdev_hostdata(i32* %17)
  %19 = inttoptr i64 %18 to i32*
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %23 = call i32 @cx25840_write(%struct.i2c_client* %22, i32 0, i32 0)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %25 = call i32 @cx25840_and_or(%struct.i2c_client* %24, i32 258, i32 -2, i32 1)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %27 = call i32 @cx25840_and_or(%struct.i2c_client* %26, i32 258, i32 -2, i32 0)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %29 = call i32 @cx25840_and_or(%struct.i2c_client* %28, i32 2051, i32 -17, i32 0)
  %30 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %31 = call i32 @cx25840_write(%struct.i2c_client* %30, i32 920, i32 0)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %33 = call i32 @cx25840_write(%struct.i2c_client* %32, i32 2, i32 118)
  %34 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %35 = call i32 @cx25840_write(%struct.i2c_client* %34, i32 1, i32 64)
  %36 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %37 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %63 [
    i32 128, label %39
    i32 129, label %57
    i32 130, label %62
  ]

39:                                               ; preds = %21
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 25000000
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %46

43:                                               ; preds = %39
  %44 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %45 = call i32 @cx25840_write(%struct.i2c_client* %44, i32 2, i32 113)
  br label %46

46:                                               ; preds = %43, %42
  %47 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %48 = call i32 @cx25840_write4(%struct.i2c_client* %47, i32 284, i32 30504012)
  %49 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %50 = call i32 @cx25840_write4(%struct.i2c_client* %49, i32 280, i32 1046)
  %51 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %52 = call i32 @cx25840_write4(%struct.i2c_client* %51, i32 1028, i32 1058110)
  %53 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %54 = call i32 @cx25840_write4(%struct.i2c_client* %53, i32 1068, i32 1113587712)
  %55 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %56 = call i32 @cx25840_write4(%struct.i2c_client* %55, i32 1100, i32 371134464)
  br label %68

57:                                               ; preds = %21
  %58 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %59 = call i32 @cx25840_write4(%struct.i2c_client* %58, i32 284, i32 30504012)
  %60 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %61 = call i32 @cx25840_write4(%struct.i2c_client* %60, i32 280, i32 1046)
  br label %68

62:                                               ; preds = %21
  br label %63

63:                                               ; preds = %21, %62
  %64 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %65 = call i32 @cx25840_write4(%struct.i2c_client* %64, i32 284, i32 0)
  %66 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %67 = call i32 @cx25840_write4(%struct.i2c_client* %66, i32 280, i32 1044)
  br label %68

68:                                               ; preds = %63, %57, %46
  %69 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %70 = call i32 @cx25840_write4(%struct.i2c_client* %69, i32 828, i32 1)
  %71 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %72 = call i32 @cx25840_write4(%struct.i2c_client* %71, i32 832, i32 234348419)
  %73 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %74 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  switch i32 %75, label %90 [
    i32 128, label %76
  ]

76:                                               ; preds = %68
  %77 = load i32, i32* %4, align 4
  %78 = icmp eq i32 %77, 25000000
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %81 = call i32 @cx25840_write4(%struct.i2c_client* %80, i32 268, i32 28760955)
  %82 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %83 = call i32 @cx25840_write4(%struct.i2c_client* %82, i32 264, i32 1298)
  br label %89

84:                                               ; preds = %76
  %85 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %86 = call i32 @cx25840_write4(%struct.i2c_client* %85, i32 268, i32 322122547)
  %87 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %88 = call i32 @cx25840_write4(%struct.i2c_client* %87, i32 264, i32 1301)
  br label %89

89:                                               ; preds = %84, %79
  br label %95

90:                                               ; preds = %68
  %91 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %92 = call i32 @cx25840_write4(%struct.i2c_client* %91, i32 268, i32 2876105)
  %93 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %94 = call i32 @cx25840_write4(%struct.i2c_client* %93, i32 264, i32 1039)
  br label %95

95:                                               ; preds = %90, %89
  %96 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %97 = call i32 @cx25840_write4(%struct.i2c_client* %96, i32 1044, i32 1080594)
  %98 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %99 = call i64 @is_cx23888(%struct.cx25840_state* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %103 = call i32 @cx25840_write4(%struct.i2c_client* %102, i32 1048, i32 486572674)
  br label %107

104:                                              ; preds = %95
  %105 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %106 = call i32 @cx25840_write4(%struct.i2c_client* %105, i32 1056, i32 1023443586)
  br label %107

107:                                              ; preds = %104, %101
  %108 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %109 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  switch i32 %110, label %122 [
    i32 128, label %111
    i32 129, label %116
    i32 130, label %121
  ]

111:                                              ; preds = %107
  %112 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %113 = call i32 @cx25840_write4(%struct.i2c_client* %112, i32 276, i32 25018184)
  %114 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %115 = call i32 @cx25840_write4(%struct.i2c_client* %114, i32 272, i32 656142)
  br label %127

116:                                              ; preds = %107
  %117 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %118 = call i32 @cx25840_write4(%struct.i2c_client* %117, i32 276, i32 25018184)
  %119 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %120 = call i32 @cx25840_write4(%struct.i2c_client* %119, i32 272, i32 656142)
  br label %127

121:                                              ; preds = %107
  br label %122

122:                                              ; preds = %107, %121
  %123 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %124 = call i32 @cx25840_write4(%struct.i2c_client* %123, i32 276, i32 29297822)
  %125 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %126 = call i32 @cx25840_write4(%struct.i2c_client* %125, i32 272, i32 656140)
  br label %127

127:                                              ; preds = %122, %116, %111
  %128 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %129 = call i32 @cx25840_write(%struct.i2c_client* %128, i32 258, i32 16)
  %130 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %131 = call i32 @cx25840_write(%struct.i2c_client* %130, i32 259, i32 17)
  %132 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %133 = call i32 @cx25840_write(%struct.i2c_client* %132, i32 1024, i32 0)
  %134 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %135 = call i32 @cx25840_write(%struct.i2c_client* %134, i32 1025, i32 232)
  %136 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %137 = call i32 @cx25840_write(%struct.i2c_client* %136, i32 324, i32 5)
  %138 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %139 = call i32 @cx25840_write(%struct.i2c_client* %138, i32 352, i32 29)
  %140 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %141 = call i32 @cx25840_write(%struct.i2c_client* %140, i32 356, i32 0)
  %142 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %143 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %142, i32 0, i32 5
  %144 = load i32, i32* @cx25840_work_handler, align 4
  %145 = call i32 @INIT_WORK(i32* %143, i32 %144)
  %146 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %147 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %146, i32 0, i32 4
  %148 = call i32 @init_waitqueue_head(i32* %147)
  %149 = call %struct.workqueue_struct* @create_singlethread_workqueue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.workqueue_struct* %149, %struct.workqueue_struct** %5, align 8
  %150 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %151 = icmp ne %struct.workqueue_struct* %150, null
  br i1 %151, label %152, label %167

152:                                              ; preds = %127
  %153 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %154 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %153, i32 0, i32 4
  %155 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %156 = call i32 @prepare_to_wait(i32* %154, i32* @wait, i32 %155)
  %157 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %158 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %159 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %158, i32 0, i32 5
  %160 = call i32 @queue_work(%struct.workqueue_struct* %157, i32* %159)
  %161 = call i32 (...) @schedule()
  %162 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %163 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %162, i32 0, i32 4
  %164 = call i32 @finish_wait(i32* %163, i32* @wait)
  %165 = load %struct.workqueue_struct*, %struct.workqueue_struct** %5, align 8
  %166 = call i32 @destroy_workqueue(%struct.workqueue_struct* %165)
  br label %167

167:                                              ; preds = %152, %127
  %168 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %169 = call i64 @is_cx23888(%struct.cx25840_state* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %173 = call i32 @cx23888_std_setup(%struct.i2c_client* %172)
  br label %177

174:                                              ; preds = %167
  %175 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %176 = call i32 @cx25840_std_setup(%struct.i2c_client* %175)
  br label %177

177:                                              ; preds = %174, %171
  %178 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %179 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %180 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %183 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @set_input(%struct.i2c_client* %178, i32 %181, i32 %184)
  %186 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %187 = call i32 @cx25840_and_or(%struct.i2c_client* %186, i32 2051, i32 -17, i32 16)
  %188 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %189 = load i32, i32* @CX25840_VID_INT_STAT_REG, align 4
  %190 = call i32 @cx25840_write4(%struct.i2c_client* %188, i32 %189, i32 -1)
  %191 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %192 = load i32, i32* @CX25840_AUD_INT_CTRL_REG, align 4
  %193 = call i32 @cx25840_write(%struct.i2c_client* %191, i32 %192, i32 255)
  %194 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %195 = load i32, i32* @CX25840_AUD_INT_STAT_REG, align 4
  %196 = call i32 @cx25840_write(%struct.i2c_client* %194, i32 %195, i32 255)
  %197 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %198 = call i32 @cx25840_write4(%struct.i2c_client* %197, i32 1028, i32 1058110)
  %199 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %200 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %201 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, 1071
  %204 = call i32 @cx25840_write(%struct.i2c_client* %199, i32 %203, i32 102)
  %205 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %206 = call i32 @cx25840_write4(%struct.i2c_client* %205, i32 304, i32 0)
  %207 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %208 = call i64 @is_cx23888(%struct.cx25840_state* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %177
  %211 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %212 = call i32 @cx25840_write4(%struct.i2c_client* %211, i32 1108, i32 1713898015)
  br label %216

213:                                              ; preds = %177
  %214 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %215 = call i32 @cx25840_write4(%struct.i2c_client* %214, i32 1144, i32 1713898015)
  br label %216

216:                                              ; preds = %213, %210
  %217 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %218 = call i32 @cx25840_write4(%struct.i2c_client* %217, i32 324, i32 5)
  %219 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %220 = call i32 @cx25840_write4(%struct.i2c_client* %219, i32 2328, i32 416)
  %221 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %222 = call i32 @cx25840_write4(%struct.i2c_client* %221, i32 308, i32 661504)
  %223 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %224 = call i32 @cx25840_write4(%struct.i2c_client* %223, i32 316, i32 3211264)
  ret void
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local %struct.cx25840_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @v4l2_get_subdev_hostdata(i32*) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @cx25840_and_or(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @cx25840_write4(%struct.i2c_client*, i32, i32) #1

declare dso_local i64 @is_cx23888(%struct.cx25840_state*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local %struct.workqueue_struct* @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @queue_work(%struct.workqueue_struct*, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @destroy_workqueue(%struct.workqueue_struct*) #1

declare dso_local i32 @cx23888_std_setup(%struct.i2c_client*) #1

declare dso_local i32 @cx25840_std_setup(%struct.i2c_client*) #1

declare dso_local i32 @set_input(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
