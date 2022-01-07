; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_drv_get_driver_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_drv_get_driver_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32 }
%union.anon = type { [4 x i32] }

@.str = private unnamed_addr constant [13 x i8] c"%u.%u.%u.p%u\00", align 1
@driver_version = common dso_local global i8* null, align 8
@MSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"info: MWIFIEX VERSION: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_drv_get_driver_version(%struct.mwifiex_adapter* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.mwifiex_adapter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.anon, align 4
  %8 = alloca [32 x i8], align 16
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @cpu_to_le32(i32 %11)
  %13 = bitcast %union.anon* %7 to i32*
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %15 = bitcast %union.anon* %7 to [4 x i32]*
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  %17 = load i32, i32* %16, align 4
  %18 = bitcast %union.anon* %7 to [4 x i32]*
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = bitcast %union.anon* %7 to [4 x i32]*
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = bitcast %union.anon* %7 to [4 x i32]*
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 %23, i32 %26)
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i8*, i8** @driver_version, align 8
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %32 = call i32 @snprintf(i8* %28, i32 %29, i8* %30, i8* %31)
  %33 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %34 = load i32, i32* @MSG, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %33, i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  ret i32 0
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
