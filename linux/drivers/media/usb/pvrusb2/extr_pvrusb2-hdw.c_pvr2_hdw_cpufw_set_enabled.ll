; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_cpufw_set_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_cpufw_set_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i32, i64, i32, i32 }

@PVR2_TRACE_FIRMWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Cleaning up after CPU firmware fetch\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Preparing to suck out CPU firmware (size=%u)\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Grabbing CPU firmware\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Done grabbing CPU firmware\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Sucking down EEPROM contents\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"EEPROM content suck failed.\00", align 1
@EEPROM_SIZE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"Done sucking down EEPROM contents\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pvr2_hdw_cpufw_set_enabled(%struct.pvr2_hdw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pvr2_hdw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %11 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @LOCK_TAKE(i32 %12)
  br label %14

14:                                               ; preds = %3
  %15 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %16 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = icmp eq i8* %18, null
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = icmp eq i32 %20, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %148

27:                                               ; preds = %14
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @PVR2_TRACE_FIRMWARE, align 4
  %32 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %34 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = call i32 @kfree(i32* %36)
  %38 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %39 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %41 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %43 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %30
  %47 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %48 = call i32 @pvr2_hdw_cpureset_assert(%struct.pvr2_hdw* %47, i32 0)
  br label %49

49:                                               ; preds = %46, %30
  br label %148

50:                                               ; preds = %27
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 2
  %53 = zext i1 %52 to i32
  %54 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %55 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %57 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %126

60:                                               ; preds = %50
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, 1
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 16384, i32 8192
  %65 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %66 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @PVR2_TRACE_FIRMWARE, align 4
  %68 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %69 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %67, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %73 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i32* @kzalloc(i32 %74, i32 %75)
  %77 = ptrtoint i32* %76 to i64
  %78 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %79 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  %80 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %81 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %60
  %85 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %86 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  br label %148

87:                                               ; preds = %60
  %88 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %89 = call i32 @pvr2_hdw_cpureset_assert(%struct.pvr2_hdw* %88, i32 1)
  %90 = load i32, i32* @PVR2_TRACE_FIRMWARE, align 4
  %91 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %90, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %92 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %93 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @usb_rcvctrlpipe(i32 %94, i32 0)
  store i32 %95, i32* %9, align 4
  store i64 0, i64* %8, align 8
  br label %96

96:                                               ; preds = %120, %87
  %97 = load i64, i64* %8, align 8
  %98 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %99 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = icmp slt i64 %97, %101
  br i1 %102, label %103, label %123

103:                                              ; preds = %96
  %104 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %105 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i64, i64* %8, align 8
  %109 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %110 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %8, align 8
  %113 = add nsw i64 %111, %112
  %114 = load i32, i32* @HZ, align 4
  %115 = call i32 @usb_control_msg(i32 %106, i32 %107, i32 160, i32 192, i64 %108, i32 0, i64 %113, i32 2048, i32 %114)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %103
  br label %123

119:                                              ; preds = %103
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %8, align 8
  %122 = add nsw i64 %121, 2048
  store i64 %122, i64* %8, align 8
  br label %96

123:                                              ; preds = %118, %96
  %124 = load i32, i32* @PVR2_TRACE_FIRMWARE, align 4
  %125 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %124, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %147

126:                                              ; preds = %50
  %127 = load i32, i32* @PVR2_TRACE_FIRMWARE, align 4
  %128 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %127, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %129 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %130 = call i64 @pvr2_full_eeprom_fetch(%struct.pvr2_hdw* %129)
  %131 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %132 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %131, i32 0, i32 2
  store i64 %130, i64* %132, align 8
  %133 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %134 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %126
  %138 = load i32, i32* @PVR2_TRACE_FIRMWARE, align 4
  %139 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %138, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %148

140:                                              ; preds = %126
  %141 = load i64, i64* @EEPROM_SIZE, align 8
  %142 = trunc i64 %141 to i32
  %143 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %144 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* @PVR2_TRACE_FIRMWARE, align 4
  %146 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %145, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %147

147:                                              ; preds = %140, %123
  br label %148

148:                                              ; preds = %147, %137, %84, %49, %26
  %149 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %4, align 8
  %150 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @LOCK_GIVE(i32 %151)
  ret void
}

declare dso_local i32 @LOCK_TAKE(i32) #1

declare dso_local i32 @pvr2_trace(i32, i8*, ...) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @pvr2_hdw_cpureset_assert(%struct.pvr2_hdw*, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i64, i32, i64, i32, i32) #1

declare dso_local i64 @pvr2_full_eeprom_fetch(%struct.pvr2_hdw*) #1

declare dso_local i32 @LOCK_GIVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
