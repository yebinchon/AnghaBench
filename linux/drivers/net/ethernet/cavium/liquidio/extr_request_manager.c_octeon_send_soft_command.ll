; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_request_manager.c_octeon_send_soft_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_request_manager.c_octeon_send_soft_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_5__*, %struct.octeon_instr_queue** }
%struct.TYPE_5__ = type { i32 }
%struct.octeon_instr_queue = type { i32 }
%struct.octeon_soft_command = type { i64, %struct.TYPE_8__, i64, i64, i8**, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i32, i64, i32 }
%struct.TYPE_6__ = type { i64, i32, i64, i32 }
%struct.octeon_instr_ih2 = type { i64 }
%struct.octeon_instr_ih3 = type { i64 }
%struct.octeon_instr_irh = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c"Soft commands are not allowed on Queue %d\0A\00", align 1
@instr_dropped = common dso_local global i32 0, align 4
@IQ_SEND_FAILED = common dso_local global i32 0, align 4
@COMPLETION_WORD_INIT = common dso_local global i8* null, align 8
@jiffies = common dso_local global i64 0, align 8
@LIO_SC_MAX_TMO_MS = common dso_local global i32 0, align 4
@REQTYPE_SOFT_COMMAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octeon_send_soft_command(%struct.octeon_device* %0, %struct.octeon_soft_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca %struct.octeon_soft_command*, align 8
  %6 = alloca %struct.octeon_instr_queue*, align 8
  %7 = alloca %struct.octeon_instr_ih2*, align 8
  %8 = alloca %struct.octeon_instr_ih3*, align 8
  %9 = alloca %struct.octeon_instr_irh*, align 8
  %10 = alloca i64, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store %struct.octeon_soft_command* %1, %struct.octeon_soft_command** %5, align 8
  %11 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %12 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %11, i32 0, i32 1
  %13 = load %struct.octeon_instr_queue**, %struct.octeon_instr_queue*** %12, align 8
  %14 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %15 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %13, i64 %16
  %18 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %17, align 8
  store %struct.octeon_instr_queue* %18, %struct.octeon_instr_queue** %6, align 8
  %19 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %6, align 8
  %20 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %2
  %24 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %25 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %29 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %33 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %34 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @instr_dropped, align 4
  %37 = call i32 @INCR_INSTRQUEUE_PKT_COUNT(%struct.octeon_device* %32, i64 %35, i32 %36, i32 1)
  %38 = load i32, i32* @IQ_SEND_FAILED, align 4
  store i32 %38, i32* %3, align 4
  br label %194

39:                                               ; preds = %2
  %40 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %41 = call i64 @OCTEON_CN23XX_PF(%struct.octeon_device* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %45 = call i64 @OCTEON_CN23XX_VF(%struct.octeon_device* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %112

47:                                               ; preds = %43, %39
  %48 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %49 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = bitcast i32* %51 to %struct.octeon_instr_ih3*
  store %struct.octeon_instr_ih3* %52, %struct.octeon_instr_ih3** %8, align 8
  %53 = load %struct.octeon_instr_ih3*, %struct.octeon_instr_ih3** %8, align 8
  %54 = getelementptr inbounds %struct.octeon_instr_ih3, %struct.octeon_instr_ih3* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %47
  %58 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %59 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @WARN_ON(i32 %63)
  %65 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %66 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %69 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  store i64 %67, i64* %71, align 8
  br label %72

72:                                               ; preds = %57, %47
  %73 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %74 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = bitcast i32* %76 to %struct.octeon_instr_irh*
  store %struct.octeon_instr_irh* %77, %struct.octeon_instr_irh** %9, align 8
  %78 = load %struct.octeon_instr_irh*, %struct.octeon_instr_irh** %9, align 8
  %79 = getelementptr inbounds %struct.octeon_instr_irh, %struct.octeon_instr_irh* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %108

82:                                               ; preds = %72
  %83 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %84 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i32 @WARN_ON(i32 %88)
  %90 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %91 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %90, i32 0, i32 4
  %92 = load i8**, i8*** %91, align 8
  %93 = icmp ne i8** %92, null
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i32 @WARN_ON(i32 %95)
  %97 = load i8*, i8** @COMPLETION_WORD_INIT, align 8
  %98 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %99 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %98, i32 0, i32 4
  %100 = load i8**, i8*** %99, align 8
  store i8* %97, i8** %100, align 8
  %101 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %102 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %105 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i64 %103, i64* %107, align 8
  br label %108

108:                                              ; preds = %82, %72
  %109 = load %struct.octeon_instr_ih3*, %struct.octeon_instr_ih3** %8, align 8
  %110 = getelementptr inbounds %struct.octeon_instr_ih3, %struct.octeon_instr_ih3* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %10, align 8
  br label %177

112:                                              ; preds = %43
  %113 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %114 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 3
  %117 = bitcast i32* %116 to %struct.octeon_instr_ih2*
  store %struct.octeon_instr_ih2* %117, %struct.octeon_instr_ih2** %7, align 8
  %118 = load %struct.octeon_instr_ih2*, %struct.octeon_instr_ih2** %7, align 8
  %119 = getelementptr inbounds %struct.octeon_instr_ih2, %struct.octeon_instr_ih2* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %112
  %123 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %124 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = call i32 @WARN_ON(i32 %128)
  %130 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %131 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %134 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 2
  store i64 %132, i64* %136, align 8
  br label %137

137:                                              ; preds = %122, %112
  %138 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %139 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = bitcast i32* %141 to %struct.octeon_instr_irh*
  store %struct.octeon_instr_irh* %142, %struct.octeon_instr_irh** %9, align 8
  %143 = load %struct.octeon_instr_irh*, %struct.octeon_instr_irh** %9, align 8
  %144 = getelementptr inbounds %struct.octeon_instr_irh, %struct.octeon_instr_irh* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %173

147:                                              ; preds = %137
  %148 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %149 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  %154 = call i32 @WARN_ON(i32 %153)
  %155 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %156 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %155, i32 0, i32 4
  %157 = load i8**, i8*** %156, align 8
  %158 = icmp ne i8** %157, null
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = call i32 @WARN_ON(i32 %160)
  %162 = load i8*, i8** @COMPLETION_WORD_INIT, align 8
  %163 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %164 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %163, i32 0, i32 4
  %165 = load i8**, i8*** %164, align 8
  store i8* %162, i8** %165, align 8
  %166 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %167 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %170 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  store i64 %168, i64* %172, align 8
  br label %173

173:                                              ; preds = %147, %137
  %174 = load %struct.octeon_instr_ih2*, %struct.octeon_instr_ih2** %7, align 8
  %175 = getelementptr inbounds %struct.octeon_instr_ih2, %struct.octeon_instr_ih2* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  store i64 %176, i64* %10, align 8
  br label %177

177:                                              ; preds = %173, %108
  %178 = load i64, i64* @jiffies, align 8
  %179 = load i32, i32* @LIO_SC_MAX_TMO_MS, align 4
  %180 = call i64 @msecs_to_jiffies(i32 %179)
  %181 = add nsw i64 %178, %180
  %182 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %183 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %182, i32 0, i32 2
  store i64 %181, i64* %183, align 8
  %184 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %185 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %186 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %189 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %188, i32 0, i32 1
  %190 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %5, align 8
  %191 = load i64, i64* %10, align 8
  %192 = load i32, i32* @REQTYPE_SOFT_COMMAND, align 4
  %193 = call i32 @octeon_send_command(%struct.octeon_device* %184, i64 %187, i32 1, %struct.TYPE_8__* %189, %struct.octeon_soft_command* %190, i64 %191, i32 %192)
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %177, %23
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @INCR_INSTRQUEUE_PKT_COUNT(%struct.octeon_device*, i64, i32, i32) #1

declare dso_local i64 @OCTEON_CN23XX_PF(%struct.octeon_device*) #1

declare dso_local i64 @OCTEON_CN23XX_VF(%struct.octeon_device*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @octeon_send_command(%struct.octeon_device*, i64, i32, %struct.TYPE_8__*, %struct.octeon_soft_command*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
