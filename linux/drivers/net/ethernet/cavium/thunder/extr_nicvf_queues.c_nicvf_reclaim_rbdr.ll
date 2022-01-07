; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_reclaim_rbdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_reclaim_rbdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32 }
%struct.rbdr = type { i32, i32 }

@NIC_QSET_RBDR_0_1_HEAD = common dso_local global i32 0, align 4
@NIC_QSET_RBDR_0_1_TAIL = common dso_local global i32 0, align 4
@NIC_QSET_RBDR_0_1_STATUS0 = common dso_local global i32 0, align 4
@NIC_QSET_RBDR_0_1_CFG = common dso_local global i32 0, align 4
@NICVF_RBDR_RESET = common dso_local global i32 0, align 4
@NIC_QSET_RBDR_0_1_PREFETCH_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed polling on prefetch status\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicvf*, %struct.rbdr*, i32)* @nicvf_reclaim_rbdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_reclaim_rbdr(%struct.nicvf* %0, %struct.rbdr* %1, i32 %2) #0 {
  %4 = alloca %struct.nicvf*, align 8
  %5 = alloca %struct.rbdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %4, align 8
  store %struct.rbdr* %1, %struct.rbdr** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 10, i32* %9, align 4
  %10 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %11 = load i32, i32* @NIC_QSET_RBDR_0_1_HEAD, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %10, i32 %11, i32 %12)
  %14 = ashr i32 %13, 3
  %15 = load %struct.rbdr*, %struct.rbdr** %5, align 8
  %16 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %18 = load i32, i32* @NIC_QSET_RBDR_0_1_TAIL, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %17, i32 %18, i32 %19)
  %21 = ashr i32 %20, 3
  %22 = load %struct.rbdr*, %struct.rbdr** %5, align 8
  %23 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %25 = load i32, i32* @NIC_QSET_RBDR_0_1_STATUS0, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %24, i32 %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = ashr i32 %28, 62
  %30 = and i32 %29, 3
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %38

32:                                               ; preds = %3
  %33 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %34 = load i32, i32* @NIC_QSET_RBDR_0_1_CFG, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @NICVF_RBDR_RESET, align 4
  %37 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %33, i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %3
  %39 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %40 = load i32, i32* @NIC_QSET_RBDR_0_1_CFG, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %39, i32 %40, i32 %41, i32 0)
  %43 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @NIC_QSET_RBDR_0_1_STATUS0, align 4
  %46 = call i64 @nicvf_poll_reg(%struct.nicvf* %43, i32 %44, i32 %45, i32 62, i32 2, i32 0)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %95

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %71
  %51 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %52 = load i32, i32* @NIC_QSET_RBDR_0_1_PREFETCH_STATUS, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %51, i32 %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = ashr i32 %56, 32
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %72

60:                                               ; preds = %50
  %61 = call i32 @usleep_range(i32 1000, i32 2000)
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %68 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @netdev_err(i32 %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %95

71:                                               ; preds = %60
  br label %50

72:                                               ; preds = %59
  %73 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %74 = load i32, i32* @NIC_QSET_RBDR_0_1_CFG, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @NICVF_RBDR_RESET, align 4
  %77 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %73, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @NIC_QSET_RBDR_0_1_STATUS0, align 4
  %81 = call i64 @nicvf_poll_reg(%struct.nicvf* %78, i32 %79, i32 %80, i32 62, i32 2, i32 2)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  br label %95

84:                                               ; preds = %72
  %85 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %86 = load i32, i32* @NIC_QSET_RBDR_0_1_CFG, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %85, i32 %86, i32 %87, i32 0)
  %89 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @NIC_QSET_RBDR_0_1_STATUS0, align 4
  %92 = call i64 @nicvf_poll_reg(%struct.nicvf* %89, i32 %90, i32 %91, i32 62, i32 2, i32 0)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %48, %66, %83, %94, %84
  ret void
}

declare dso_local i32 @nicvf_queue_reg_read(%struct.nicvf*, i32, i32) #1

declare dso_local i32 @nicvf_queue_reg_write(%struct.nicvf*, i32, i32, i32) #1

declare dso_local i64 @nicvf_poll_reg(%struct.nicvf*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
