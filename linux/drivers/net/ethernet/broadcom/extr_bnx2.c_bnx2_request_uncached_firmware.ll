; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_request_uncached_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_request_uncached_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.bnx2_mips_fw_file = type { i32, i32, i32, i32, i32 }
%struct.bnx2_rv2p_fw_file = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@BNX2_CHIP_5709 = common dso_local global i64 0, align 8
@FW_MIPS_FILE_09 = common dso_local global i8* null, align 8
@BNX2_CHIP_ID_5709_A0 = common dso_local global i64 0, align 8
@BNX2_CHIP_ID_5709_A1 = common dso_local global i64 0, align 8
@FW_RV2P_FILE_09_Ax = common dso_local global i8* null, align 8
@FW_RV2P_FILE_09 = common dso_local global i8* null, align 8
@FW_MIPS_FILE_06 = common dso_local global i8* null, align 8
@FW_RV2P_FILE_06 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Can't load firmware file \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Firmware file \22%s\22 is invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_request_uncached_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_request_uncached_firmware(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bnx2_mips_fw_file*, align 8
  %6 = alloca %struct.bnx2_rv2p_fw_file*, align 8
  %7 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  %8 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %9 = call i64 @BNX2_CHIP(%struct.bnx2* %8)
  %10 = load i64, i64* @BNX2_CHIP_5709, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load i8*, i8** @FW_MIPS_FILE_09, align 8
  store i8* %13, i8** %3, align 8
  %14 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %15 = call i64 @BNX2_CHIP_ID(%struct.bnx2* %14)
  %16 = load i64, i64* @BNX2_CHIP_ID_5709_A0, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %20 = call i64 @BNX2_CHIP_ID(%struct.bnx2* %19)
  %21 = load i64, i64* @BNX2_CHIP_ID_5709_A1, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %12
  %24 = load i8*, i8** @FW_RV2P_FILE_09_Ax, align 8
  store i8* %24, i8** %4, align 8
  br label %27

25:                                               ; preds = %18
  %26 = load i8*, i8** @FW_RV2P_FILE_09, align 8
  store i8* %26, i8** %4, align 8
  br label %27

27:                                               ; preds = %25, %23
  br label %31

28:                                               ; preds = %1
  %29 = load i8*, i8** @FW_MIPS_FILE_06, align 8
  store i8* %29, i8** %3, align 8
  %30 = load i8*, i8** @FW_RV2P_FILE_06, align 8
  store i8* %30, i8** %4, align 8
  br label %31

31:                                               ; preds = %28, %27
  %32 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %33 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %32, i32 0, i32 0
  %34 = load i8*, i8** %3, align 8
  %35 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %36 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %35, i32 0, i32 2
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = call i32 @request_firmware(%struct.TYPE_11__** %33, i8* %34, i32* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %43)
  br label %156

45:                                               ; preds = %31
  %46 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %47 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %46, i32 0, i32 1
  %48 = load i8*, i8** %4, align 8
  %49 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %50 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %49, i32 0, i32 2
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = call i32 @request_firmware(%struct.TYPE_11__** %47, i8* %48, i32* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %57)
  br label %165

59:                                               ; preds = %45
  %60 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %61 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.bnx2_mips_fw_file*
  store %struct.bnx2_mips_fw_file* %65, %struct.bnx2_mips_fw_file** %5, align 8
  %66 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %67 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %66, i32 0, i32 1
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.bnx2_rv2p_fw_file*
  store %struct.bnx2_rv2p_fw_file* %71, %struct.bnx2_rv2p_fw_file** %6, align 8
  %72 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %73 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %72, i32 0, i32 0
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = icmp ult i64 %77, 20
  br i1 %78, label %119, label %79

79:                                               ; preds = %59
  %80 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %81 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %80, i32 0, i32 0
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = load %struct.bnx2_mips_fw_file*, %struct.bnx2_mips_fw_file** %5, align 8
  %84 = getelementptr inbounds %struct.bnx2_mips_fw_file, %struct.bnx2_mips_fw_file* %83, i32 0, i32 4
  %85 = call i64 @check_mips_fw_entry(%struct.TYPE_11__* %82, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %119, label %87

87:                                               ; preds = %79
  %88 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %89 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %88, i32 0, i32 0
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = load %struct.bnx2_mips_fw_file*, %struct.bnx2_mips_fw_file** %5, align 8
  %92 = getelementptr inbounds %struct.bnx2_mips_fw_file, %struct.bnx2_mips_fw_file* %91, i32 0, i32 3
  %93 = call i64 @check_mips_fw_entry(%struct.TYPE_11__* %90, i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %119, label %95

95:                                               ; preds = %87
  %96 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %97 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %96, i32 0, i32 0
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = load %struct.bnx2_mips_fw_file*, %struct.bnx2_mips_fw_file** %5, align 8
  %100 = getelementptr inbounds %struct.bnx2_mips_fw_file, %struct.bnx2_mips_fw_file* %99, i32 0, i32 2
  %101 = call i64 @check_mips_fw_entry(%struct.TYPE_11__* %98, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %119, label %103

103:                                              ; preds = %95
  %104 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %105 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %104, i32 0, i32 0
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = load %struct.bnx2_mips_fw_file*, %struct.bnx2_mips_fw_file** %5, align 8
  %108 = getelementptr inbounds %struct.bnx2_mips_fw_file, %struct.bnx2_mips_fw_file* %107, i32 0, i32 1
  %109 = call i64 @check_mips_fw_entry(%struct.TYPE_11__* %106, i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %103
  %112 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %113 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %112, i32 0, i32 0
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = load %struct.bnx2_mips_fw_file*, %struct.bnx2_mips_fw_file** %5, align 8
  %116 = getelementptr inbounds %struct.bnx2_mips_fw_file, %struct.bnx2_mips_fw_file* %115, i32 0, i32 0
  %117 = call i64 @check_mips_fw_entry(%struct.TYPE_11__* %114, i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %111, %103, %95, %87, %79, %59
  %120 = load i8*, i8** %3, align 8
  %121 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %120)
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %7, align 4
  br label %158

124:                                              ; preds = %111
  %125 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %126 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %125, i32 0, i32 1
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = icmp ult i64 %130, 8
  br i1 %131, label %150, label %132

132:                                              ; preds = %124
  %133 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %134 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %133, i32 0, i32 1
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = load %struct.bnx2_rv2p_fw_file*, %struct.bnx2_rv2p_fw_file** %6, align 8
  %137 = getelementptr inbounds %struct.bnx2_rv2p_fw_file, %struct.bnx2_rv2p_fw_file* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = call i64 @check_fw_section(%struct.TYPE_11__* %135, i32* %138, i32 8, i32 1)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %150, label %141

141:                                              ; preds = %132
  %142 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %143 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %142, i32 0, i32 1
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = load %struct.bnx2_rv2p_fw_file*, %struct.bnx2_rv2p_fw_file** %6, align 8
  %146 = getelementptr inbounds %struct.bnx2_rv2p_fw_file, %struct.bnx2_rv2p_fw_file* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = call i64 @check_fw_section(%struct.TYPE_11__* %144, i32* %147, i32 8, i32 1)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %141, %132, %124
  %151 = load i8*, i8** %4, align 8
  %152 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %151)
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %7, align 4
  br label %158

155:                                              ; preds = %141
  br label %156

156:                                              ; preds = %165, %155, %42
  %157 = load i32, i32* %7, align 4
  ret i32 %157

158:                                              ; preds = %150, %119
  %159 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %160 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %159, i32 0, i32 1
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = call i32 @release_firmware(%struct.TYPE_11__* %161)
  %163 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %164 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %163, i32 0, i32 1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %164, align 8
  br label %165

165:                                              ; preds = %158, %56
  %166 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %167 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %166, i32 0, i32 0
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %167, align 8
  %169 = call i32 @release_firmware(%struct.TYPE_11__* %168)
  br label %156
}

declare dso_local i64 @BNX2_CHIP(%struct.bnx2*) #1

declare dso_local i64 @BNX2_CHIP_ID(%struct.bnx2*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_11__**, i8*, i32*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i64 @check_mips_fw_entry(%struct.TYPE_11__*, i32*) #1

declare dso_local i64 @check_fw_section(%struct.TYPE_11__*, i32*, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
