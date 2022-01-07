; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_ops.c_mmc_set_dsr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_ops.c_mmc_set_dsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_command = type { i32, i32, i32 }

@MMC_SET_DSR = common dso_local global i32 0, align 4
@MMC_RSP_NONE = common dso_local global i32 0, align 4
@MMC_CMD_AC = common dso_local global i32 0, align 4
@MMC_CMD_RETRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_set_dsr(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.mmc_command, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %4 = bitcast %struct.mmc_command* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 12, i1 false)
  %5 = load i32, i32* @MMC_SET_DSR, align 4
  %6 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %3, i32 0, i32 2
  store i32 %5, i32* %6, align 4
  %7 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %8 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 %9, 16
  %11 = or i32 %10, 65535
  %12 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %3, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @MMC_RSP_NONE, align 4
  %14 = load i32, i32* @MMC_CMD_AC, align 4
  %15 = or i32 %13, %14
  %16 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %3, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %18 = load i32, i32* @MMC_CMD_RETRIES, align 4
  %19 = call i32 @mmc_wait_for_cmd(%struct.mmc_host* %17, %struct.mmc_command* %3, i32 %18)
  ret i32 %19
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mmc_wait_for_cmd(%struct.mmc_host*, %struct.mmc_command*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
