; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_cfg_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_cfg_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.host_cmd_ds_command = type { i8*, i8* }
%struct.property = type { i32, i32 }

@S_DS_GEN = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"download cfg_data from device tree: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"download cfg_data from config file\0A\00", align 1
@HostCmd_CMD_CFG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i8*)* @mwifiex_cmd_cfg_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cmd_cfg_data(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.host_cmd_ds_command*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mwifiex_adapter*, align 8
  %9 = alloca %struct.property*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %14 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %13, i32 0, i32 0
  %15 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %14, align 8
  store %struct.mwifiex_adapter* %15, %struct.mwifiex_adapter** %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.property*
  store %struct.property* %17, %struct.property** %9, align 8
  %18 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %19 = bitcast %struct.host_cmd_ds_command* %18 to i32*
  %20 = load i32, i32* @S_DS_GEN, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32* %22, i32** %11, align 8
  %23 = load %struct.property*, %struct.property** %9, align 8
  %24 = icmp ne %struct.property* %23, null
  br i1 %24, label %25, label %49

25:                                               ; preds = %3
  %26 = load %struct.property*, %struct.property** %9, align 8
  %27 = getelementptr inbounds %struct.property, %struct.property* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %30 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.property*, %struct.property** %9, align 8
  %33 = getelementptr inbounds %struct.property, %struct.property* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @of_property_read_u8_array(i32 %31, i32 %34, i32* %35, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %4, align 4
  br label %93

42:                                               ; preds = %25
  %43 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %44 = load i32, i32* @INFO, align 4
  %45 = load %struct.property*, %struct.property** %9, align 8
  %46 = getelementptr inbounds %struct.property, %struct.property* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %43, i32 %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %82

49:                                               ; preds = %3
  %50 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %51 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %49
  %57 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %58 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %56
  %64 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %65 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i32*
  %70 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %71 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @mwifiex_parse_cal_cfg(i32* %69, i64 %74, i32* %75)
  store i32 %76, i32* %10, align 4
  %77 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %78 = load i32, i32* @INFO, align 4
  %79 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %77, i32 %78, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %81

80:                                               ; preds = %56, %49
  store i32 -1, i32* %4, align 4
  br label %93

81:                                               ; preds = %63
  br label %82

82:                                               ; preds = %81, %42
  %83 = load i32, i32* @HostCmd_CMD_CFG_DATA, align 4
  %84 = call i8* @cpu_to_le16(i32 %83)
  %85 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %86 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* @S_DS_GEN, align 4
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %87, %88
  %90 = call i8* @cpu_to_le16(i32 %89)
  %91 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %92 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %82, %80, %40
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @of_property_read_u8_array(i32, i32, i32*, i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i32 @mwifiex_parse_cal_cfg(i32*, i64, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
