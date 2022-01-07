; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-imon-decoder.c_ir_imon_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-imon-decoder.c_ir_imon_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.imon_dec }
%struct.imon_dec = type { i32, i32, i32, i32 }
%struct.ir_raw_event = type { i64, i32, i64 }

@.str = private unnamed_addr constant [52 x i8] c"iMON decode started at state %d bitno %d (%uus %s)\0A\00", align 1
@STATE_ERROR = common dso_local global i32 0, align 4
@IMON_UNIT = common dso_local global i32 0, align 4
@IMON_BITS = common dso_local global i32 0, align 4
@IMON_CHKBITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"iMON decode failed at state %d bitno %d (%uus %s)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, %struct.ir_raw_event*)* @ir_imon_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_imon_decode(%struct.rc_dev* %0, %struct.ir_raw_event* byval(%struct.ir_raw_event) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca %struct.imon_dec*, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  %6 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %7 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.imon_dec* %9, %struct.imon_dec** %5, align 8
  %10 = call i32 @is_timing_event(%struct.ir_raw_event* byval(%struct.ir_raw_event) align 8 %1)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.imon_dec*, %struct.imon_dec** %5, align 8
  %18 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %17, i32 0, i32 0
  store i32 128, i32* %18, align 4
  br label %19

19:                                               ; preds = %16, %12
  store i32 0, i32* %3, align 4
  br label %185

20:                                               ; preds = %2
  %21 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %22 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %21, i32 0, i32 0
  %23 = load %struct.imon_dec*, %struct.imon_dec** %5, align 8
  %24 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.imon_dec*, %struct.imon_dec** %5, align 8
  %27 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @TO_US(i64 %30)
  %32 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @TO_STR(i32 %33)
  %35 = call i32 @dev_dbg(i32* %22, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i32 %31, i32 %34)
  %36 = load %struct.imon_dec*, %struct.imon_dec** %5, align 8
  %37 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @STATE_ERROR, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %20
  %42 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @MS_TO_NS(i32 10)
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.imon_dec*, %struct.imon_dec** %5, align 8
  %52 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %51, i32 0, i32 0
  store i32 128, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %45, %41
  store i32 0, i32* %3, align 4
  br label %185

54:                                               ; preds = %20
  br label %55

55:                                               ; preds = %163, %54
  %56 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @IMON_UNIT, align 4
  %59 = load i32, i32* @IMON_UNIT, align 4
  %60 = sdiv i32 %59, 2
  %61 = call i32 @geq_margin(i64 %57, i32 %58, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %185

64:                                               ; preds = %55
  %65 = load i32, i32* @IMON_UNIT, align 4
  %66 = call i32 @decrease_duration(%struct.ir_raw_event* %1, i32 %65)
  %67 = load %struct.imon_dec*, %struct.imon_dec** %5, align 8
  %68 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %163 [
    i32 128, label %70
    i32 131, label %83
    i32 130, label %105
    i32 129, label %153
  ]

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load %struct.imon_dec*, %struct.imon_dec** %5, align 8
  %76 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %75, i32 0, i32 0
  store i32 131, i32* %76, align 4
  %77 = load %struct.imon_dec*, %struct.imon_dec** %5, align 8
  %78 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  %79 = load i32, i32* @IMON_BITS, align 4
  %80 = load %struct.imon_dec*, %struct.imon_dec** %5, align 8
  %81 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %74, %70
  br label %163

83:                                               ; preds = %64
  %84 = load i32, i32* @IMON_CHKBITS, align 4
  %85 = load %struct.imon_dec*, %struct.imon_dec** %5, align 8
  %86 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @BIT(i32 %87)
  %89 = and i32 %84, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.imon_dec*, %struct.imon_dec** %5, align 8
  %95 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  br label %102

96:                                               ; preds = %83
  %97 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %164

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101, %91
  %103 = load %struct.imon_dec*, %struct.imon_dec** %5, align 8
  %104 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %103, i32 0, i32 0
  store i32 130, i32* %104, align 4
  br label %163

105:                                              ; preds = %64
  %106 = load %struct.imon_dec*, %struct.imon_dec** %5, align 8
  %107 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %105
  %114 = load %struct.imon_dec*, %struct.imon_dec** %5, align 8
  %115 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, 1
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %113, %105
  %119 = load i32, i32* @IMON_CHKBITS, align 4
  %120 = load %struct.imon_dec*, %struct.imon_dec** %5, align 8
  %121 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @BIT(i32 %122)
  %124 = and i32 %119, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %118
  %127 = load %struct.imon_dec*, %struct.imon_dec** %5, align 8
  %128 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.imon_dec*, %struct.imon_dec** %5, align 8
  %131 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 3
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = icmp ne i32 %129, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %126
  br label %164

139:                                              ; preds = %126
  br label %140

140:                                              ; preds = %139, %118
  %141 = load %struct.imon_dec*, %struct.imon_dec** %5, align 8
  %142 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %142, align 4
  %145 = icmp ne i32 %143, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %140
  %147 = load %struct.imon_dec*, %struct.imon_dec** %5, align 8
  %148 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %147, i32 0, i32 0
  store i32 129, i32* %148, align 4
  br label %152

149:                                              ; preds = %140
  %150 = load %struct.imon_dec*, %struct.imon_dec** %5, align 8
  %151 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %150, i32 0, i32 0
  store i32 131, i32* %151, align 4
  br label %152

152:                                              ; preds = %149, %146
  br label %163

153:                                              ; preds = %64
  %154 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  br label %164

158:                                              ; preds = %153
  %159 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %160 = call i32 @ir_imon_decode_scancode(%struct.rc_dev* %159)
  %161 = load %struct.imon_dec*, %struct.imon_dec** %5, align 8
  %162 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %161, i32 0, i32 0
  store i32 128, i32* %162, align 4
  br label %163

163:                                              ; preds = %64, %158, %152, %102, %82
  br label %55

164:                                              ; preds = %157, %138, %100
  %165 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %166 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %165, i32 0, i32 0
  %167 = load %struct.imon_dec*, %struct.imon_dec** %5, align 8
  %168 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.imon_dec*, %struct.imon_dec** %5, align 8
  %171 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @TO_US(i64 %174)
  %176 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %1, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @TO_STR(i32 %177)
  %179 = call i32 @dev_dbg(i32* %166, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %169, i32 %172, i32 %175, i32 %178)
  %180 = load i32, i32* @STATE_ERROR, align 4
  %181 = load %struct.imon_dec*, %struct.imon_dec** %5, align 8
  %182 = getelementptr inbounds %struct.imon_dec, %struct.imon_dec* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* @EINVAL, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %3, align 4
  br label %185

185:                                              ; preds = %164, %63, %53, %19
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i32 @is_timing_event(%struct.ir_raw_event* byval(%struct.ir_raw_event) align 8) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @TO_US(i64) #1

declare dso_local i32 @TO_STR(i32) #1

declare dso_local i64 @MS_TO_NS(i32) #1

declare dso_local i32 @geq_margin(i64, i32, i32) #1

declare dso_local i32 @decrease_duration(%struct.ir_raw_event*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ir_imon_decode_scancode(%struct.rc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
