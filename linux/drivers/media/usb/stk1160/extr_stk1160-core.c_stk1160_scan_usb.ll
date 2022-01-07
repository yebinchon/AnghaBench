; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-core.c_stk1160_scan_usb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-core.c_stk1160_scan_usb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.usb_device = type { i32, i8*, i8*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"no audio or video endpoints found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"1.5\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"480\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"New device %s %s @ %s Mbps (%04x:%04x, interface %d, class %d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [111 x i8] c"audio interface %d found.\0A\09\09\09\09This is not implemented by this driver,\09\09\09\09you should use snd-usb-audio instead\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"video interface %d found\0A\00", align 1
@.str.9 = private unnamed_addr constant [97 x i8] c"must be connected to a high-speed USB 2.0 port\0A\09\09\09\09You may not be able to stream video smoothly\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device*, i32*)* @stk1160_scan_usb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk1160_scan_usb(%struct.usb_interface* %0, %struct.usb_device* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.usb_endpoint_descriptor*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %5, align 8
  store %struct.usb_device* %1, %struct.usb_device** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %17 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %18 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %96, %3
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %27 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %99

30:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %92, %30
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %34 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %32, %41
  br i1 %42, label %43, label %95

43:                                               ; preds = %31
  %44 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %45 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %55, %struct.usb_endpoint_descriptor** %13, align 8
  %56 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  %57 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le16_to_cpu(i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %60, 2047
  store i32 %61, i32* %11, align 4
  %62 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %63 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 129
  br i1 %65, label %66, label %71

66:                                               ; preds = %43
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @hb_mult(i32 %68)
  %70 = mul nsw i32 %67, %69
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %66, %43
  %72 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  %73 = call i64 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %71
  %76 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  %77 = call i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %75
  %80 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  %81 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  switch i32 %82, label %90 [
    i32 132, label %83
    i32 131, label %84
  ]

83:                                               ; preds = %79
  store i32 1, i32* %15, align 4
  br label %90

84:                                               ; preds = %79
  store i32 1, i32* %14, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %85, i32* %89, align 4
  br label %90

90:                                               ; preds = %79, %84, %83
  br label %91

91:                                               ; preds = %90, %75, %71
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %31

95:                                               ; preds = %31
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %24

99:                                               ; preds = %24
  %100 = load i32, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %102
  %106 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %107 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %106, i32 0, i32 3
  %108 = call i32 @dev_err(i32* %107, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %109 = load i32, i32* @ENODEV, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %4, align 4
  br label %188

111:                                              ; preds = %102, %99
  %112 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %113 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  switch i32 %114, label %118 [
    i32 128, label %115
    i32 130, label %116
    i32 129, label %117
  ]

115:                                              ; preds = %111
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  br label %119

116:                                              ; preds = %111
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  br label %119

117:                                              ; preds = %111
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %16, align 8
  br label %119

118:                                              ; preds = %111
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 8
  br label %119

119:                                              ; preds = %118, %117, %116, %115
  %120 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %121 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %120, i32 0, i32 3
  %122 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %123 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %128 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  br label %131

130:                                              ; preds = %119
  br label %131

131:                                              ; preds = %130, %126
  %132 = phi i8* [ %129, %126 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %130 ]
  %133 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %134 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %139 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %138, i32 0, i32 2
  %140 = load i8*, i8** %139, align 8
  br label %142

141:                                              ; preds = %131
  br label %142

142:                                              ; preds = %141, %137
  %143 = phi i8* [ %140, %137 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %141 ]
  %144 = load i8*, i8** %16, align 8
  %145 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %146 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @le16_to_cpu(i32 %148)
  %150 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %151 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @le16_to_cpu(i32 %153)
  %155 = load i32, i32* %12, align 4
  %156 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %157 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %156, i32 0, i32 1
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 (i32*, i8*, ...) @dev_info(i32* %121, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i8* %132, i8* %143, i8* %144, i32 %149, i32 %154, i32 %155, i32 %161)
  %163 = load i32, i32* %15, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %142
  %166 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %167 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %166, i32 0, i32 3
  %168 = load i32, i32* %12, align 4
  %169 = call i32 (i32*, i8*, ...) @dev_warn(i32* %167, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.7, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %165, %142
  %171 = load i32, i32* %14, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %170
  %174 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %175 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %174, i32 0, i32 3
  %176 = load i32, i32* %12, align 4
  %177 = call i32 (i32*, i8*, ...) @dev_info(i32* %175, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %176)
  br label %178

178:                                              ; preds = %173, %170
  %179 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %180 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 129
  br i1 %182, label %183, label %187

183:                                              ; preds = %178
  %184 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %185 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %184, i32 0, i32 3
  %186 = call i32 (i32*, i8*, ...) @dev_warn(i32* %185, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.9, i64 0, i64 0))
  br label %187

187:                                              ; preds = %183, %178
  store i32 0, i32* %4, align 4
  br label %188

188:                                              ; preds = %187, %105
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @hb_mult(i32) #1

declare dso_local i64 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
