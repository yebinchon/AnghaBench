; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_core.c_dib0700_streaming_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_core.c_dib0700_streaming_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, %struct.dib0700_state* }
%struct.dib0700_state = type { i32, i32*, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"can not set the USB xfer len\0A\00", align 1
@REQUEST_ENABLE_VIDEO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"modifying (%d) streaming state for %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"the endpoint number (%i) is not correct, use the adapter id instead\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"data for streaming: %x %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dib0700_streaming_ctrl(%struct.dvb_usb_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dib0700_state*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %8, i32 0, i32 1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load %struct.dib0700_state*, %struct.dib0700_state** %11, align 8
  store %struct.dib0700_state* %12, %struct.dib0700_state** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %2
  %16 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %17 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %18, 66049
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %21, i32 0, i32 1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %25 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dib0700_set_usb_xfer_len(%struct.TYPE_9__* %23, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %198

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33, %15, %2
  %35 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %36 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load i32, i32* @REQUEST_ENABLE_VIDEO, align 4
  %41 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %42 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* %5, align 4
  %46 = shl i32 %45, 4
  %47 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %48 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 %46, i32* %50, align 4
  %51 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %52 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %60

55:                                               ; preds = %34
  %56 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %57 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  store i32 0, i32* %59, align 4
  br label %65

60:                                               ; preds = %34
  %61 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %62 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  store i32 16, i32* %64, align 4
  br label %65

65:                                               ; preds = %60, %55
  %66 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %67 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  store i32 0, i32* %69, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %72 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %73)
  %75 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %76 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, -4
  store i32 %78, i32* %76, align 4
  %79 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %80 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %79, i32 0, i32 2
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 2
  br i1 %87, label %88, label %130

88:                                               ; preds = %65
  %89 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %90 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %89, i32 0, i32 2
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 3
  br i1 %97, label %98, label %130

98:                                               ; preds = %88
  %99 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %100 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %99, i32 0, i32 2
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %98
  %111 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %112 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = shl i32 1, %113
  %115 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %116 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  br label %129

119:                                              ; preds = %98
  %120 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %121 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = xor i32 %122, -1
  %124 = shl i32 1, %123
  %125 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %126 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %119, %110
  br label %164

130:                                              ; preds = %88, %65
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %148

133:                                              ; preds = %130
  %134 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %135 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %134, i32 0, i32 2
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %141, 2
  %143 = shl i32 1, %142
  %144 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %145 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %163

148:                                              ; preds = %130
  %149 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %150 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %149, i32 0, i32 2
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i64 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = sub nsw i32 3, %156
  %158 = shl i32 1, %157
  %159 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %160 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %148, %133
  br label %164

164:                                              ; preds = %163, %129
  %165 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %166 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %169 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 2
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %167
  store i32 %173, i32* %171, align 4
  %174 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %175 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %180 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 2
  %183 = load i32, i32* %182, align 4
  %184 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %178, i32 %183)
  %185 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %186 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %185, i32 0, i32 1
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %189 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @dib0700_ctrl_wr(%struct.TYPE_9__* %187, i32* %190, i32 4)
  store i32 %191, i32* %7, align 4
  %192 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %193 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %192, i32 0, i32 1
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = call i32 @mutex_unlock(i32* %195)
  %197 = load i32, i32* %7, align 4
  store i32 %197, i32* %3, align 4
  br label %198

198:                                              ; preds = %164, %30
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32 @dib0700_set_usb_xfer_len(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @deb_info(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dib0700_ctrl_wr(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
