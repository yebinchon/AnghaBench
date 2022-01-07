; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pulse8-cec/extr_pulse8-cec.c_pulse8_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pulse8-cec/extr_pulse8-cec.c_pulse8_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.pulse8 = type { i32, i32, i64, i32*, i32*, i64, i32, i32, i32, %struct.cec_msg }
%struct.cec_msg = type { i32, i32* }

@MSGSTART = common dso_local global i8 0, align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@MSGESC = common dso_local global i8 0, align 1
@MSGOFFSET = common dso_local global i64 0, align 8
@MSGEND = common dso_local global i8 0, align 1
@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"received: %*ph\0A\00", align 1
@CEC_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@MSGCODE_FRAME_EOM = common dso_local global i32 0, align 4
@DATA_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"throwing away %d bytes of garbage\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8, i32)* @pulse8_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pulse8_interrupt(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.serio*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.pulse8*, align 8
  %9 = alloca %struct.cec_msg*, align 8
  store %struct.serio* %0, %struct.serio** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  %10 = load %struct.serio*, %struct.serio** %5, align 8
  %11 = call %struct.pulse8* @serio_get_drvdata(%struct.serio* %10)
  store %struct.pulse8* %11, %struct.pulse8** %8, align 8
  %12 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %13 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %3
  %17 = load i8, i8* %6, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* @MSGSTART, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %23, i32* %4, align 4
  br label %211

24:                                               ; preds = %16, %3
  %25 = load i8, i8* %6, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @MSGESC, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %32 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %33, i32* %4, align 4
  br label %211

34:                                               ; preds = %24
  %35 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %36 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i64, i64* @MSGOFFSET, align 8
  %41 = load i8, i8* %6, align 1
  %42 = zext i8 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i8
  store i8 %44, i8* %6, align 1
  %45 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %46 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  br label %183

47:                                               ; preds = %34
  %48 = load i8, i8* %6, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* @MSGEND, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %169

53:                                               ; preds = %47
  %54 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %55 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %54, i32 0, i32 9
  store %struct.cec_msg* %55, %struct.cec_msg** %9, align 8
  %56 = load i64, i64* @debug, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %60 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %63 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %66 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @dev_info(i32 %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %64, i32* %67)
  br label %69

69:                                               ; preds = %58, %53
  %70 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %71 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %76 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %74, i32* %78, align 4
  %79 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %80 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 63
  switch i32 %84, label %138 [
    i32 137, label %85
    i32 138, label %97
    i32 128, label %132
    i32 131, label %132
    i32 132, label %132
    i32 130, label %132
    i32 129, label %132
    i32 136, label %136
    i32 135, label %136
    i32 134, label %136
    i32 133, label %136
    i32 140, label %137
    i32 139, label %137
  ]

85:                                               ; preds = %69
  %86 = load %struct.cec_msg*, %struct.cec_msg** %9, align 8
  %87 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %89 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.cec_msg*, %struct.cec_msg** %9, align 8
  %94 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 %92, i32* %96, align 4
  br label %163

97:                                               ; preds = %69
  %98 = load %struct.cec_msg*, %struct.cec_msg** %9, align 8
  %99 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @CEC_MAX_MSG_SIZE, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %163

104:                                              ; preds = %97
  %105 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %106 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.cec_msg*, %struct.cec_msg** %9, align 8
  %111 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.cec_msg*, %struct.cec_msg** %9, align 8
  %114 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %112, i64 %117
  store i32 %109, i32* %118, align 4
  %119 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %120 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @MSGCODE_FRAME_EOM, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %104
  %128 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %129 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %128, i32 0, i32 8
  %130 = call i32 @schedule_work(i32* %129)
  br label %131

131:                                              ; preds = %127, %104
  br label %163

132:                                              ; preds = %69, %69, %69, %69, %69
  %133 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %134 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %133, i32 0, i32 8
  %135 = call i32 @schedule_work(i32* %134)
  br label %163

136:                                              ; preds = %69, %69, %69, %69
  br label %163

137:                                              ; preds = %69, %69
  br label %138

138:                                              ; preds = %69, %137
  %139 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %140 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %163

144:                                              ; preds = %138
  %145 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %146 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %145, i32 0, i32 4
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %149 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %152 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @memcpy(i32* %147, i32* %150, i64 %153)
  %155 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %156 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %159 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %158, i32 0, i32 5
  store i64 %157, i64* %159, align 8
  %160 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %161 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %160, i32 0, i32 7
  %162 = call i32 @complete(i32* %161)
  br label %163

163:                                              ; preds = %144, %143, %136, %132, %131, %103, %85
  %164 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %165 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %164, i32 0, i32 2
  store i64 0, i64* %165, align 8
  %166 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %167 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %166, i32 0, i32 0
  store i32 0, i32* %167, align 8
  %168 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %168, i32* %4, align 4
  br label %211

169:                                              ; preds = %47
  %170 = load i8, i8* %6, align 1
  %171 = zext i8 %170 to i32
  %172 = load i8, i8* @MSGSTART, align 1
  %173 = zext i8 %172 to i32
  %174 = icmp eq i32 %171, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %169
  %176 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %177 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %176, i32 0, i32 2
  store i64 0, i64* %177, align 8
  %178 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %179 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %178, i32 0, i32 0
  store i32 1, i32* %179, align 8
  %180 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %180, i32* %4, align 4
  br label %211

181:                                              ; preds = %169
  br label %182

182:                                              ; preds = %181
  br label %183

183:                                              ; preds = %182, %39
  %184 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %185 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @DATA_SIZE, align 8
  %188 = icmp sge i64 %186, %187
  br i1 %188, label %189, label %199

189:                                              ; preds = %183
  %190 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %191 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %194 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @dev_dbg(i32 %192, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %195)
  %197 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %198 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %197, i32 0, i32 2
  store i64 0, i64* %198, align 8
  br label %199

199:                                              ; preds = %189, %183
  %200 = load i8, i8* %6, align 1
  %201 = zext i8 %200 to i32
  %202 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %203 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %202, i32 0, i32 3
  %204 = load i32*, i32** %203, align 8
  %205 = load %struct.pulse8*, %struct.pulse8** %8, align 8
  %206 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = add nsw i64 %207, 1
  store i64 %208, i64* %206, align 8
  %209 = getelementptr inbounds i32, i32* %204, i64 %207
  store i32 %201, i32* %209, align 4
  %210 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %199, %175, %163, %30, %22
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local %struct.pulse8* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @dev_info(i32, i8*, i64, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
