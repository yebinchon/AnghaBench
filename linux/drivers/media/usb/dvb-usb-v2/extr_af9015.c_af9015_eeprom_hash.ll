; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9015.c_af9015_eeprom_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9015.c_af9015_eeprom_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.usb_interface* }
%struct.usb_interface = type { i32 }
%struct.af9015_state = type { i32 }
%struct.req_t = type { i32, i32, i32, i32*, i32*, i32, i32, i32, i32 }

@AF9015_EEPROM_SIZE = common dso_local global i32 0, align 4
@READ_I2C = common dso_local global i32 0, align 4
@AF9015_I2C_EEPROM = common dso_local global i32 0, align 4
@GOLDEN_RATIO_PRIME_32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%*ph\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"eeprom sum %.8x\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*)* @af9015_eeprom_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9015_eeprom_hash(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca %struct.af9015_state*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.req_t, align 8
  %11 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  %12 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %13 = call %struct.af9015_state* @d_to_priv(%struct.dvb_usb_device* %12)
  store %struct.af9015_state* %13, %struct.af9015_state** %4, align 8
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %14, i32 0, i32 0
  %16 = load %struct.usb_interface*, %struct.usb_interface** %15, align 8
  store %struct.usb_interface* %16, %struct.usb_interface** %5, align 8
  %17 = load i32, i32* @AF9015_EEPROM_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 0
  %22 = load i32, i32* @READ_I2C, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 1
  %24 = load i32, i32* @AF9015_I2C_EEPROM, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 2
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 3
  store i32* null, i32** %26, align 8
  %27 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 4
  store i32* inttoptr (i64 1 to i32*), i32** %27, align 8
  %28 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 5
  store i32 1, i32* %28, align 8
  %29 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 6
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 7
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 8
  store i32 0, i32* %31, align 4
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %49, %1
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @AF9015_EEPROM_SIZE, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 2
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %20, i64 %40
  %42 = getelementptr inbounds %struct.req_t, %struct.req_t* %10, i32 0, i32 3
  store i32* %41, i32** %42, align 8
  %43 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %44 = call i32 @af9015_ctrl_msg(%struct.dvb_usb_device* %43, %struct.req_t* %10)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %102

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %32

52:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %77, %52
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = load i32, i32* @AF9015_EEPROM_SIZE, align 4
  %57 = sext i32 %56 to i64
  %58 = udiv i64 %57, 4
  %59 = icmp ult i64 %55, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %53
  %61 = load i32, i32* @GOLDEN_RATIO_PRIME_32, align 4
  %62 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %63 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %20, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @le32_to_cpu(i32 %69)
  %71 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %72 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %70
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 4
  br label %77

77:                                               ; preds = %60
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %53

80:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %92, %80
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @AF9015_EEPROM_SIZE, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  %86 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %87 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %86, i32 0, i32 0
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %20, i64 %89
  %91 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 16, i32* %90)
  br label %92

92:                                               ; preds = %85
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 16
  store i32 %94, i32* %7, align 4
  br label %81

95:                                               ; preds = %81
  %96 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %97 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %96, i32 0, i32 0
  %98 = load %struct.af9015_state*, %struct.af9015_state** %4, align 8
  %99 = getelementptr inbounds %struct.af9015_state, %struct.af9015_state* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %97, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %108

102:                                              ; preds = %47
  %103 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %104 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %103, i32 0, i32 0
  %105 = load i32, i32* %6, align 4
  %106 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %108

108:                                              ; preds = %102, %95
  %109 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.af9015_state* @d_to_priv(%struct.dvb_usb_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @af9015_ctrl_msg(%struct.dvb_usb_device*, %struct.req_t*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
