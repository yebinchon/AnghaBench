; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_dev = type { i32, i32 }
%struct.crq_server_adapter = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Entering remove for UA 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_dev*)* @ibmvmc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvmc_remove(%struct.vio_dev* %0) #0 {
  %2 = alloca %struct.vio_dev*, align 8
  %3 = alloca %struct.crq_server_adapter*, align 8
  store %struct.vio_dev* %0, %struct.vio_dev** %2, align 8
  %4 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  %5 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %4, i32 0, i32 1
  %6 = call %struct.crq_server_adapter* @dev_get_drvdata(i32* %5)
  store %struct.crq_server_adapter* %6, %struct.crq_server_adapter** %3, align 8
  %7 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  %11 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_info(i32 %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %15 = call i32 @ibmvmc_release_crq_queue(%struct.crq_server_adapter* %14)
  ret i32 0
}

declare dso_local %struct.crq_server_adapter* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @ibmvmc_release_crq_queue(%struct.crq_server_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
