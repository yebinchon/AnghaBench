; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_set_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_set_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mmcif_host = type { i32, i32 }
%struct.mmc_request = type { %struct.mmc_command*, %struct.mmc_data* }
%struct.mmc_command = type { i32 }
%struct.mmc_data = type { i32 }
%struct.device = type { i32 }

@CMD_SET_RTYP_NO = common dso_local global i32 0, align 4
@CMD_SET_RTYP_6B = common dso_local global i32 0, align 4
@CMD_SET_RBSY = common dso_local global i32 0, align 4
@CMD_SET_RTYP_17B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unsupported response type.\0A\00", align 1
@CMD_SET_WDAT = common dso_local global i32 0, align 4
@CMD_SET_DATW_1 = common dso_local global i32 0, align 4
@CMD_SET_DATW_4 = common dso_local global i32 0, align 4
@CMD_SET_DATW_8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unsupported bus width.\0A\00", align 1
@CMD_SET_DARS = common dso_local global i32 0, align 4
@MMC_WRITE_BLOCK = common dso_local global i32 0, align 4
@MMC_WRITE_MULTIPLE_BLOCK = common dso_local global i32 0, align 4
@CMD_SET_DWEN = common dso_local global i32 0, align 4
@MMC_READ_MULTIPLE_BLOCK = common dso_local global i32 0, align 4
@CMD_SET_CMLTE = common dso_local global i32 0, align 4
@CMD_SET_CMD12EN = common dso_local global i32 0, align 4
@MMCIF_CE_BLOCK_SET = common dso_local global i32 0, align 4
@MMC_SEND_OP_COND = common dso_local global i32 0, align 4
@MMC_ALL_SEND_CID = common dso_local global i32 0, align 4
@MMC_SEND_CSD = common dso_local global i32 0, align 4
@MMC_SEND_CID = common dso_local global i32 0, align 4
@CMD_SET_RIDXC_BITS = common dso_local global i32 0, align 4
@CMD_SET_CRC7C_BITS = common dso_local global i32 0, align 4
@CMD_SET_CRC7C_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_mmcif_host*, %struct.mmc_request*)* @sh_mmcif_set_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mmcif_set_cmd(%struct.sh_mmcif_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.sh_mmcif_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.mmc_data*, align 8
  %7 = alloca %struct.mmc_command*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sh_mmcif_host* %0, %struct.sh_mmcif_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %10 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %11 = call %struct.device* @sh_mmcif_host_to_dev(%struct.sh_mmcif_host* %10)
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %13 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %12, i32 0, i32 1
  %14 = load %struct.mmc_data*, %struct.mmc_data** %13, align 8
  store %struct.mmc_data* %14, %struct.mmc_data** %6, align 8
  %15 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %16 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %15, i32 0, i32 0
  %17 = load %struct.mmc_command*, %struct.mmc_command** %16, align 8
  store %struct.mmc_command* %17, %struct.mmc_command** %7, align 8
  %18 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %19 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %22 = call i32 @mmc_resp_type(%struct.mmc_command* %21)
  switch i32 %22, label %41 [
    i32 133, label %23
    i32 132, label %27
    i32 129, label %27
    i32 131, label %31
    i32 130, label %37
  ]

23:                                               ; preds = %2
  %24 = load i32, i32* @CMD_SET_RTYP_NO, align 4
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %9, align 4
  br label %44

27:                                               ; preds = %2, %2
  %28 = load i32, i32* @CMD_SET_RTYP_6B, align 4
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  br label %44

31:                                               ; preds = %2
  %32 = load i32, i32* @CMD_SET_RBSY, align 4
  %33 = load i32, i32* @CMD_SET_RTYP_6B, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %9, align 4
  br label %44

37:                                               ; preds = %2
  %38 = load i32, i32* @CMD_SET_RTYP_17B, align 4
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  br label %44

41:                                               ; preds = %2
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %37, %31, %27, %23
  %45 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %46 = icmp ne %struct.mmc_data* %45, null
  br i1 %46, label %47, label %78

47:                                               ; preds = %44
  %48 = load i32, i32* @CMD_SET_WDAT, align 4
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  %51 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %52 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %66 [
    i32 136, label %54
    i32 135, label %58
    i32 134, label %62
  ]

54:                                               ; preds = %47
  %55 = load i32, i32* @CMD_SET_DATW_1, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %69

58:                                               ; preds = %47
  %59 = load i32, i32* @CMD_SET_DATW_4, align 4
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  br label %69

62:                                               ; preds = %47
  %63 = load i32, i32* @CMD_SET_DATW_8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  br label %69

66:                                               ; preds = %47
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %62, %58, %54
  %70 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %71 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %77 [
    i32 128, label %73
  ]

73:                                               ; preds = %69
  %74 = load i32, i32* @CMD_SET_DARS, align 4
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %69, %73
  br label %78

78:                                               ; preds = %77, %44
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @MMC_WRITE_BLOCK, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @MMC_WRITE_MULTIPLE_BLOCK, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82, %78
  %87 = load i32, i32* @CMD_SET_DWEN, align 4
  %88 = load i32, i32* %9, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %86, %82
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @MMC_READ_MULTIPLE_BLOCK, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @MMC_WRITE_MULTIPLE_BLOCK, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %94, %90
  %99 = load i32, i32* @CMD_SET_CMLTE, align 4
  %100 = load i32, i32* @CMD_SET_CMD12EN, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* %9, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %9, align 4
  %104 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %105 = load i32, i32* @MMCIF_CE_BLOCK_SET, align 4
  %106 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %107 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 16
  %110 = call i32 @sh_mmcif_bitset(%struct.sh_mmcif_host* %104, i32 %105, i32 %109)
  br label %111

111:                                              ; preds = %98, %94
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @MMC_SEND_OP_COND, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %127, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @MMC_ALL_SEND_CID, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %127, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @MMC_SEND_CSD, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @MMC_SEND_CID, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %123, %119, %115, %111
  %128 = load i32, i32* @CMD_SET_RIDXC_BITS, align 4
  %129 = load i32, i32* %9, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %127, %123
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @MMC_SEND_OP_COND, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load i32, i32* @CMD_SET_CRC7C_BITS, align 4
  %137 = load i32, i32* %9, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %9, align 4
  br label %139

139:                                              ; preds = %135, %131
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @MMC_ALL_SEND_CID, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %151, label %143

143:                                              ; preds = %139
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* @MMC_SEND_CSD, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* @MMC_SEND_CID, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %147, %143, %139
  %152 = load i32, i32* @CMD_SET_CRC7C_INTERNAL, align 4
  %153 = load i32, i32* %9, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %9, align 4
  br label %155

155:                                              ; preds = %151, %147
  %156 = load i32, i32* %8, align 4
  %157 = shl i32 %156, 24
  %158 = load i32, i32* %9, align 4
  %159 = or i32 %157, %158
  ret i32 %159
}

declare dso_local %struct.device* @sh_mmcif_host_to_dev(%struct.sh_mmcif_host*) #1

declare dso_local i32 @mmc_resp_type(%struct.mmc_command*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @sh_mmcif_bitset(%struct.sh_mmcif_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
