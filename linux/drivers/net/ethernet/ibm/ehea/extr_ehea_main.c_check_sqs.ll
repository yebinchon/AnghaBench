; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_check_sqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_check_sqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_port = type { i32, i32, %struct.ehea_port_res* }
%struct.ehea_port_res = type { i64, i32, i32, i32 }
%struct.ehea_swqe = type { i32, i32, i32 }

@SWQE_HEADER_SIZE = common dso_local global i32 0, align 4
@EHEA_SWQE_PURGE = common dso_local global i32 0, align 4
@SWQE_RESTART_CHECK = common dso_local global i32 0, align 4
@EHEA_SWQE_SIGNALLED_COMPLETION = common dso_local global i32 0, align 4
@EHEA_SWQE_IMM_DATA_PRESENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"HW/SW queues out of sync\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehea_port*)* @check_sqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_sqs(%struct.ehea_port* %0) #0 {
  %2 = alloca %struct.ehea_port*, align 8
  %3 = alloca %struct.ehea_swqe*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ehea_port_res*, align 8
  %7 = alloca i32, align 4
  store %struct.ehea_port* %0, %struct.ehea_port** %2, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %75, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %11 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %78

14:                                               ; preds = %8
  %15 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %16 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %15, i32 0, i32 2
  %17 = load %struct.ehea_port_res*, %struct.ehea_port_res** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %17, i64 %19
  store %struct.ehea_port_res* %20, %struct.ehea_port_res** %6, align 8
  %21 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %22 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.ehea_swqe* @ehea_get_swqe(i32 %23, i32* %4)
  store %struct.ehea_swqe* %24, %struct.ehea_swqe** %3, align 8
  %25 = load %struct.ehea_swqe*, %struct.ehea_swqe** %3, align 8
  %26 = load i32, i32* @SWQE_HEADER_SIZE, align 4
  %27 = call i32 @memset(%struct.ehea_swqe* %25, i32 0, i32 %26)
  %28 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %29 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %28, i32 0, i32 3
  %30 = call i32 @atomic_dec(i32* %29)
  %31 = load i32, i32* @EHEA_SWQE_PURGE, align 4
  %32 = load %struct.ehea_swqe*, %struct.ehea_swqe** %3, align 8
  %33 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @SWQE_RESTART_CHECK, align 4
  %37 = load %struct.ehea_swqe*, %struct.ehea_swqe** %3, align 8
  %38 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @EHEA_SWQE_SIGNALLED_COMPLETION, align 4
  %40 = load %struct.ehea_swqe*, %struct.ehea_swqe** %3, align 8
  %41 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @EHEA_SWQE_IMM_DATA_PRESENT, align 4
  %45 = load %struct.ehea_swqe*, %struct.ehea_swqe** %3, align 8
  %46 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.ehea_swqe*, %struct.ehea_swqe** %3, align 8
  %50 = getelementptr inbounds %struct.ehea_swqe, %struct.ehea_swqe* %49, i32 0, i32 0
  store i32 80, i32* %50, align 4
  %51 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %52 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ehea_swqe*, %struct.ehea_swqe** %3, align 8
  %55 = call i32 @ehea_post_swqe(i32 %53, %struct.ehea_swqe* %54)
  %56 = load %struct.ehea_port*, %struct.ehea_port** %2, align 8
  %57 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %60 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @msecs_to_jiffies(i32 100)
  %65 = call i32 @wait_event_timeout(i32 %58, i32 %63, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %14
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %70 = load %struct.ehea_port_res*, %struct.ehea_port_res** %6, align 8
  %71 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ehea_schedule_port_reset(i32 %72)
  br label %78

74:                                               ; preds = %14
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %8

78:                                               ; preds = %68, %8
  ret void
}

declare dso_local %struct.ehea_swqe* @ehea_get_swqe(i32, i32*) #1

declare dso_local i32 @memset(%struct.ehea_swqe*, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @ehea_post_swqe(i32, %struct.ehea_swqe*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ehea_schedule_port_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
