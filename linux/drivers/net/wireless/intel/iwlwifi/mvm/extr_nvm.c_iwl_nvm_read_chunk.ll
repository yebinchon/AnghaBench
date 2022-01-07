; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_nvm.c_iwl_nvm_read_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_nvm.c_iwl_nvm_read_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_nvm_access_cmd = type { i32, i32, i32, i32 }
%struct.iwl_nvm_access_resp = type { i32*, i32, i32, i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_host_cmd = type { i32, i32*, %struct.iwl_rx_packet*, i32, i32 }

@NVM_READ_OPCODE = common dso_local global i32 0, align 4
@CMD_WANT_SKB = common dso_local global i32 0, align 4
@CMD_SEND_IN_RFKILL = common dso_local global i32 0, align 4
@NVM_ACCESS_CMD = common dso_local global i32 0, align 4
@READ_NVM_CHUNK_NOT_VALID_ADDRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"NVM access command failed on offset 0x%x since that section size is multiple 2K\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"NVM access command failed with status %d (device: %s)\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"NVM ACCESS response with invalid offset %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i32, i32, i32, i32*)* @iwl_nvm_read_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_nvm_read_chunk(%struct.iwl_mvm* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.iwl_nvm_access_cmd, align 4
  %13 = alloca %struct.iwl_nvm_access_resp*, align 8
  %14 = alloca %struct.iwl_rx_packet*, align 8
  %15 = alloca %struct.iwl_host_cmd, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %20 = getelementptr inbounds %struct.iwl_nvm_access_cmd, %struct.iwl_nvm_access_cmd* %12, i32 0, i32 0
  %21 = load i32, i32* @NVM_READ_OPCODE, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.iwl_nvm_access_cmd, %struct.iwl_nvm_access_cmd* %12, i32 0, i32 1
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @cpu_to_le16(i32 %23)
  store i32 %24, i32* %22, align 4
  %25 = getelementptr inbounds %struct.iwl_nvm_access_cmd, %struct.iwl_nvm_access_cmd* %12, i32 0, i32 2
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @cpu_to_le16(i32 %26)
  store i32 %27, i32* %25, align 4
  %28 = getelementptr inbounds %struct.iwl_nvm_access_cmd, %struct.iwl_nvm_access_cmd* %12, i32 0, i32 3
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @cpu_to_le16(i32 %29)
  store i32 %30, i32* %28, align 4
  %31 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %15, i32 0, i32 0
  %32 = load i32, i32* @CMD_WANT_SKB, align 4
  %33 = load i32, i32* @CMD_SEND_IN_RFKILL, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %31, align 8
  %35 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %15, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %15, i32 0, i32 2
  store %struct.iwl_rx_packet* null, %struct.iwl_rx_packet** %36, align 8
  %37 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %15, i32 0, i32 3
  %38 = ptrtoint %struct.iwl_nvm_access_cmd* %12 to i32
  store i32 %38, i32* %37, align 8
  %39 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %15, i32 0, i32 4
  %40 = load i32, i32* @NVM_ACCESS_CMD, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %15, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 16, i32* %43, align 4
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %45 = call i32 @iwl_mvm_send_cmd(%struct.iwl_mvm* %44, %struct.iwl_host_cmd* %15)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %5
  %49 = load i32, i32* %16, align 4
  store i32 %49, i32* %6, align 4
  br label %128

50:                                               ; preds = %5
  %51 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %15, i32 0, i32 2
  %52 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %51, align 8
  store %struct.iwl_rx_packet* %52, %struct.iwl_rx_packet** %14, align 8
  %53 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %14, align 8
  %54 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = bitcast i8* %56 to %struct.iwl_nvm_access_resp*
  store %struct.iwl_nvm_access_resp* %57, %struct.iwl_nvm_access_resp** %13, align 8
  %58 = load %struct.iwl_nvm_access_resp*, %struct.iwl_nvm_access_resp** %13, align 8
  %59 = getelementptr inbounds %struct.iwl_nvm_access_resp, %struct.iwl_nvm_access_resp* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @le16_to_cpu(i32 %60)
  store i32 %61, i32* %16, align 4
  %62 = load %struct.iwl_nvm_access_resp*, %struct.iwl_nvm_access_resp** %13, align 8
  %63 = getelementptr inbounds %struct.iwl_nvm_access_resp, %struct.iwl_nvm_access_resp* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le16_to_cpu(i32 %64)
  store i32 %65, i32* %17, align 4
  %66 = load %struct.iwl_nvm_access_resp*, %struct.iwl_nvm_access_resp** %13, align 8
  %67 = getelementptr inbounds %struct.iwl_nvm_access_resp, %struct.iwl_nvm_access_resp* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @le16_to_cpu(i32 %68)
  store i32 %69, i32* %18, align 4
  %70 = load %struct.iwl_nvm_access_resp*, %struct.iwl_nvm_access_resp** %13, align 8
  %71 = getelementptr inbounds %struct.iwl_nvm_access_resp, %struct.iwl_nvm_access_resp* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %19, align 8
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %106

75:                                               ; preds = %50
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* @READ_NVM_CHUNK_NOT_VALID_ADDRESS, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %84 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %83, i32 0, i32 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 (i32, i8*, i32, ...) @IWL_DEBUG_EEPROM(i32 %87, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %88)
  store i32 0, i32* %16, align 4
  br label %105

90:                                               ; preds = %78, %75
  %91 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %92 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %91, i32 0, i32 1
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %16, align 4
  %97 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %98 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i8*, i32, ...) @IWL_DEBUG_EEPROM(i32 %95, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %101)
  %103 = load i32, i32* @ENODATA, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %16, align 4
  br label %105

105:                                              ; preds = %90, %82
  br label %125

106:                                              ; preds = %50
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %112 = load i32, i32* %18, align 4
  %113 = call i32 @IWL_ERR(%struct.iwl_mvm* %111, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %16, align 4
  br label %125

116:                                              ; preds = %106
  %117 = load i32*, i32** %11, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32*, i32** %19, align 8
  %122 = load i32, i32* %17, align 4
  %123 = call i32 @memcpy(i32* %120, i32* %121, i32 %122)
  %124 = load i32, i32* %17, align 4
  store i32 %124, i32* %16, align 4
  br label %125

125:                                              ; preds = %116, %110, %105
  %126 = call i32 @iwl_free_resp(%struct.iwl_host_cmd* %15)
  %127 = load i32, i32* %16, align 4
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %125, %48
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @iwl_mvm_send_cmd(%struct.iwl_mvm*, %struct.iwl_host_cmd*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @IWL_DEBUG_EEPROM(i32, i8*, i32, ...) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @iwl_free_resp(%struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
