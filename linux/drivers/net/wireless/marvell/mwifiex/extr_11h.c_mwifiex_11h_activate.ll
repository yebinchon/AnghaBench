; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11h.c_mwifiex_11h_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11h.c_mwifiex_11h_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }

@MWIFIEX_BSS_ROLE_UAP = common dso_local global i64 0, align 8
@MWIFIEX_MASTER_RADAR_DET_MASK = common dso_local global i32 0, align 4
@HostCmd_CMD_802_11_SNMP_MIB = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@DOT11H_I = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_11h_activate(%struct.mwifiex_private* %0, i32 %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %8 = call i64 @GET_BSS_ROLE(%struct.mwifiex_private* %7)
  %9 = load i64, i64* @MWIFIEX_BSS_ROLE_UAP, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* @MWIFIEX_MASTER_RADAR_DET_MASK, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %14, %11, %2
  %19 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %20 = load i32, i32* @HostCmd_CMD_802_11_SNMP_MIB, align 4
  %21 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %22 = load i32, i32* @DOT11H_I, align 4
  %23 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %19, i32 %20, i32 %21, i32 %22, i32* %5, i32 1)
  ret i32 %23
}

declare dso_local i64 @GET_BSS_ROLE(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
