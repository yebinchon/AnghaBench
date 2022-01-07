; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_firmware.c_brcmf_fw_alloc_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_firmware.c_brcmf_fw_alloc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.brcmf_fw_request = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.brcmf_firmware_mapping = type { i64, i32, i8* }
%struct.brcmf_fw_name = type { i8*, i8* }

@.str = private unnamed_addr constant [17 x i8] c"Unknown chip %s\0A\00", align 1
@items = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"using %s for chip %s\0A\00", align 1
@brcmf_mp_global = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@BRCMF_FW_ALTPATH_LEN = common dso_local global i32 0, align 4
@BRCMF_FW_NAME_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.brcmf_fw_request* @brcmf_fw_alloc_request(i64 %0, i64 %1, %struct.brcmf_firmware_mapping* %2, i64 %3, %struct.brcmf_fw_name* %4, i64 %5) #0 {
  %7 = alloca %struct.brcmf_fw_request*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.brcmf_firmware_mapping*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.brcmf_fw_name*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.brcmf_fw_request*, align 8
  %15 = alloca [12 x i8], align 1
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8, align 1
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.brcmf_firmware_mapping* %2, %struct.brcmf_firmware_mapping** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.brcmf_fw_name* %4, %struct.brcmf_fw_name** %12, align 8
  store i64 %5, i64* %13, align 8
  store i8 0, i8* %20, align 1
  store i64 0, i64* %18, align 8
  br label %21

21:                                               ; preds = %45, %6
  %22 = load i64, i64* %18, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %21
  %26 = load %struct.brcmf_firmware_mapping*, %struct.brcmf_firmware_mapping** %10, align 8
  %27 = load i64, i64* %18, align 8
  %28 = getelementptr inbounds %struct.brcmf_firmware_mapping, %struct.brcmf_firmware_mapping* %26, i64 %27
  %29 = getelementptr inbounds %struct.brcmf_firmware_mapping, %struct.brcmf_firmware_mapping* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %25
  %34 = load %struct.brcmf_firmware_mapping*, %struct.brcmf_firmware_mapping** %10, align 8
  %35 = load i64, i64* %18, align 8
  %36 = getelementptr inbounds %struct.brcmf_firmware_mapping, %struct.brcmf_firmware_mapping* %34, i64 %35
  %37 = getelementptr inbounds %struct.brcmf_firmware_mapping, %struct.brcmf_firmware_mapping* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @BIT(i64 %39)
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %48

44:                                               ; preds = %33, %25
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %18, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %18, align 8
  br label %21

48:                                               ; preds = %43, %21
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds [12 x i8], [12 x i8]* %15, i64 0, i64 0
  %52 = call i32 @brcmf_chip_name(i64 %49, i64 %50, i8* %51, i32 12)
  %53 = load i64, i64* %18, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = getelementptr inbounds [12 x i8], [12 x i8]* %15, i64 0, i64 0
  %58 = call i32 @brcmf_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %57)
  store %struct.brcmf_fw_request* null, %struct.brcmf_fw_request** %7, align 8
  br label %182

59:                                               ; preds = %48
  %60 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %14, align 8
  %61 = load i32, i32* @items, align 4
  %62 = load i64, i64* %13, align 8
  %63 = call i32 @struct_size(%struct.brcmf_fw_request* %60, i32 %61, i64 %62)
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.brcmf_fw_request* @kzalloc(i32 %63, i32 %64)
  store %struct.brcmf_fw_request* %65, %struct.brcmf_fw_request** %14, align 8
  %66 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %14, align 8
  %67 = icmp ne %struct.brcmf_fw_request* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %59
  store %struct.brcmf_fw_request* null, %struct.brcmf_fw_request** %7, align 8
  br label %182

69:                                               ; preds = %59
  %70 = load %struct.brcmf_firmware_mapping*, %struct.brcmf_firmware_mapping** %10, align 8
  %71 = load i64, i64* %18, align 8
  %72 = getelementptr inbounds %struct.brcmf_firmware_mapping, %struct.brcmf_firmware_mapping* %70, i64 %71
  %73 = getelementptr inbounds %struct.brcmf_firmware_mapping, %struct.brcmf_firmware_mapping* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds [12 x i8], [12 x i8]* %15, i64 0, i64 0
  %76 = call i32 @brcmf_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %74, i8* %75)
  %77 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @brcmf_mp_global, i32 0, i32 0), align 8
  store i8* %77, i8** %16, align 8
  %78 = load i8*, i8** %16, align 8
  %79 = load i32, i32* @BRCMF_FW_ALTPATH_LEN, align 4
  %80 = call i64 @strnlen(i8* %78, i32 %79)
  store i64 %80, i64* %17, align 8
  %81 = load i64, i64* %17, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %69
  %84 = load i8*, i8** %16, align 8
  %85 = load i64, i64* %17, align 8
  %86 = sub i64 %85, 1
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  store i8 %88, i8* %20, align 1
  br label %89

89:                                               ; preds = %83, %69
  %90 = load i64, i64* %13, align 8
  %91 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %14, align 8
  %92 = getelementptr inbounds %struct.brcmf_fw_request, %struct.brcmf_fw_request* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  store i64 0, i64* %19, align 8
  br label %93

93:                                               ; preds = %177, %89
  %94 = load i64, i64* %19, align 8
  %95 = load i64, i64* %13, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %180

97:                                               ; preds = %93
  %98 = load %struct.brcmf_fw_name*, %struct.brcmf_fw_name** %12, align 8
  %99 = load i64, i64* %19, align 8
  %100 = getelementptr inbounds %struct.brcmf_fw_name, %struct.brcmf_fw_name* %98, i64 %99
  %101 = getelementptr inbounds %struct.brcmf_fw_name, %struct.brcmf_fw_name* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %14, align 8
  %104 = getelementptr inbounds %struct.brcmf_fw_request, %struct.brcmf_fw_request* %103, i32 0, i32 1
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = load i64, i64* %19, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  store i8* %102, i8** %108, align 8
  %109 = load %struct.brcmf_fw_name*, %struct.brcmf_fw_name** %12, align 8
  %110 = load i64, i64* %19, align 8
  %111 = getelementptr inbounds %struct.brcmf_fw_name, %struct.brcmf_fw_name* %109, i64 %110
  %112 = getelementptr inbounds %struct.brcmf_fw_name, %struct.brcmf_fw_name* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  store i8 0, i8* %114, align 1
  %115 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @brcmf_mp_global, i32 0, i32 0), align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %141

120:                                              ; preds = %97
  %121 = load %struct.brcmf_fw_name*, %struct.brcmf_fw_name** %12, align 8
  %122 = load i64, i64* %19, align 8
  %123 = getelementptr inbounds %struct.brcmf_fw_name, %struct.brcmf_fw_name* %121, i64 %122
  %124 = getelementptr inbounds %struct.brcmf_fw_name, %struct.brcmf_fw_name* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load i8*, i8** %16, align 8
  %127 = load i32, i32* @BRCMF_FW_NAME_LEN, align 4
  %128 = call i32 @strlcpy(i8* %125, i8* %126, i32 %127)
  %129 = load i8, i8* %20, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 47
  br i1 %131, label %132, label %140

132:                                              ; preds = %120
  %133 = load %struct.brcmf_fw_name*, %struct.brcmf_fw_name** %12, align 8
  %134 = load i64, i64* %19, align 8
  %135 = getelementptr inbounds %struct.brcmf_fw_name, %struct.brcmf_fw_name* %133, i64 %134
  %136 = getelementptr inbounds %struct.brcmf_fw_name, %struct.brcmf_fw_name* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load i32, i32* @BRCMF_FW_NAME_LEN, align 4
  %139 = call i32 @strlcat(i8* %137, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %132, %120
  br label %141

141:                                              ; preds = %140, %97
  %142 = load %struct.brcmf_fw_name*, %struct.brcmf_fw_name** %12, align 8
  %143 = load i64, i64* %19, align 8
  %144 = getelementptr inbounds %struct.brcmf_fw_name, %struct.brcmf_fw_name* %142, i64 %143
  %145 = getelementptr inbounds %struct.brcmf_fw_name, %struct.brcmf_fw_name* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.brcmf_firmware_mapping*, %struct.brcmf_firmware_mapping** %10, align 8
  %148 = load i64, i64* %18, align 8
  %149 = getelementptr inbounds %struct.brcmf_firmware_mapping, %struct.brcmf_firmware_mapping* %147, i64 %148
  %150 = getelementptr inbounds %struct.brcmf_firmware_mapping, %struct.brcmf_firmware_mapping* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  %152 = load i32, i32* @BRCMF_FW_NAME_LEN, align 4
  %153 = call i32 @strlcat(i8* %146, i8* %151, i32 %152)
  %154 = load %struct.brcmf_fw_name*, %struct.brcmf_fw_name** %12, align 8
  %155 = load i64, i64* %19, align 8
  %156 = getelementptr inbounds %struct.brcmf_fw_name, %struct.brcmf_fw_name* %154, i64 %155
  %157 = getelementptr inbounds %struct.brcmf_fw_name, %struct.brcmf_fw_name* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.brcmf_fw_name*, %struct.brcmf_fw_name** %12, align 8
  %160 = load i64, i64* %19, align 8
  %161 = getelementptr inbounds %struct.brcmf_fw_name, %struct.brcmf_fw_name* %159, i64 %160
  %162 = getelementptr inbounds %struct.brcmf_fw_name, %struct.brcmf_fw_name* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = load i32, i32* @BRCMF_FW_NAME_LEN, align 4
  %165 = call i32 @strlcat(i8* %158, i8* %163, i32 %164)
  %166 = load %struct.brcmf_fw_name*, %struct.brcmf_fw_name** %12, align 8
  %167 = load i64, i64* %19, align 8
  %168 = getelementptr inbounds %struct.brcmf_fw_name, %struct.brcmf_fw_name* %166, i64 %167
  %169 = getelementptr inbounds %struct.brcmf_fw_name, %struct.brcmf_fw_name* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %14, align 8
  %172 = getelementptr inbounds %struct.brcmf_fw_request, %struct.brcmf_fw_request* %171, i32 0, i32 1
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %172, align 8
  %174 = load i64, i64* %19, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  store i8* %170, i8** %176, align 8
  br label %177

177:                                              ; preds = %141
  %178 = load i64, i64* %19, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %19, align 8
  br label %93

180:                                              ; preds = %93
  %181 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %14, align 8
  store %struct.brcmf_fw_request* %181, %struct.brcmf_fw_request** %7, align 8
  br label %182

182:                                              ; preds = %180, %68, %56
  %183 = load %struct.brcmf_fw_request*, %struct.brcmf_fw_request** %7, align 8
  ret %struct.brcmf_fw_request* %183
}

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @brcmf_chip_name(i64, i64, i8*, i32) #1

declare dso_local i32 @brcmf_err(i8*, i8*) #1

declare dso_local %struct.brcmf_fw_request* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.brcmf_fw_request*, i32, i64) #1

declare dso_local i32 @brcmf_info(i8*, i8*, i8*) #1

declare dso_local i64 @strnlen(i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
