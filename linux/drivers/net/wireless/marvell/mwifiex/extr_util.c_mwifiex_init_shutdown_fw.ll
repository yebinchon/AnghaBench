; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_util.c_mwifiex_init_shutdown_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_util.c_mwifiex_init_shutdown_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }

@MWIFIEX_FUNC_INIT = common dso_local global i64 0, align 8
@HostCmd_CMD_FUNC_INIT = common dso_local global i32 0, align 4
@MWIFIEX_FUNC_SHUTDOWN = common dso_local global i64 0, align 8
@HostCmd_CMD_FUNC_SHUTDOWN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unsupported parameter\0A\00", align 1
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_init_shutdown_fw(%struct.mwifiex_private* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @MWIFIEX_FUNC_INIT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @HostCmd_CMD_FUNC_INIT, align 4
  store i32 %11, i32* %6, align 4
  br label %25

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @MWIFIEX_FUNC_SHUTDOWN, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @HostCmd_CMD_FUNC_SHUTDOWN, align 4
  store i32 %17, i32* %6, align 4
  br label %24

18:                                               ; preds = %12
  %19 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %20 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ERROR, align 4
  %23 = call i32 @mwifiex_dbg(i32 %21, i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %30

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %10
  %26 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %29 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %26, i32 %27, i32 %28, i32 0, i32* null, i32 1)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %25, %18
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
