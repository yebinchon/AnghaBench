; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005.c_af9005_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005.c_af9005_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, %struct.af9005_device_state* }
%struct.af9005_device_state = type { i32*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Read eeprom, invalid reply code\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Read eeprom, invalid reply length\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Read eeprom, wrong sequence in reply \00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Read eeprom, wrong status in reply \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @af9005_read_eeprom(%struct.dvb_usb_device* %0, i8* %1, i8** %2, i32 %3) #0 {
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.af9005_device_state*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %14 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %13, i32 0, i32 1
  %15 = load %struct.af9005_device_state*, %struct.af9005_device_state** %14, align 8
  store %struct.af9005_device_state* %15, %struct.af9005_device_state** %9, align 8
  %16 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %17 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.af9005_device_state*, %struct.af9005_device_state** %9, align 8
  %20 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @memset(i32* %21, i32 0, i32 8)
  %23 = load %struct.af9005_device_state*, %struct.af9005_device_state** %9, align 8
  %24 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 14, i32* %26, align 4
  %27 = load %struct.af9005_device_state*, %struct.af9005_device_state** %9, align 8
  %28 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 0, i32* %30, align 4
  %31 = load %struct.af9005_device_state*, %struct.af9005_device_state** %9, align 8
  %32 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  store i32 42, i32* %34, align 4
  %35 = load %struct.af9005_device_state*, %struct.af9005_device_state** %9, align 8
  %36 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  store i32 12, i32* %38, align 4
  %39 = load %struct.af9005_device_state*, %struct.af9005_device_state** %9, align 8
  %40 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = sext i32 %41 to i64
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %10, align 8
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.af9005_device_state*, %struct.af9005_device_state** %9, align 8
  %47 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  store i32 %45, i32* %49, align 4
  %50 = load %struct.af9005_device_state*, %struct.af9005_device_state** %9, align 8
  %51 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 5
  store i32 0, i32* %53, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.af9005_device_state*, %struct.af9005_device_state** %9, align 8
  %56 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 6
  store i32 %54, i32* %58, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.af9005_device_state*, %struct.af9005_device_state** %9, align 8
  %62 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 7
  store i32 %60, i32* %64, align 4
  %65 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %66 = load %struct.af9005_device_state*, %struct.af9005_device_state** %9, align 8
  %67 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.af9005_device_state*, %struct.af9005_device_state** %9, align 8
  %70 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @dvb_usb_generic_rw(%struct.dvb_usb_device* %65, i32* %68, i32 16, i32* %71, i32 14, i32 0)
  store i32 %72, i32* %11, align 4
  %73 = load %struct.af9005_device_state*, %struct.af9005_device_state** %9, align 8
  %74 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 43
  br i1 %78, label %79, label %83

79:                                               ; preds = %4
  %80 = call i32 @err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %11, align 4
  br label %122

83:                                               ; preds = %4
  %84 = load %struct.af9005_device_state*, %struct.af9005_device_state** %9, align 8
  %85 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 10
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = call i32 @err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @EIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %11, align 4
  br label %121

94:                                               ; preds = %83
  %95 = load %struct.af9005_device_state*, %struct.af9005_device_state** %9, align 8
  %96 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 4
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = load i8*, i8** %10, align 8
  %103 = icmp ne i8* %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %94
  %105 = call i32 @err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %11, align 4
  br label %120

108:                                              ; preds = %94
  %109 = load %struct.af9005_device_state*, %struct.af9005_device_state** %9, align 8
  %110 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 5
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 1
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = call i32 @err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %117 = load i32, i32* @EIO, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %115, %108
  br label %120

120:                                              ; preds = %119, %104
  br label %121

121:                                              ; preds = %120, %90
  br label %122

122:                                              ; preds = %121, %79
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %149, label %125

125:                                              ; preds = %122
  store i32 0, i32* %12, align 4
  br label %126

126:                                              ; preds = %145, %125
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %148

130:                                              ; preds = %126
  %131 = load %struct.af9005_device_state*, %struct.af9005_device_state** %9, align 8
  %132 = getelementptr inbounds %struct.af9005_device_state, %struct.af9005_device_state* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 6, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = inttoptr i64 %139 to i8*
  %141 = load i8**, i8*** %7, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  store i8* %140, i8** %144, align 8
  br label %145

145:                                              ; preds = %130
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %12, align 4
  br label %126

148:                                              ; preds = %126
  br label %149

149:                                              ; preds = %148, %122
  %150 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %151 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %150, i32 0, i32 0
  %152 = call i32 @mutex_unlock(i32* %151)
  %153 = load i32, i32* %11, align 4
  ret i32 %153
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @dvb_usb_generic_rw(%struct.dvb_usb_device*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
