; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_tdls.c_mwifiex_start_tdls_cs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_tdls.c_mwifiex_start_tdls_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.mwifiex_tdls_init_cs_params = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i32 }

@MWIFIEX_DEF_CS_TIME = common dso_local global i32 0, align 4
@MWIFIEX_DEF_CS_TIMEOUT = common dso_local global i32 0, align 4
@MWIFIEX_DEF_CS_REG_CLASS = common dso_local global i32 0, align 4
@MWIFIEX_DEF_CS_PERIODICITY = common dso_local global i32 0, align 4
@HostCmd_CMD_TDLS_CONFIG = common dso_local global i32 0, align 4
@ACT_TDLS_CS_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_start_tdls_cs(%struct.mwifiex_private* %0, i8** %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.mwifiex_private*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.mwifiex_tdls_init_cs_params, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = getelementptr inbounds %struct.mwifiex_tdls_init_cs_params, %struct.mwifiex_tdls_init_cs_params* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = load i8**, i8*** %7, align 8
  %15 = call i32 @ether_addr_copy(i32 %13, i8** %14)
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds %struct.mwifiex_tdls_init_cs_params, %struct.mwifiex_tdls_init_cs_params* %11, i32 0, i32 6
  store i8* %16, i8** %17, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = getelementptr inbounds %struct.mwifiex_tdls_init_cs_params, %struct.mwifiex_tdls_init_cs_params* %11, i32 0, i32 5
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = getelementptr inbounds %struct.mwifiex_tdls_init_cs_params, %struct.mwifiex_tdls_init_cs_params* %11, i32 0, i32 4
  store i8* %20, i8** %21, align 8
  %22 = load i32, i32* @MWIFIEX_DEF_CS_TIME, align 4
  %23 = call i8* @cpu_to_le16(i32 %22)
  %24 = getelementptr inbounds %struct.mwifiex_tdls_init_cs_params, %struct.mwifiex_tdls_init_cs_params* %11, i32 0, i32 3
  store i8* %23, i8** %24, align 8
  %25 = load i32, i32* @MWIFIEX_DEF_CS_TIMEOUT, align 4
  %26 = call i8* @cpu_to_le16(i32 %25)
  %27 = getelementptr inbounds %struct.mwifiex_tdls_init_cs_params, %struct.mwifiex_tdls_init_cs_params* %11, i32 0, i32 2
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* @MWIFIEX_DEF_CS_REG_CLASS, align 4
  %29 = getelementptr inbounds %struct.mwifiex_tdls_init_cs_params, %struct.mwifiex_tdls_init_cs_params* %11, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @MWIFIEX_DEF_CS_PERIODICITY, align 4
  %31 = getelementptr inbounds %struct.mwifiex_tdls_init_cs_params, %struct.mwifiex_tdls_init_cs_params* %11, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %33 = load i32, i32* @HostCmd_CMD_TDLS_CONFIG, align 4
  %34 = load i32, i32* @ACT_TDLS_CS_INIT, align 4
  %35 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %32, i32 %33, i32 %34, i32 0, %struct.mwifiex_tdls_init_cs_params* %11, i32 1)
  ret i32 %35
}

declare dso_local i32 @ether_addr_copy(i32, i8**) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, %struct.mwifiex_tdls_init_cs_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
