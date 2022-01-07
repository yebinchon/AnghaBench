; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_download_fw_nvram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_download_fw_nvram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pciedev_info = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.firmware = type { i64, i64 }
%struct.brcmf_bus = type { i32 }

@PCIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Halt ARM.\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Download FW %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Download NVRAM %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"No matching NVRAM file found %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Bring ARM in running state\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Wait for FW init\0A\00", align 1
@BRCMF_PCIE_FW_UP_TIMEOUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"FW failed to initialize\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"Invalid shared RAM address 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Shared RAM addr: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_pciedev_info*, %struct.firmware*, i8*, i64)* @brcmf_pcie_download_fw_nvram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_pcie_download_fw_nvram(%struct.brcmf_pciedev_info* %0, %struct.firmware* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcmf_pciedev_info*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.brcmf_bus*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.brcmf_pciedev_info* %0, %struct.brcmf_pciedev_info** %6, align 8
  store %struct.firmware* %1, %struct.firmware** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %18 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %17, i32 0, i32 3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call %struct.brcmf_bus* @dev_get_drvdata(i32* %20)
  store %struct.brcmf_bus* %21, %struct.brcmf_bus** %10, align 8
  %22 = load i32, i32* @PCIE, align 4
  %23 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %25 = call i32 @brcmf_pcie_enter_download_state(%struct.brcmf_pciedev_info* %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %5, align 4
  br label %188

30:                                               ; preds = %4
  %31 = load i32, i32* @PCIE, align 4
  %32 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %33 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %37 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %38 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.firmware*, %struct.firmware** %7, align 8
  %43 = getelementptr inbounds %struct.firmware, %struct.firmware* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.firmware*, %struct.firmware** %7, align 8
  %47 = getelementptr inbounds %struct.firmware, %struct.firmware* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @brcmf_pcie_copy_mem_todev(%struct.brcmf_pciedev_info* %36, i64 %41, i8* %45, i64 %48)
  %50 = load %struct.firmware*, %struct.firmware** %7, align 8
  %51 = getelementptr inbounds %struct.firmware, %struct.firmware* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @get_unaligned_le32(i64 %52)
  store i64 %53, i64* %16, align 8
  %54 = load %struct.firmware*, %struct.firmware** %7, align 8
  %55 = call i32 @release_firmware(%struct.firmware* %54)
  %56 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %57 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %58 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %61, 4
  %63 = call i32 @brcmf_pcie_write_ram32(%struct.brcmf_pciedev_info* %56, i64 %62, i32 0)
  %64 = load i8*, i8** %8, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %92

66:                                               ; preds = %30
  %67 = load i32, i32* @PCIE, align 4
  %68 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %69 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %70)
  %72 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %73 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %78 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %76, %81
  %83 = load i64, i64* %9, align 8
  %84 = sub nsw i64 %82, %83
  store i64 %84, i64* %15, align 8
  %85 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %86 = load i64, i64* %15, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = load i64, i64* %9, align 8
  %89 = call i32 @brcmf_pcie_copy_mem_todev(%struct.brcmf_pciedev_info* %85, i64 %86, i8* %87, i64 %88)
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @brcmf_fw_nvram_free(i8* %90)
  br label %98

92:                                               ; preds = %30
  %93 = load i32, i32* @PCIE, align 4
  %94 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %95 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %93, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %96)
  br label %98

98:                                               ; preds = %92, %66
  %99 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %100 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %101 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %100, i32 0, i32 2
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %104, 4
  %106 = call i64 @brcmf_pcie_read_ram32(%struct.brcmf_pciedev_info* %99, i64 %105)
  store i64 %106, i64* %12, align 8
  %107 = load i32, i32* @PCIE, align 4
  %108 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %109 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %110 = load i64, i64* %16, align 8
  %111 = call i32 @brcmf_pcie_exit_download_state(%struct.brcmf_pciedev_info* %109, i64 %110)
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %98
  %115 = load i32, i32* %14, align 4
  store i32 %115, i32* %5, align 4
  br label %188

116:                                              ; preds = %98
  %117 = load i32, i32* @PCIE, align 4
  %118 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %117, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %119 = load i64, i64* %12, align 8
  store i64 %119, i64* %11, align 8
  %120 = load i32, i32* @BRCMF_PCIE_FW_UP_TIMEOUT, align 4
  %121 = sdiv i32 %120, 50
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %13, align 8
  br label %123

123:                                              ; preds = %132, %116
  %124 = load i64, i64* %11, align 8
  %125 = load i64, i64* %12, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i64, i64* %13, align 8
  %129 = icmp ne i64 %128, 0
  br label %130

130:                                              ; preds = %127, %123
  %131 = phi i1 [ false, %123 ], [ %129, %127 ]
  br i1 %131, label %132, label %144

132:                                              ; preds = %130
  %133 = call i32 @msleep(i32 50)
  %134 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %135 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %136 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %135, i32 0, i32 2
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = sub nsw i64 %139, 4
  %141 = call i64 @brcmf_pcie_read_ram32(%struct.brcmf_pciedev_info* %134, i64 %140)
  store i64 %141, i64* %11, align 8
  %142 = load i64, i64* %13, align 8
  %143 = add nsw i64 %142, -1
  store i64 %143, i64* %13, align 8
  br label %123

144:                                              ; preds = %130
  %145 = load i64, i64* %11, align 8
  %146 = load i64, i64* %12, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %144
  %149 = load %struct.brcmf_bus*, %struct.brcmf_bus** %10, align 8
  %150 = call i32 (%struct.brcmf_bus*, i8*, ...) @brcmf_err(%struct.brcmf_bus* %149, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %151 = load i32, i32* @ENODEV, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %5, align 4
  br label %188

153:                                              ; preds = %144
  %154 = load i64, i64* %11, align 8
  %155 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %156 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %155, i32 0, i32 2
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp slt i64 %154, %159
  br i1 %160, label %175, label %161

161:                                              ; preds = %153
  %162 = load i64, i64* %11, align 8
  %163 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %164 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %163, i32 0, i32 2
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %169 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %168, i32 0, i32 2
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %167, %172
  %174 = icmp sge i64 %162, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %161, %153
  %176 = load %struct.brcmf_bus*, %struct.brcmf_bus** %10, align 8
  %177 = load i64, i64* %11, align 8
  %178 = call i32 (%struct.brcmf_bus*, i8*, ...) @brcmf_err(%struct.brcmf_bus* %176, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i64 %177)
  %179 = load i32, i32* @ENODEV, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %5, align 4
  br label %188

181:                                              ; preds = %161
  %182 = load i32, i32* @PCIE, align 4
  %183 = load i64, i64* %11, align 8
  %184 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %182, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i64 %183)
  %185 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %6, align 8
  %186 = load i64, i64* %11, align 8
  %187 = call i32 @brcmf_pcie_init_share_ram_info(%struct.brcmf_pciedev_info* %185, i64 %186)
  store i32 %187, i32* %5, align 4
  br label %188

188:                                              ; preds = %181, %175, %148, %114, %28
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(i32*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @brcmf_pcie_enter_download_state(%struct.brcmf_pciedev_info*) #1

declare dso_local i32 @brcmf_pcie_copy_mem_todev(%struct.brcmf_pciedev_info*, i64, i8*, i64) #1

declare dso_local i64 @get_unaligned_le32(i64) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @brcmf_pcie_write_ram32(%struct.brcmf_pciedev_info*, i64, i32) #1

declare dso_local i32 @brcmf_fw_nvram_free(i8*) #1

declare dso_local i64 @brcmf_pcie_read_ram32(%struct.brcmf_pciedev_info*, i64) #1

declare dso_local i32 @brcmf_pcie_exit_download_state(%struct.brcmf_pciedev_info*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @brcmf_err(%struct.brcmf_bus*, i8*, ...) #1

declare dso_local i32 @brcmf_pcie_init_share_ram_info(%struct.brcmf_pciedev_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
