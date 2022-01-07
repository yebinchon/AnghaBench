; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_remove_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_remove_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dpni_cmd_remove_mac_addr = type { i32* }

@DPNI_CMDID_REMOVE_MAC_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpni_remove_mac_addr(%struct.fsl_mc_io* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.fsl_mc_io*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.fsl_mc_command, align 8
  %10 = alloca %struct.dpni_cmd_remove_mac_addr*, align 8
  %11 = alloca i32, align 4
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = bitcast %struct.fsl_mc_command* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = load i32, i32* @DPNI_CMDID_REMOVE_MAC_ADDR, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @mc_encode_cmd_header(i32 %13, i32 %14, i32 %15)
  %17 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %9, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %9, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.dpni_cmd_remove_mac_addr*
  store %struct.dpni_cmd_remove_mac_addr* %20, %struct.dpni_cmd_remove_mac_addr** %10, align 8
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %37, %4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 6
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sub nsw i32 5, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dpni_cmd_remove_mac_addr*, %struct.dpni_cmd_remove_mac_addr** %10, align 8
  %32 = getelementptr inbounds %struct.dpni_cmd_remove_mac_addr, %struct.dpni_cmd_remove_mac_addr* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %30, i32* %36, align 4
  br label %37

37:                                               ; preds = %24
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %21

40:                                               ; preds = %21
  %41 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %5, align 8
  %42 = call i32 @mc_send_command(%struct.fsl_mc_io* %41, %struct.fsl_mc_command* %9)
  ret i32 %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
