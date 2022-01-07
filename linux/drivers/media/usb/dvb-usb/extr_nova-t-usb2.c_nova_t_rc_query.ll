; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_nova-t-usb2.c_nova_t_rc_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_nova-t-usb2.c_nova_t_rc_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.dvb_usb_device = type { %struct.dibusb_device_state* }
%struct.dibusb_device_state = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DIBUSB_REQ_POLL_REMOTE = common dso_local global i32 0, align 4
@REMOTE_NO_KEY_PRESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"raw key code 0x%02x, 0x%02x, 0x%02x to c: %02x d: %02x toggle: %d\0A\00", align 1
@rc_map_haupp_table = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"c: %x, d: %x\0A\00", align 1
@REMOTE_KEY_PRESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32*, i32*)* @nova_t_rc_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nova_t_rc_query(%struct.dvb_usb_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dibusb_device_state*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %17 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %16, i32 0, i32 0
  %18 = load %struct.dibusb_device_state*, %struct.dibusb_device_state** %17, align 8
  store %struct.dibusb_device_state* %18, %struct.dibusb_device_state** %15, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32* @kmalloc(i32 5, i32 %19)
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %155

26:                                               ; preds = %3
  %27 = load i32, i32* @DIBUSB_REQ_POLL_REMOTE, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %27, i32* %29, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 53, i32* %31, align 4
  %32 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @dvb_usb_generic_rw(%struct.dvb_usb_device* %32, i32* %33, i32 2, i32* %34, i32 5, i32 0)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %151

39:                                               ; preds = %26
  %40 = load i32, i32* @REMOTE_NO_KEY_PRESSED, align 4
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %149 [
    i32 128, label %45
    i32 129, label %148
  ]

45:                                               ; preds = %39
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 8
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %49, %52
  %54 = ashr i32 %53, 3
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = and i32 %55, 2048
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %12, align 4
  %62 = and i32 %61, 63
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %12, align 4
  %64 = ashr i32 %63, 6
  %65 = and i32 %64, 31
  store i32 %65, i32* %11, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 (i8*, i32, i32, ...) @deb_rc(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %71, i32 %74, i32 %75, i32 %76, i32 %77)
  store i32 0, i32* %13, align 4
  br label %79

79:                                               ; preds = %144, %45
  %80 = load i32, i32* %13, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rc_map_haupp_table, align 8
  %82 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %81)
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %147

84:                                               ; preds = %79
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rc_map_haupp_table, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %87
  %89 = call i32 @rc5_data(%struct.TYPE_5__* %88)
  %90 = load i32, i32* %9, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %143

92:                                               ; preds = %84
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rc_map_haupp_table, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %95
  %97 = call i32 @rc5_custom(%struct.TYPE_5__* %96)
  %98 = load i32, i32* %11, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %143

100:                                              ; preds = %92
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rc_map_haupp_table, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %103
  %105 = call i32 @rc5_data(%struct.TYPE_5__* %104)
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rc_map_haupp_table, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 %108
  %110 = call i32 @rc5_custom(%struct.TYPE_5__* %109)
  %111 = call i32 (i8*, i32, i32, ...) @deb_rc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %105, i32 %110)
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rc_map_haupp_table, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %6, align 8
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* @REMOTE_KEY_PRESSED, align 4
  %120 = load i32*, i32** %7, align 8
  store i32 %119, i32* %120, align 4
  %121 = load %struct.dibusb_device_state*, %struct.dibusb_device_state** %15, align 8
  %122 = getelementptr inbounds %struct.dibusb_device_state, %struct.dibusb_device_state* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %100
  %127 = load %struct.dibusb_device_state*, %struct.dibusb_device_state** %15, align 8
  %128 = getelementptr inbounds %struct.dibusb_device_state, %struct.dibusb_device_state* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  %131 = icmp slt i32 %129, 2
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load i32, i32* @REMOTE_NO_KEY_PRESSED, align 4
  %134 = load i32*, i32** %7, align 8
  store i32 %133, i32* %134, align 4
  br label %135

135:                                              ; preds = %132, %126
  br label %142

136:                                              ; preds = %100
  %137 = load %struct.dibusb_device_state*, %struct.dibusb_device_state** %15, align 8
  %138 = getelementptr inbounds %struct.dibusb_device_state, %struct.dibusb_device_state* %137, i32 0, i32 1
  store i32 0, i32* %138, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load %struct.dibusb_device_state*, %struct.dibusb_device_state** %15, align 8
  %141 = getelementptr inbounds %struct.dibusb_device_state, %struct.dibusb_device_state* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 4
  br label %142

142:                                              ; preds = %136, %135
  br label %147

143:                                              ; preds = %92, %84
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %13, align 4
  br label %79

147:                                              ; preds = %142, %79
  br label %150

148:                                              ; preds = %39
  br label %149

149:                                              ; preds = %39, %148
  br label %150

150:                                              ; preds = %149, %147
  br label %151

151:                                              ; preds = %150, %38
  %152 = load i32*, i32** %8, align 8
  %153 = call i32 @kfree(i32* %152)
  %154 = load i32, i32* %14, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %151, %23
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @dvb_usb_generic_rw(%struct.dvb_usb_device*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @deb_rc(i8*, i32, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @rc5_data(%struct.TYPE_5__*) #1

declare dso_local i32 @rc5_custom(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
