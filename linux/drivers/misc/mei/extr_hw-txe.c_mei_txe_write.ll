; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.mei_txe_hw = type { i64, i32 }
%struct.mei_msg_hdr = type { i32 }

@TXE_HBUF_DEPTH = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MEI_HDR_FMT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"txe write: aliveness not asserted\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@MEI_FW_STATUS_STR_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Input is not ready %s\0A\00", align 1
@MEI_SLOT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*, i8*, i64, i8*, i64)* @mei_txe_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_txe_write(%struct.mei_device* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mei_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mei_txe_hw*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.mei_device* %0, %struct.mei_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %22 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %23 = call %struct.mei_txe_hw* @to_txe_hw(%struct.mei_device* %22)
  store %struct.mei_txe_hw* %23, %struct.mei_txe_hw** %12, align 8
  %24 = load i64, i64* @TXE_HBUF_DEPTH, align 8
  store i64 %24, i64* %15, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %5
  %28 = load i8*, i8** %10, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i64, i64* %9, align 8
  %32 = and i64 %31, 3
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %30, %27, %5
  %35 = phi i1 [ true, %27 ], [ true, %5 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @WARN_ON(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %162

42:                                               ; preds = %34
  %43 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %44 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MEI_HDR_FMT, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = bitcast i8* %47 to %struct.mei_msg_hdr*
  %49 = call i32 @MEI_HDR_PRM(%struct.mei_msg_hdr* %48)
  %50 = call i32 @dev_dbg(i32 %45, i32 %46, i32 %49)
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %11, align 8
  %53 = add i64 %51, %52
  %54 = call i64 @mei_data2slots(i64 %53)
  store i64 %54, i64* %16, align 8
  %55 = load i64, i64* %16, align 8
  %56 = load i64, i64* %15, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %42
  %59 = load i32, i32* @EMSGSIZE, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %162

61:                                               ; preds = %42
  %62 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %12, align 8
  %63 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i64 @WARN(i32 %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load i32, i32* @EAGAIN, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %162

73:                                               ; preds = %61
  %74 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %75 = call i32 @mei_txe_input_ready_interrupt_enable(%struct.mei_device* %74)
  %76 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %77 = call i32 @mei_txe_is_input_ready(%struct.mei_device* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %94, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* @MEI_FW_STATUS_STR_SZ, align 4
  %81 = zext i32 %80 to i64
  %82 = call i8* @llvm.stacksave()
  store i8* %82, i8** %19, align 8
  %83 = alloca i8, i64 %81, align 16
  store i64 %81, i64* %20, align 8
  %84 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %85 = load i32, i32* @MEI_FW_STATUS_STR_SZ, align 4
  %86 = call i32 @mei_fw_status_str(%struct.mei_device* %84, i8* %83, i32 %85)
  %87 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %88 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_err(i32 %89, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %83)
  %91 = load i32, i32* @EAGAIN, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  %93 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %93)
  br label %162

94:                                               ; preds = %73
  %95 = load i8*, i8** %8, align 8
  %96 = bitcast i8* %95 to i64*
  store i64* %96, i64** %14, align 8
  store i64 0, i64* %17, align 8
  br label %97

97:                                               ; preds = %111, %94
  %98 = load i64, i64* %17, align 8
  %99 = load i64, i64* %9, align 8
  %100 = load i64, i64* @MEI_SLOT_SIZE, align 8
  %101 = udiv i64 %99, %100
  %102 = icmp ult i64 %98, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %97
  %104 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %105 = load i64, i64* %17, align 8
  %106 = load i64*, i64** %14, align 8
  %107 = load i64, i64* %17, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @mei_txe_input_payload_write(%struct.mei_device* %104, i64 %105, i64 %109)
  br label %111

111:                                              ; preds = %103
  %112 = load i64, i64* %17, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %17, align 8
  br label %97

114:                                              ; preds = %97
  %115 = load i8*, i8** %10, align 8
  %116 = bitcast i8* %115 to i64*
  store i64* %116, i64** %14, align 8
  store i64 0, i64* %18, align 8
  br label %117

117:                                              ; preds = %133, %114
  %118 = load i64, i64* %18, align 8
  %119 = load i64, i64* %11, align 8
  %120 = load i64, i64* @MEI_SLOT_SIZE, align 8
  %121 = udiv i64 %119, %120
  %122 = icmp ult i64 %118, %121
  br i1 %122, label %123, label %136

123:                                              ; preds = %117
  %124 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %125 = load i64, i64* %17, align 8
  %126 = load i64, i64* %18, align 8
  %127 = add i64 %125, %126
  %128 = load i64*, i64** %14, align 8
  %129 = load i64, i64* %18, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @mei_txe_input_payload_write(%struct.mei_device* %124, i64 %127, i64 %131)
  br label %133

133:                                              ; preds = %123
  %134 = load i64, i64* %18, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %18, align 8
  br label %117

136:                                              ; preds = %117
  %137 = load i64, i64* %11, align 8
  %138 = and i64 %137, 3
  store i64 %138, i64* %13, align 8
  %139 = load i64, i64* %13, align 8
  %140 = icmp ugt i64 %139, 0
  br i1 %140, label %141, label %157

141:                                              ; preds = %136
  store i64 0, i64* %21, align 8
  %142 = load i8*, i8** %10, align 8
  %143 = bitcast i8* %142 to i32*
  %144 = load i64, i64* %11, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i64, i64* %13, align 8
  %147 = sub i64 0, %146
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i64, i64* %13, align 8
  %150 = call i32 @memcpy(i64* %21, i32* %148, i64 %149)
  %151 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %152 = load i64, i64* %17, align 8
  %153 = load i64, i64* %18, align 8
  %154 = add i64 %152, %153
  %155 = load i64, i64* %21, align 8
  %156 = call i32 @mei_txe_input_payload_write(%struct.mei_device* %151, i64 %154, i64 %155)
  br label %157

157:                                              ; preds = %141, %136
  %158 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %12, align 8
  %159 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %158, i32 0, i32 0
  store i64 0, i64* %159, align 8
  %160 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %12, align 8
  %161 = call i32 @mei_txe_input_doorbell_set(%struct.mei_txe_hw* %160)
  store i32 0, i32* %6, align 4
  br label %162

162:                                              ; preds = %157, %79, %70, %58, %39
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

declare dso_local %struct.mei_txe_hw* @to_txe_hw(%struct.mei_device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_dbg(i32, i32, i32) #1

declare dso_local i32 @MEI_HDR_PRM(%struct.mei_msg_hdr*) #1

declare dso_local i64 @mei_data2slots(i64) #1

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @mei_txe_input_ready_interrupt_enable(%struct.mei_device*) #1

declare dso_local i32 @mei_txe_is_input_ready(%struct.mei_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mei_fw_status_str(%struct.mei_device*, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @mei_txe_input_payload_write(%struct.mei_device*, i64, i64) #1

declare dso_local i32 @memcpy(i64*, i32*, i64) #1

declare dso_local i32 @mei_txe_input_doorbell_set(%struct.mei_txe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
