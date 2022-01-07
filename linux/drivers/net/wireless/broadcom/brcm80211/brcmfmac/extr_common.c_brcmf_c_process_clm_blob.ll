; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_common.c_brcmf_c_process_clm_blob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_common.c_brcmf_c_process_clm_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { %struct.brcmf_bus* }
%struct.brcmf_bus = type { i32 }
%struct.brcmf_dload_data_le = type { i32 }
%struct.firmware = type { i64, i64 }

@BRCMF_FW_NAME_LEN = common dso_local global i32 0, align 4
@DL_BEGIN = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c".clm_blob\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"get CLM blob file name failed (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"no clm_blob available (err=%d), device may have limited channels available\0A\00", align 1
@MAX_CHUNK_LEN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DL_END = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"clmload (%zu byte file) failed (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"clmload_status\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"get clmload_status failed (%d)\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"clmload_status=%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_if*)* @brcmf_c_process_clm_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_c_process_clm_blob(%struct.brcmf_if* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmf_if*, align 8
  %4 = alloca %struct.brcmf_pub*, align 8
  %5 = alloca %struct.brcmf_bus*, align 8
  %6 = alloca %struct.brcmf_dload_data_le*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %3, align 8
  %17 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %18 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %17, i32 0, i32 0
  %19 = load %struct.brcmf_pub*, %struct.brcmf_pub** %18, align 8
  store %struct.brcmf_pub* %19, %struct.brcmf_pub** %4, align 8
  %20 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %21 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %20, i32 0, i32 0
  %22 = load %struct.brcmf_bus*, %struct.brcmf_bus** %21, align 8
  store %struct.brcmf_bus* %22, %struct.brcmf_bus** %5, align 8
  store %struct.firmware* null, %struct.firmware** %7, align 8
  %23 = load i32, i32* @BRCMF_FW_NAME_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %8, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %27 = load i32, i32* @DL_BEGIN, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* @TRACE, align 4
  %29 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %30 = mul nuw i64 4, %24
  %31 = trunc i64 %30 to i32
  %32 = call i32 @memset(i32* %26, i32 0, i32 %31)
  %33 = load %struct.brcmf_bus*, %struct.brcmf_bus** %5, align 8
  %34 = call i32 @brcmf_bus_get_fwname(%struct.brcmf_bus* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %26)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %1
  %38 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %39 = load i32, i32* %15, align 4
  %40 = call i32 (%struct.brcmf_pub*, i8*, i32, ...) @bphy_err(%struct.brcmf_pub* %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %145

42:                                               ; preds = %1
  %43 = load %struct.brcmf_bus*, %struct.brcmf_bus** %5, align 8
  %44 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @firmware_request_nowarn(%struct.firmware** %7, i32* %26, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @brcmf_info(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %145

52:                                               ; preds = %42
  %53 = load i64, i64* @MAX_CHUNK_LEN, align 8
  %54 = add i64 4, %53
  %55 = sub i64 %54, 1
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.brcmf_dload_data_le* @kzalloc(i64 %55, i32 %56)
  store %struct.brcmf_dload_data_le* %57, %struct.brcmf_dload_data_le** %6, align 8
  %58 = load %struct.brcmf_dload_data_le*, %struct.brcmf_dload_data_le** %6, align 8
  %59 = icmp ne %struct.brcmf_dload_data_le* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %52
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %15, align 4
  br label %141

63:                                               ; preds = %52
  %64 = load %struct.firmware*, %struct.firmware** %7, align 8
  %65 = getelementptr inbounds %struct.firmware, %struct.firmware* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %67

67:                                               ; preds = %110, %63
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* @MAX_CHUNK_LEN, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i64, i64* @MAX_CHUNK_LEN, align 8
  store i64 %72, i64* %10, align 8
  br label %78

73:                                               ; preds = %67
  %74 = load i64, i64* %11, align 8
  store i64 %74, i64* %10, align 8
  %75 = load i32, i32* @DL_END, align 4
  %76 = load i32, i32* %13, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %73, %71
  %79 = load %struct.brcmf_dload_data_le*, %struct.brcmf_dload_data_le** %6, align 8
  %80 = getelementptr inbounds %struct.brcmf_dload_data_le, %struct.brcmf_dload_data_le* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.firmware*, %struct.firmware** %7, align 8
  %83 = getelementptr inbounds %struct.firmware, %struct.firmware* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %12, align 8
  %86 = add nsw i64 %84, %85
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @memcpy(i32 %81, i64 %86, i64 %87)
  %89 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.brcmf_dload_data_le*, %struct.brcmf_dload_data_le** %6, align 8
  %92 = load i64, i64* %10, align 8
  %93 = call i32 @brcmf_c_download(%struct.brcmf_if* %89, i32 %90, %struct.brcmf_dload_data_le* %91, i64 %92)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* @DL_BEGIN, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %13, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %13, align 4
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %12, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* %12, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* %11, align 8
  %103 = sub nsw i64 %102, %101
  store i64 %103, i64* %11, align 8
  br label %104

104:                                              ; preds = %78
  %105 = load i64, i64* %11, align 8
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* %15, align 4
  %109 = icmp eq i32 %108, 0
  br label %110

110:                                              ; preds = %107, %104
  %111 = phi i1 [ false, %104 ], [ %109, %107 ]
  br i1 %111, label %67, label %112

112:                                              ; preds = %110
  %113 = load i32, i32* %15, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %138

115:                                              ; preds = %112
  %116 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %117 = load %struct.firmware*, %struct.firmware** %7, align 8
  %118 = getelementptr inbounds %struct.firmware, %struct.firmware* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = load i32, i32* %15, align 4
  %122 = call i32 (%struct.brcmf_pub*, i8*, i32, ...) @bphy_err(%struct.brcmf_pub* %116, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %120, i32 %121)
  %123 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %124 = call i32 @brcmf_fil_iovar_int_get(%struct.brcmf_if* %123, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i64* %14)
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %15, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %115
  %128 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %129 = load i32, i32* %15, align 4
  %130 = call i32 (%struct.brcmf_pub*, i8*, i32, ...) @bphy_err(%struct.brcmf_pub* %128, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %129)
  br label %135

131:                                              ; preds = %115
  %132 = load i32, i32* @INFO, align 4
  %133 = load i64, i64* %14, align 8
  %134 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %132, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i64 %133)
  br label %135

135:                                              ; preds = %131, %127
  %136 = load i32, i32* @EIO, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %15, align 4
  br label %138

138:                                              ; preds = %135, %112
  %139 = load %struct.brcmf_dload_data_le*, %struct.brcmf_dload_data_le** %6, align 8
  %140 = call i32 @kfree(%struct.brcmf_dload_data_le* %139)
  br label %141

141:                                              ; preds = %138, %60
  %142 = load %struct.firmware*, %struct.firmware** %7, align 8
  %143 = call i32 @release_firmware(%struct.firmware* %142)
  %144 = load i32, i32* %15, align 4
  store i32 %144, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %145

145:                                              ; preds = %141, %49, %37
  %146 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %146)
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @brcmf_bus_get_fwname(%struct.brcmf_bus*, i8*, i32*) #2

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32, ...) #2

declare dso_local i32 @firmware_request_nowarn(%struct.firmware**, i32*, i32) #2

declare dso_local i32 @brcmf_info(i8*, i32) #2

declare dso_local %struct.brcmf_dload_data_le* @kzalloc(i64, i32) #2

declare dso_local i32 @memcpy(i32, i64, i64) #2

declare dso_local i32 @brcmf_c_download(%struct.brcmf_if*, i32, %struct.brcmf_dload_data_le*, i64) #2

declare dso_local i32 @brcmf_fil_iovar_int_get(%struct.brcmf_if*, i8*, i64*) #2

declare dso_local i32 @kfree(%struct.brcmf_dload_data_le*) #2

declare dso_local i32 @release_firmware(%struct.firmware*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
