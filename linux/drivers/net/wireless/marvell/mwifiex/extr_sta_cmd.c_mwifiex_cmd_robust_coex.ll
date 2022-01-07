; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_robust_coex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_robust_coex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.host_cmd_ds_command = type { i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.host_cmd_ds_robust_coex }
%struct.host_cmd_ds_robust_coex = type { i64 }
%struct.mwifiex_ie_types_robust_coex = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }

@HostCmd_CMD_ROBUST_COEX = common dso_local global i32 0, align 4
@S_DS_GEN = common dso_local global i32 0, align 4
@TLV_TYPE_ROBUST_COEX = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_GET = common dso_local global i64 0, align 8
@MWIFIEX_COEX_MODE_TIMESHARE = common dso_local global i32 0, align 4
@MWIFIEX_COEX_MODE_SPATIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32, i32*)* @mwifiex_cmd_robust_coex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cmd_robust_coex(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwifiex_private*, align 8
  %7 = alloca %struct.host_cmd_ds_command*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.host_cmd_ds_robust_coex*, align 8
  %11 = alloca %struct.mwifiex_ie_types_robust_coex*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %6, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %13 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.host_cmd_ds_robust_coex* %14, %struct.host_cmd_ds_robust_coex** %10, align 8
  %15 = load i32, i32* @HostCmd_CMD_ROBUST_COEX, align 4
  %16 = call i8* @cpu_to_le16(i32 %15)
  %17 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %18 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* @S_DS_GEN, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 32, %20
  %22 = trunc i64 %21 to i32
  %23 = call i8* @cpu_to_le16(i32 %22)
  %24 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %7, align 8
  %25 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i8* @cpu_to_le16(i32 %26)
  %28 = ptrtoint i8* %27 to i64
  %29 = load %struct.host_cmd_ds_robust_coex*, %struct.host_cmd_ds_robust_coex** %10, align 8
  %30 = getelementptr inbounds %struct.host_cmd_ds_robust_coex, %struct.host_cmd_ds_robust_coex* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.host_cmd_ds_robust_coex*, %struct.host_cmd_ds_robust_coex** %10, align 8
  %32 = bitcast %struct.host_cmd_ds_robust_coex* %31 to i32*
  %33 = getelementptr inbounds i32, i32* %32, i64 8
  %34 = bitcast i32* %33 to %struct.mwifiex_ie_types_robust_coex*
  store %struct.mwifiex_ie_types_robust_coex* %34, %struct.mwifiex_ie_types_robust_coex** %11, align 8
  %35 = load i32, i32* @TLV_TYPE_ROBUST_COEX, align 4
  %36 = call i8* @cpu_to_le16(i32 %35)
  %37 = load %struct.mwifiex_ie_types_robust_coex*, %struct.mwifiex_ie_types_robust_coex** %11, align 8
  %38 = getelementptr inbounds %struct.mwifiex_ie_types_robust_coex, %struct.mwifiex_ie_types_robust_coex* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i8* %36, i8** %39, align 8
  %40 = call i8* @cpu_to_le16(i32 8)
  %41 = load %struct.mwifiex_ie_types_robust_coex*, %struct.mwifiex_ie_types_robust_coex** %11, align 8
  %42 = getelementptr inbounds %struct.mwifiex_ie_types_robust_coex, %struct.mwifiex_ie_types_robust_coex* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i8* %40, i8** %43, align 8
  %44 = load %struct.host_cmd_ds_robust_coex*, %struct.host_cmd_ds_robust_coex** %10, align 8
  %45 = getelementptr inbounds %struct.host_cmd_ds_robust_coex, %struct.host_cmd_ds_robust_coex* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @HostCmd_ACT_GEN_GET, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %65

50:                                               ; preds = %4
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* @MWIFIEX_COEX_MODE_TIMESHARE, align 4
  %56 = call i8* @cpu_to_le32(i32 %55)
  %57 = load %struct.mwifiex_ie_types_robust_coex*, %struct.mwifiex_ie_types_robust_coex** %11, align 8
  %58 = getelementptr inbounds %struct.mwifiex_ie_types_robust_coex, %struct.mwifiex_ie_types_robust_coex* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  br label %64

59:                                               ; preds = %50
  %60 = load i32, i32* @MWIFIEX_COEX_MODE_SPATIAL, align 4
  %61 = call i8* @cpu_to_le32(i32 %60)
  %62 = load %struct.mwifiex_ie_types_robust_coex*, %struct.mwifiex_ie_types_robust_coex** %11, align 8
  %63 = getelementptr inbounds %struct.mwifiex_ie_types_robust_coex, %struct.mwifiex_ie_types_robust_coex* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  br label %64

64:                                               ; preds = %59, %54
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %49
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
