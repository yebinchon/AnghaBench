; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_update_mfw_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_update_mfw_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.bnx2x = type { i32 }

@drv_info = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@DRV_MODULE_VERSION = common dso_local global i32 0, align 4
@XSEM_REG_PRAM = common dso_local global i32 0, align 4
@FIRST_DUMP_VALID = common dso_local global i32 0, align 4
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"A valid On-Chip MFW dump found on 1st partition\0A\00", align 1
@SECOND_DUMP_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"A valid On-Chip MFW dump found on 2nd partition\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_update_mfw_dump(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %5 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %6 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_3__* @drv_info to { i64, i64 }*), i32 0, i32 0), align 4
  %7 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.TYPE_3__* @drv_info to { i64, i64 }*), i32 0, i32 1), align 4
  %8 = call i32 @SHMEM2_HAS(%struct.bnx2x* %5, i64 %6, i64 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %47

11:                                               ; preds = %1
  %12 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @drv_info, i32 0, i32 3), align 4
  %14 = call i64 (...) @ktime_get_real_seconds()
  %15 = trunc i64 %14 to i32
  %16 = call i32 @SHMEM2_WR(%struct.bnx2x* %12, i32 %13, i32 %15)
  %17 = load i32, i32* @DRV_MODULE_VERSION, align 4
  %18 = call i32 @bnx2x_update_mng_version_utility(i32 %17, i32 1)
  store i32 %18, i32* %3, align 4
  %19 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @drv_info, i32 0, i32 2), align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @SHMEM2_WR(%struct.bnx2x* %19, i32 %20, i32 %21)
  %23 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @drv_info, i32 0, i32 1), align 4
  %25 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %26 = load i32, i32* @XSEM_REG_PRAM, align 4
  %27 = call i32 @REG_RD(%struct.bnx2x* %25, i32 %26)
  %28 = call i32 @SHMEM2_WR(%struct.bnx2x* %23, i32 %24, i32 %27)
  %29 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @drv_info, i32 0, i32 0), align 4
  %31 = call i32 @SHMEM2_RD(%struct.bnx2x* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @FIRST_DUMP_VALID, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %11
  %37 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %38 = call i32 @DP(i32 %37, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %11
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @SECOND_DUMP_VALID, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %46 = call i32 @DP(i32 %45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %10, %44, %39
  ret void
}

declare dso_local i32 @SHMEM2_HAS(%struct.bnx2x*, i64, i64) #1

declare dso_local i32 @SHMEM2_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i64 @ktime_get_real_seconds(...) #1

declare dso_local i32 @bnx2x_update_mng_version_utility(i32, i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @SHMEM2_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @DP(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
