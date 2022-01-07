; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_ops.c_mmc_send_cxd_native.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_ops.c_mmc_send_cxd_native.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_command = type { i32, i32, i32, i32 }

@MMC_RSP_R2 = common dso_local global i32 0, align 4
@MMC_CMD_AC = common dso_local global i32 0, align 4
@MMC_CMD_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, i32, i32*, i32)* @mmc_send_cxd_native to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_send_cxd_native(%struct.mmc_host* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mmc_command, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = bitcast %struct.mmc_command* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 16, i1 false)
  %13 = load i32, i32* %9, align 4
  %14 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  %16 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 3
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @MMC_RSP_R2, align 4
  %18 = load i32, i32* @MMC_CMD_AC, align 4
  %19 = or i32 %17, %18
  %20 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %22 = load i32, i32* @MMC_CMD_RETRIES, align 4
  %23 = call i32 @mmc_wait_for_cmd(%struct.mmc_host* %21, %struct.mmc_command* %11, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %33

28:                                               ; preds = %4
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memcpy(i32* %29, i32 %31, i32 16)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %28, %26
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mmc_wait_for_cmd(%struct.mmc_host*, %struct.mmc_command*, i32) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
