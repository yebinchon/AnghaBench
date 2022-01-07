; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_cmdq.c_cmdq_set_arm_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_cmdq.c_cmdq_set_arm_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_cmdq = type { i32, i32, %struct.hinic_wq* }
%struct.hinic_wq = type { i32, i64 }
%struct.hinic_cmdq_wqe = type { i32 }
%struct.hinic_hw_wqe = type { %struct.hinic_cmdq_wqe }

@WQE_SCMD_SIZE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CMDQ_CMD_SYNC_DIRECT_RESP = common dso_local global i32 0, align 4
@HINIC_CMD_ACK_TYPE_CMDQ = common dso_local global i32 0, align 4
@HINIC_MOD_COMM = common dso_local global i32 0, align 4
@CMDQ_SET_ARM_CMD = common dso_local global i32 0, align 4
@HINIC_CMDQ_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_cmdq*, i8*, i64)* @cmdq_set_arm_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmdq_set_arm_bit(%struct.hinic_cmdq* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hinic_cmdq*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hinic_cmdq_wqe*, align 8
  %9 = alloca %struct.hinic_cmdq_wqe, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.hinic_wq*, align 8
  %13 = alloca %struct.hinic_hw_wqe*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hinic_cmdq* %0, %struct.hinic_cmdq** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %5, align 8
  %17 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %16, i32 0, i32 2
  %18 = load %struct.hinic_wq*, %struct.hinic_wq** %17, align 8
  store %struct.hinic_wq* %18, %struct.hinic_wq** %12, align 8
  %19 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %5, align 8
  %20 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %19, i32 0, i32 1
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.hinic_wq*, %struct.hinic_wq** %12, align 8
  %23 = load i32, i32* @WQE_SCMD_SIZE, align 4
  %24 = call %struct.hinic_hw_wqe* @hinic_get_wqe(%struct.hinic_wq* %22, i32 %23, i64* %10)
  store %struct.hinic_hw_wqe* %24, %struct.hinic_hw_wqe** %13, align 8
  %25 = load %struct.hinic_hw_wqe*, %struct.hinic_hw_wqe** %13, align 8
  %26 = call i64 @IS_ERR(%struct.hinic_hw_wqe* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %5, align 8
  %30 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %29, i32 0, i32 1
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %93

34:                                               ; preds = %3
  %35 = load %struct.hinic_hw_wqe*, %struct.hinic_hw_wqe** %13, align 8
  %36 = getelementptr inbounds %struct.hinic_hw_wqe, %struct.hinic_hw_wqe* %35, i32 0, i32 0
  store %struct.hinic_cmdq_wqe* %36, %struct.hinic_cmdq_wqe** %8, align 8
  %37 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %5, align 8
  %38 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* @WQE_SCMD_SIZE, align 4
  %41 = load %struct.hinic_wq*, %struct.hinic_wq** %12, align 8
  %42 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ALIGN(i32 %40, i32 %43)
  %45 = load %struct.hinic_wq*, %struct.hinic_wq** %12, align 8
  %46 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sdiv i32 %44, %47
  store i32 %48, i32* %15, align 4
  %49 = load i64, i64* %10, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.hinic_wq*, %struct.hinic_wq** %12, align 8
  %55 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp sge i64 %53, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %34
  %59 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %5, align 8
  %60 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %5, align 8
  %66 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.hinic_wq*, %struct.hinic_wq** %12, align 8
  %68 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = sub nsw i64 %70, %69
  store i64 %71, i64* %11, align 8
  br label %72

72:                                               ; preds = %58, %34
  %73 = load i32, i32* @CMDQ_CMD_SYNC_DIRECT_RESP, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @HINIC_CMD_ACK_TYPE_CMDQ, align 4
  %78 = load i32, i32* @HINIC_MOD_COMM, align 4
  %79 = load i32, i32* @CMDQ_SET_ARM_CMD, align 4
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @cmdq_set_direct_wqe(%struct.hinic_cmdq_wqe* %9, i32 %73, i8* %74, i64 %75, i32* null, i32 %76, i32 %77, i32 %78, i32 %79, i64 %80)
  %82 = load i32, i32* @WQE_SCMD_SIZE, align 4
  %83 = call i32 @hinic_cpu_to_be32(%struct.hinic_cmdq_wqe* %9, i32 %82)
  %84 = load %struct.hinic_cmdq_wqe*, %struct.hinic_cmdq_wqe** %8, align 8
  %85 = call i32 @cmdq_wqe_fill(%struct.hinic_cmdq_wqe* %84, %struct.hinic_cmdq_wqe* %9)
  %86 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %5, align 8
  %87 = load i32, i32* @HINIC_CMDQ_SYNC, align 4
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @cmdq_set_db(%struct.hinic_cmdq* %86, i32 %87, i64 %88)
  %90 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %5, align 8
  %91 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %90, i32 0, i32 1
  %92 = call i32 @spin_unlock(i32* %91)
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %72, %28
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.hinic_hw_wqe* @hinic_get_wqe(%struct.hinic_wq*, i32, i64*) #1

declare dso_local i64 @IS_ERR(%struct.hinic_hw_wqe*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @cmdq_set_direct_wqe(%struct.hinic_cmdq_wqe*, i32, i8*, i64, i32*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @hinic_cpu_to_be32(%struct.hinic_cmdq_wqe*, i32) #1

declare dso_local i32 @cmdq_wqe_fill(%struct.hinic_cmdq_wqe*, %struct.hinic_cmdq_wqe*) #1

declare dso_local i32 @cmdq_set_db(%struct.hinic_cmdq*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
