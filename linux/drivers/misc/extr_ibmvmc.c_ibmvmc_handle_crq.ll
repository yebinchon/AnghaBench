; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_handle_crq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_handle_crq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvmc_crq_msg = type { i32 }
%struct.crq_server_adapter = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"CRQ recv: virtual adapter failed - resetting.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"CRQ recv: unknown msg 0x%02x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvmc_crq_msg*, %struct.crq_server_adapter*)* @ibmvmc_handle_crq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvmc_handle_crq(%struct.ibmvmc_crq_msg* %0, %struct.crq_server_adapter* %1) #0 {
  %3 = alloca %struct.ibmvmc_crq_msg*, align 8
  %4 = alloca %struct.crq_server_adapter*, align 8
  store %struct.ibmvmc_crq_msg* %0, %struct.ibmvmc_crq_msg** %3, align 8
  store %struct.crq_server_adapter* %1, %struct.crq_server_adapter** %4, align 8
  %5 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %3, align 8
  %6 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %23 [
    i32 192, label %8
    i32 255, label %12
    i32 128, label %19
  ]

8:                                                ; preds = %2
  %9 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %3, align 8
  %10 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %11 = call i32 @ibmvmc_handle_crq_init(%struct.ibmvmc_crq_msg* %9, %struct.crq_server_adapter* %10)
  br label %31

12:                                               ; preds = %2
  %13 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i32, i8*, ...) @dev_warn(i32 %15, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %18 = call i32 @ibmvmc_reset(%struct.crq_server_adapter* %17, i32 1)
  br label %31

19:                                               ; preds = %2
  %20 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %21 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %3, align 8
  %22 = call i32 @ibmvmc_crq_process(%struct.crq_server_adapter* %20, %struct.ibmvmc_crq_msg* %21)
  br label %31

23:                                               ; preds = %2
  %24 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %3, align 8
  %28 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, ...) @dev_warn(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %23, %19, %12, %8
  ret void
}

declare dso_local i32 @ibmvmc_handle_crq_init(%struct.ibmvmc_crq_msg*, %struct.crq_server_adapter*) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @ibmvmc_reset(%struct.crq_server_adapter*, i32) #1

declare dso_local i32 @ibmvmc_crq_process(%struct.crq_server_adapter*, %struct.ibmvmc_crq_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
