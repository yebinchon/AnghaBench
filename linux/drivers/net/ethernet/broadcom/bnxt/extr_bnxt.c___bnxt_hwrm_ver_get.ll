; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c___bnxt_hwrm_ver_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c___bnxt_hwrm_ver_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.hwrm_ver_get_input = type { i32, i32, i32, i32 }

@HWRM_VER_GET = common dso_local global i32 0, align 4
@HWRM_VERSION_MAJOR = common dso_local global i32 0, align 4
@HWRM_VERSION_MINOR = common dso_local global i32 0, align 4
@HWRM_VERSION_UPDATE = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i32)* @__bnxt_hwrm_ver_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bnxt_hwrm_ver_get(%struct.bnxt* %0, i32 %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hwrm_ver_get_input, align 4
  %6 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = bitcast %struct.hwrm_ver_get_input* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 16, i1 false)
  %8 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %9 = load i32, i32* @HWRM_VER_GET, align 4
  %10 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %8, %struct.hwrm_ver_get_input* %5, i32 %9, i32 -1, i32 -1)
  %11 = load i32, i32* @HWRM_VERSION_MAJOR, align 4
  %12 = getelementptr inbounds %struct.hwrm_ver_get_input, %struct.hwrm_ver_get_input* %5, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @HWRM_VERSION_MINOR, align 4
  %14 = getelementptr inbounds %struct.hwrm_ver_get_input, %struct.hwrm_ver_get_input* %5, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @HWRM_VERSION_UPDATE, align 4
  %16 = getelementptr inbounds %struct.hwrm_ver_get_input, %struct.hwrm_ver_get_input* %5, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %18 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @bnxt_hwrm_do_send_msg(%struct.bnxt* %17, %struct.hwrm_ver_get_input* %5, i32 16, i32 %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  ret i32 %21
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_ver_get_input*, i32, i32, i32) #2

declare dso_local i32 @bnxt_hwrm_do_send_msg(%struct.bnxt*, %struct.hwrm_ver_get_input*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
