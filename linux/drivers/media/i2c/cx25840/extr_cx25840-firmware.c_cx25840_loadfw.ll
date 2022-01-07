; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-firmware.c_cx25840_loadfw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-firmware.c_cx25840_loadfw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.cx25840_state = type { i32 }
%struct.firmware = type { i32, i32* }

@FWSEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unable to open firmware %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25840_loadfw(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.cx25840_state*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = call i32 @i2c_get_clientdata(%struct.i2c_client* %17)
  %19 = call %struct.cx25840_state* @to_state(i32 %18)
  store %struct.cx25840_state* %19, %struct.cx25840_state** %4, align 8
  store %struct.firmware* null, %struct.firmware** %5, align 8
  %20 = load i32, i32* @FWSEND, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %6, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %25 = call i8* @get_fw_name(%struct.i2c_client* %24)
  store i8* %25, i8** %9, align 8
  %26 = load i32, i32* @FWSEND, align 4
  store i32 %26, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %27 = load %struct.cx25840_state*, %struct.cx25840_state** %4, align 8
  %28 = call i64 @is_cx2388x(%struct.cx25840_state* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %32 = call i32 @cx25840_read(%struct.i2c_client* %31, i32 352)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %34 = call i32 @cx25840_read(%struct.i2c_client* %33, i32 356)
  store i32 %34, i32* %14, align 4
  br label %35

35:                                               ; preds = %30, %1
  %36 = load %struct.cx25840_state*, %struct.cx25840_state** %4, align 8
  %37 = call i64 @is_cx231xx(%struct.cx25840_state* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %12, align 4
  %41 = icmp sgt i32 %40, 16
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 16, i32* %12, align 4
  br label %43

43:                                               ; preds = %42, %39, %35
  %44 = load i8*, i8** %9, align 8
  %45 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %46 = call i32 @FWDEV(%struct.i2c_client* %45)
  %47 = call i64 @request_firmware(%struct.firmware** %5, i8* %44, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @v4l_err(%struct.i2c_client* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %118

55:                                               ; preds = %43
  %56 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %57 = call i32 @start_fw_load(%struct.i2c_client* %56)
  %58 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 8, i32* %58, align 16
  %59 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 2, i32* %59, align 4
  %60 = load %struct.firmware*, %struct.firmware** %5, align 8
  %61 = getelementptr inbounds %struct.firmware, %struct.firmware* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %10, align 4
  %63 = load %struct.firmware*, %struct.firmware** %5, align 8
  %64 = getelementptr inbounds %struct.firmware, %struct.firmware* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %8, align 8
  br label %66

66:                                               ; preds = %88, %55
  %67 = load i32, i32* %10, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %96

69:                                               ; preds = %66
  %70 = load i32, i32* %12, align 4
  %71 = sub nsw i32 %70, 2
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @min(i32 %71, i32 %72)
  store i32 %73, i32* %16, align 4
  %74 = getelementptr inbounds i32, i32* %23, i64 2
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @memcpy(i32* %74, i32* %75, i32 %76)
  %78 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %79 = load i32, i32* %16, align 4
  %80 = add nsw i32 %79, 2
  %81 = call i32 @fw_write(%struct.i2c_client* %78, i32* %23, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %69
  %85 = load %struct.firmware*, %struct.firmware** %5, align 8
  %86 = call i32 @release_firmware(%struct.firmware* %85)
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %118

88:                                               ; preds = %69
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %10, align 4
  %91 = sub nsw i32 %90, %89
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32* %95, i32** %8, align 8
  br label %66

96:                                               ; preds = %66
  %97 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %98 = call i32 @end_fw_load(%struct.i2c_client* %97)
  %99 = load %struct.firmware*, %struct.firmware** %5, align 8
  %100 = getelementptr inbounds %struct.firmware, %struct.firmware* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %10, align 4
  %102 = load %struct.firmware*, %struct.firmware** %5, align 8
  %103 = call i32 @release_firmware(%struct.firmware* %102)
  %104 = load %struct.cx25840_state*, %struct.cx25840_state** %4, align 8
  %105 = call i64 @is_cx2388x(%struct.cx25840_state* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %96
  %108 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @cx25840_write(%struct.i2c_client* %108, i32 352, i32 %109)
  %111 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @cx25840_write(%struct.i2c_client* %111, i32 356, i32 %112)
  br label %114

114:                                              ; preds = %107, %96
  %115 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @check_fw_load(%struct.i2c_client* %115, i32 %116)
  store i32 %117, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %118

118:                                              ; preds = %114, %84, %49
  %119 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %119)
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.cx25840_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @get_fw_name(%struct.i2c_client*) #1

declare dso_local i64 @is_cx2388x(%struct.cx25840_state*) #1

declare dso_local i32 @cx25840_read(%struct.i2c_client*, i32) #1

declare dso_local i64 @is_cx231xx(%struct.cx25840_state*) #1

declare dso_local i64 @request_firmware(%struct.firmware**, i8*, i32) #1

declare dso_local i32 @FWDEV(%struct.i2c_client*) #1

declare dso_local i32 @v4l_err(%struct.i2c_client*, i8*, i8*) #1

declare dso_local i32 @start_fw_load(%struct.i2c_client*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @fw_write(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @end_fw_load(%struct.i2c_client*) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @check_fw_load(%struct.i2c_client*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
