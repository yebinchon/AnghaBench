; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_send_crq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_send_crq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crq_server_adapter = type { i32 }
%struct.vio_dev = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"(0x%x, 0x%016llx, 0x%016llx)\0A\00", align 1
@H_SEND_CRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"rc = 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.crq_server_adapter*, i32, i32)* @ibmvmc_send_crq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ibmvmc_send_crq(%struct.crq_server_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.crq_server_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vio_dev*, align 8
  %8 = alloca i64, align 8
  store %struct.crq_server_adapter* %0, %struct.crq_server_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.vio_dev* @to_vio_dev(i32 %11)
  store %struct.vio_dev* %12, %struct.vio_dev** %7, align 8
  store i64 0, i64* %8, align 8
  %13 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vio_dev*, %struct.vio_dev** %7, align 8
  %17 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %19, i32 %20, i32 %21)
  %23 = call i32 (...) @dma_wmb()
  %24 = load i32, i32* @H_SEND_CRQ, align 4
  %25 = load %struct.vio_dev*, %struct.vio_dev** %7, align 8
  %26 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @plpar_hcall_norets(i32 %24, i32 %27, i32 %28, i32 %29)
  store i64 %30, i64* %8, align 8
  %31 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %32 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %8, align 8
  %35 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load i64, i64* %8, align 8
  ret i64 %36
}

declare dso_local %struct.vio_dev* @to_vio_dev(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, ...) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i64 @plpar_hcall_norets(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
