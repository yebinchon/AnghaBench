; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_stop_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_stop_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mmcif_host = type { i32 }
%struct.mmc_request = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }

@MMCIF_CE_INT_MASK = common dso_local global i32 0, align 4
@MASK_MCMD12DRE = common dso_local global i32 0, align 4
@MASK_MCMD12RBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unsupported stop cmd\0A\00", align 1
@MMCIF_WAIT_FOR_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_mmcif_host*, %struct.mmc_request*)* @sh_mmcif_stop_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_mmcif_stop_cmd(%struct.sh_mmcif_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.sh_mmcif_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.sh_mmcif_host* %0, %struct.sh_mmcif_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %6 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %7 = call %struct.device* @sh_mmcif_host_to_dev(%struct.sh_mmcif_host* %6)
  store %struct.device* %7, %struct.device** %5, align 8
  %8 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %9 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %23 [
    i32 129, label %13
    i32 128, label %18
  ]

13:                                               ; preds = %2
  %14 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %15 = load i32, i32* @MMCIF_CE_INT_MASK, align 4
  %16 = load i32, i32* @MASK_MCMD12DRE, align 4
  %17 = call i32 @sh_mmcif_bitset(%struct.sh_mmcif_host* %14, i32 %15, i32 %16)
  br label %32

18:                                               ; preds = %2
  %19 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %20 = load i32, i32* @MMCIF_CE_INT_MASK, align 4
  %21 = load i32, i32* @MASK_MCMD12RBE, align 4
  %22 = call i32 @sh_mmcif_bitset(%struct.sh_mmcif_host* %19, i32 %20, i32 %21)
  br label %32

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %27 = call i32 @sh_mmcif_error_manage(%struct.sh_mmcif_host* %26)
  %28 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %29 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 4
  br label %36

32:                                               ; preds = %18, %13
  %33 = load i32, i32* @MMCIF_WAIT_FOR_STOP, align 4
  %34 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %35 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %32, %23
  ret void
}

declare dso_local %struct.device* @sh_mmcif_host_to_dev(%struct.sh_mmcif_host*) #1

declare dso_local i32 @sh_mmcif_bitset(%struct.sh_mmcif_host*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @sh_mmcif_error_manage(%struct.sh_mmcif_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
