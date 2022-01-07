; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_dma_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_dma_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mmcif_host = type { i32, %struct.mmc_request* }
%struct.mmc_request = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Command completed\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: NULL data in DMA completion!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sh_mmcif_dma_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_mmcif_dma_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sh_mmcif_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.device*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.sh_mmcif_host*
  store %struct.sh_mmcif_host* %7, %struct.sh_mmcif_host** %3, align 8
  %8 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %9 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %8, i32 0, i32 1
  %10 = load %struct.mmc_request*, %struct.mmc_request** %9, align 8
  store %struct.mmc_request* %10, %struct.mmc_request** %4, align 8
  %11 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %12 = call %struct.device* @sh_mmcif_host_to_dev(%struct.sh_mmcif_host* %11)
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call i32 @dev_dbg(%struct.device* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %16 = icmp ne %struct.mmc_request* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %19 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %17, %1
  %24 = phi i1 [ true, %1 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = call i32 @dev_name(%struct.device* %26)
  %28 = call i64 @WARN(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %35

31:                                               ; preds = %23
  %32 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %33 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %32, i32 0, i32 0
  %34 = call i32 @complete(i32* %33)
  br label %35

35:                                               ; preds = %31, %30
  ret void
}

declare dso_local %struct.device* @sh_mmcif_host_to_dev(%struct.sh_mmcif_host*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i64 @WARN(i32, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
