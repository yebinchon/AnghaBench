; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_set_tx_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_set_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i64, i64, i32 }
%struct.mwifiex_power_cfg = type { i64, i32, i64 }
%struct.host_cmd_ds_txpwr_cfg = type { i32, i8* }
%struct.mwifiex_types_power_group = type { i8*, i8* }
%struct.mwifiex_power_group = type { i32, i32, i32, i8*, i8*, i64, i8* }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"txpower value %d dBm\09is out of range (%d dBm-%d dBm)\0A\00", align 1
@MWIFIEX_SIZE_OF_CMD_BUFFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@TLV_TYPE_POWER_GROUP = common dso_local global i32 0, align 4
@MOD_CLASS_HR_DSSS = common dso_local global i8* null, align 8
@MOD_CLASS_OFDM = common dso_local global i8* null, align 8
@MOD_CLASS_HT = common dso_local global i8* null, align 8
@HT_BW_20 = common dso_local global i32 0, align 4
@HT_BW_40 = common dso_local global i32 0, align 4
@HostCmd_CMD_TXPWR_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_set_tx_power(%struct.mwifiex_private* %0, %struct.mwifiex_power_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.mwifiex_power_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.host_cmd_ds_txpwr_cfg*, align 8
  %8 = alloca %struct.mwifiex_types_power_group*, align 8
  %9 = alloca %struct.mwifiex_power_group*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.mwifiex_power_cfg* %1, %struct.mwifiex_power_cfg** %5, align 8
  store i64 0, i64* %11, align 8
  %13 = load %struct.mwifiex_power_cfg*, %struct.mwifiex_power_cfg** %5, align 8
  %14 = getelementptr inbounds %struct.mwifiex_power_cfg, %struct.mwifiex_power_cfg* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %46, label %17

17:                                               ; preds = %2
  %18 = load %struct.mwifiex_power_cfg*, %struct.mwifiex_power_cfg** %5, align 8
  %19 = getelementptr inbounds %struct.mwifiex_power_cfg, %struct.mwifiex_power_cfg* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %23 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %17
  %27 = load i64, i64* %11, align 8
  %28 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %29 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %26, %17
  %33 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %34 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ERROR, align 4
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %39 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %42 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @mwifiex_dbg(i32 %35, i32 %36, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %40, i64 %43)
  store i32 -1, i32* %3, align 4
  br label %185

45:                                               ; preds = %26
  br label %46

46:                                               ; preds = %45, %2
  %47 = load i32, i32* @MWIFIEX_SIZE_OF_CMD_BUFFER, align 4
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i32* @kzalloc(i32 %47, i32 %48)
  store i32* %49, i32** %10, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %185

55:                                               ; preds = %46
  %56 = load i32*, i32** %10, align 8
  %57 = bitcast i32* %56 to %struct.host_cmd_ds_txpwr_cfg*
  store %struct.host_cmd_ds_txpwr_cfg* %57, %struct.host_cmd_ds_txpwr_cfg** %7, align 8
  %58 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %59 = call i8* @cpu_to_le16(i32 %58)
  %60 = load %struct.host_cmd_ds_txpwr_cfg*, %struct.host_cmd_ds_txpwr_cfg** %7, align 8
  %61 = getelementptr inbounds %struct.host_cmd_ds_txpwr_cfg, %struct.host_cmd_ds_txpwr_cfg* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.mwifiex_power_cfg*, %struct.mwifiex_power_cfg** %5, align 8
  %63 = getelementptr inbounds %struct.mwifiex_power_cfg, %struct.mwifiex_power_cfg* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %176, label %66

66:                                               ; preds = %55
  %67 = load %struct.mwifiex_power_cfg*, %struct.mwifiex_power_cfg** %5, align 8
  %68 = getelementptr inbounds %struct.mwifiex_power_cfg, %struct.mwifiex_power_cfg* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i64, i64* %11, align 8
  br label %77

73:                                               ; preds = %66
  %74 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %75 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  br label %77

77:                                               ; preds = %73, %71
  %78 = phi i64 [ %72, %71 ], [ %76, %73 ]
  store i64 %78, i64* %12, align 8
  %79 = call i32 @cpu_to_le32(i32 1)
  %80 = load %struct.host_cmd_ds_txpwr_cfg*, %struct.host_cmd_ds_txpwr_cfg** %7, align 8
  %81 = getelementptr inbounds %struct.host_cmd_ds_txpwr_cfg, %struct.host_cmd_ds_txpwr_cfg* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 16
  %84 = bitcast i32* %83 to %struct.mwifiex_types_power_group*
  store %struct.mwifiex_types_power_group* %84, %struct.mwifiex_types_power_group** %8, align 8
  %85 = load i32, i32* @TLV_TYPE_POWER_GROUP, align 4
  %86 = call i8* @cpu_to_le16(i32 %85)
  %87 = load %struct.mwifiex_types_power_group*, %struct.mwifiex_types_power_group** %8, align 8
  %88 = getelementptr inbounds %struct.mwifiex_types_power_group, %struct.mwifiex_types_power_group* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = call i8* @cpu_to_le16(i32 192)
  %90 = load %struct.mwifiex_types_power_group*, %struct.mwifiex_types_power_group** %8, align 8
  %91 = getelementptr inbounds %struct.mwifiex_types_power_group, %struct.mwifiex_types_power_group* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 16
  %94 = getelementptr inbounds i32, i32* %93, i64 16
  %95 = bitcast i32* %94 to %struct.mwifiex_power_group*
  store %struct.mwifiex_power_group* %95, %struct.mwifiex_power_group** %9, align 8
  %96 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %97 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  %98 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %99 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %98, i32 0, i32 1
  store i32 3, i32* %99, align 4
  %100 = load i8*, i8** @MOD_CLASS_HR_DSSS, align 8
  %101 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %102 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %101, i32 0, i32 6
  store i8* %100, i8** %102, align 8
  %103 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %104 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %103, i32 0, i32 5
  store i64 0, i64* %104, align 8
  %105 = load i64, i64* %12, align 8
  %106 = inttoptr i64 %105 to i8*
  %107 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %108 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %107, i32 0, i32 4
  store i8* %106, i8** %108, align 8
  %109 = load i64, i64* %11, align 8
  %110 = inttoptr i64 %109 to i8*
  %111 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %112 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %111, i32 0, i32 3
  store i8* %110, i8** %112, align 8
  %113 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %114 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %113, i32 1
  store %struct.mwifiex_power_group* %114, %struct.mwifiex_power_group** %9, align 8
  %115 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %116 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  %117 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %118 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %117, i32 0, i32 1
  store i32 7, i32* %118, align 4
  %119 = load i8*, i8** @MOD_CLASS_OFDM, align 8
  %120 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %121 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %120, i32 0, i32 6
  store i8* %119, i8** %121, align 8
  %122 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %123 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %122, i32 0, i32 5
  store i64 0, i64* %123, align 8
  %124 = load i64, i64* %12, align 8
  %125 = inttoptr i64 %124 to i8*
  %126 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %127 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %126, i32 0, i32 4
  store i8* %125, i8** %127, align 8
  %128 = load i64, i64* %11, align 8
  %129 = inttoptr i64 %128 to i8*
  %130 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %131 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %130, i32 0, i32 3
  store i8* %129, i8** %131, align 8
  %132 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %133 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %132, i32 1
  store %struct.mwifiex_power_group* %133, %struct.mwifiex_power_group** %9, align 8
  %134 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %135 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %134, i32 0, i32 0
  store i32 0, i32* %135, align 8
  %136 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %137 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %136, i32 0, i32 1
  store i32 32, i32* %137, align 4
  %138 = load i8*, i8** @MOD_CLASS_HT, align 8
  %139 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %140 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %139, i32 0, i32 6
  store i8* %138, i8** %140, align 8
  %141 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %142 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %141, i32 0, i32 5
  store i64 0, i64* %142, align 8
  %143 = load i64, i64* %12, align 8
  %144 = inttoptr i64 %143 to i8*
  %145 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %146 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %145, i32 0, i32 4
  store i8* %144, i8** %146, align 8
  %147 = load i64, i64* %11, align 8
  %148 = inttoptr i64 %147 to i8*
  %149 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %150 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %149, i32 0, i32 3
  store i8* %148, i8** %150, align 8
  %151 = load i32, i32* @HT_BW_20, align 4
  %152 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %153 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %155 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %154, i32 1
  store %struct.mwifiex_power_group* %155, %struct.mwifiex_power_group** %9, align 8
  %156 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %157 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %156, i32 0, i32 0
  store i32 0, i32* %157, align 8
  %158 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %159 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %158, i32 0, i32 1
  store i32 32, i32* %159, align 4
  %160 = load i8*, i8** @MOD_CLASS_HT, align 8
  %161 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %162 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %161, i32 0, i32 6
  store i8* %160, i8** %162, align 8
  %163 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %164 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %163, i32 0, i32 5
  store i64 0, i64* %164, align 8
  %165 = load i64, i64* %12, align 8
  %166 = inttoptr i64 %165 to i8*
  %167 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %168 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %167, i32 0, i32 4
  store i8* %166, i8** %168, align 8
  %169 = load i64, i64* %11, align 8
  %170 = inttoptr i64 %169 to i8*
  %171 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %172 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %171, i32 0, i32 3
  store i8* %170, i8** %172, align 8
  %173 = load i32, i32* @HT_BW_40, align 4
  %174 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %9, align 8
  %175 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 8
  br label %176

176:                                              ; preds = %77, %55
  %177 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %178 = load i32, i32* @HostCmd_CMD_TXPWR_CFG, align 4
  %179 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %180 = load i32*, i32** %10, align 8
  %181 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %177, i32 %178, i32 %179, i32 0, i32* %180, i32 1)
  store i32 %181, i32* %6, align 4
  %182 = load i32*, i32** %10, align 8
  %183 = call i32 @kfree(i32* %182)
  %184 = load i32, i32* %6, align 4
  store i32 %184, i32* %3, align 4
  br label %185

185:                                              ; preds = %176, %52, %32
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, i64, i64, i64) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
