; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ir-kbd-i2c.c_zilog_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ir-kbd-i2c.c_zilog_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.code_block = type { i32 }
%struct.rc_dev = type { %struct.IR_i2c* }
%struct.IR_i2c = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@__const.zilog_tx.code_block = private unnamed_addr constant %struct.code_block { i32 4 }, align 4
@ZILOG_UIR_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"i2c_master_recv failed with %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"code set status: %02x\0A\00", align 1
@ZILOG_STATUS_OK = common dso_local global i32 0, align 4
@ZILOG_STATUS_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"unexpected IR TX response %02x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ZILOG_SEND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"i2c_master_send failed with %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"send command sent\0A\00", align 1
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [55 x i8] c"NAK expected: i2c_master_send failed with %d (try %d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"IR TX chip never got ready: last i2c_master_send failed with %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"unexpected IR TX response #2: %02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"transmit complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32*, i32)* @zilog_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zilog_tx(%struct.rc_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.IR_i2c*, align 8
  %9 = alloca %struct.code_block, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %14 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %13, i32 0, i32 0
  %15 = load %struct.IR_i2c*, %struct.IR_i2c** %14, align 8
  store %struct.IR_i2c* %15, %struct.IR_i2c** %8, align 8
  %16 = bitcast %struct.code_block* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.code_block* @__const.zilog_tx.code_block to i8*), i64 4, i1 false)
  %17 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @zilog_ir_format(%struct.rc_dev* %17, i32* %18, i32 %19, %struct.code_block* %9)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %4, align 4
  br label %198

25:                                               ; preds = %3
  %26 = load %struct.IR_i2c*, %struct.IR_i2c** %8, align 8
  %27 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock_interruptible(i32* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %4, align 4
  br label %198

33:                                               ; preds = %25
  %34 = load %struct.IR_i2c*, %struct.IR_i2c** %8, align 8
  %35 = load i32, i32* @ZILOG_UIR_END, align 4
  %36 = call i32 @send_data_block(%struct.IR_i2c* %34, i32 %35, %struct.code_block* %9)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %193

40:                                               ; preds = %33
  %41 = load %struct.IR_i2c*, %struct.IR_i2c** %8, align 8
  %42 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %45 = call i32 @i2c_master_recv(i32 %43, i32* %44, i32 1)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = load %struct.IR_i2c*, %struct.IR_i2c** %8, align 8
  %50 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %193

55:                                               ; preds = %40
  %56 = load %struct.IR_i2c*, %struct.IR_i2c** %8, align 8
  %57 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ZILOG_STATUS_OK, align 4
  %66 = load i32, i32* @ZILOG_STATUS_SET, align 4
  %67 = or i32 %65, %66
  %68 = icmp ne i32 %64, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %55
  %70 = load %struct.IR_i2c*, %struct.IR_i2c** %8, align 8
  %71 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %11, align 4
  br label %193

79:                                               ; preds = %55
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 0, i32* %80, align 4
  %81 = load i32, i32* @ZILOG_SEND, align 4
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %81, i32* %82, align 4
  %83 = load %struct.IR_i2c*, %struct.IR_i2c** %8, align 8
  %84 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %87 = call i32 @i2c_master_send(i32 %85, i32* %86, i32 2)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 2
  br i1 %89, label %90, label %103

90:                                               ; preds = %79
  %91 = load %struct.IR_i2c*, %struct.IR_i2c** %8, align 8
  %92 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %11, align 4
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  %100 = load i32, i32* @EIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %11, align 4
  br label %102

102:                                              ; preds = %99, %90
  br label %193

103:                                              ; preds = %79
  %104 = load %struct.IR_i2c*, %struct.IR_i2c** %8, align 8
  %105 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %109

109:                                              ; preds = %134, %103
  %110 = load i32, i32* %12, align 4
  %111 = icmp slt i32 %110, 20
  br i1 %111, label %112, label %137

112:                                              ; preds = %109
  %113 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %114 = call i32 @set_current_state(i32 %113)
  %115 = call i32 @msecs_to_jiffies(i32 50)
  %116 = call i32 @schedule_timeout(i32 %115)
  %117 = load %struct.IR_i2c*, %struct.IR_i2c** %8, align 8
  %118 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %121 = call i32 @i2c_master_send(i32 %119, i32* %120, i32 1)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %125

124:                                              ; preds = %112
  br label %137

125:                                              ; preds = %112
  %126 = load %struct.IR_i2c*, %struct.IR_i2c** %8, align 8
  %127 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %126, i32 0, i32 1
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, 1
  %133 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %129, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %130, i32 %132)
  br label %134

134:                                              ; preds = %125
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %12, align 4
  br label %109

137:                                              ; preds = %124, %109
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 1
  br i1 %139, label %140, label %153

140:                                              ; preds = %137
  %141 = load %struct.IR_i2c*, %struct.IR_i2c** %8, align 8
  %142 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %141, i32 0, i32 1
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %11, align 4
  %146 = call i32 @dev_err(i32* %144, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* %11, align 4
  %148 = icmp sge i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %140
  %150 = load i32, i32* @EIO, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %11, align 4
  br label %152

152:                                              ; preds = %149, %140
  br label %193

153:                                              ; preds = %137
  %154 = load %struct.IR_i2c*, %struct.IR_i2c** %8, align 8
  %155 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %158 = call i32 @i2c_master_recv(i32 %156, i32* %157, i32 1)
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* %12, align 4
  %160 = icmp ne i32 %159, 1
  br i1 %160, label %161, label %170

161:                                              ; preds = %153
  %162 = load %struct.IR_i2c*, %struct.IR_i2c** %8, align 8
  %163 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %162, i32 0, i32 1
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @dev_err(i32* %165, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* @EIO, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %11, align 4
  br label %193

170:                                              ; preds = %153
  %171 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @ZILOG_STATUS_OK, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %185

175:                                              ; preds = %170
  %176 = load %struct.IR_i2c*, %struct.IR_i2c** %8, align 8
  %177 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %176, i32 0, i32 1
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @dev_err(i32* %179, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* @EIO, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %11, align 4
  br label %193

185:                                              ; preds = %170
  br label %186

186:                                              ; preds = %185
  %187 = load %struct.IR_i2c*, %struct.IR_i2c** %8, align 8
  %188 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %187, i32 0, i32 1
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  %191 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %190, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %192 = load i32, i32* %7, align 4
  store i32 %192, i32* %11, align 4
  br label %193

193:                                              ; preds = %186, %175, %161, %152, %102, %69, %48, %39
  %194 = load %struct.IR_i2c*, %struct.IR_i2c** %8, align 8
  %195 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %194, i32 0, i32 0
  %196 = call i32 @mutex_unlock(i32* %195)
  %197 = load i32, i32* %11, align 4
  store i32 %197, i32* %4, align 4
  br label %198

198:                                              ; preds = %193, %31, %23
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @zilog_ir_format(%struct.rc_dev*, i32*, i32, %struct.code_block*) #2

declare dso_local i32 @mutex_lock_interruptible(i32*) #2

declare dso_local i32 @send_data_block(%struct.IR_i2c*, i32, %struct.code_block*) #2

declare dso_local i32 @i2c_master_recv(i32, i32*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #2

declare dso_local i32 @i2c_master_send(i32, i32*, i32) #2

declare dso_local i32 @set_current_state(i32) #2

declare dso_local i32 @schedule_timeout(i32) #2

declare dso_local i32 @msecs_to_jiffies(i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
