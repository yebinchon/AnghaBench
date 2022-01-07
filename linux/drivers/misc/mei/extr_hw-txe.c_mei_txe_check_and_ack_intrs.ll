; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_check_and_ack_intrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_check_and_ack_intrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.mei_txe_hw = type { i32 }

@HHISR_REG = common dso_local global i32 0, align 4
@IPC_HHIER_MSK = common dso_local global i32 0, align 4
@HISR_REG = common dso_local global i32 0, align 4
@IPC_HHIER_SEC = common dso_local global i32 0, align 4
@SEC_IPC_HOST_INT_STATUS_REG = common dso_local global i32 0, align 4
@HISR_INT_STS_MSK = common dso_local global i32 0, align 4
@SEC_IPC_HOST_INT_STATUS_PENDING = common dso_local global i32 0, align 4
@SEC_IPC_HOST_INT_STATUS_IN_RDY = common dso_local global i32 0, align 4
@TXE_INTR_IN_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*, i32)* @mei_txe_check_and_ack_intrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_txe_check_and_ack_intrs(%struct.mei_device* %0, i32 %1) #0 {
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mei_txe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %12 = call %struct.mei_txe_hw* @to_txe_hw(%struct.mei_device* %11)
  store %struct.mei_txe_hw* %12, %struct.mei_txe_hw** %5, align 8
  %13 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %5, align 8
  %14 = load i32, i32* @HHISR_REG, align 4
  %15 = call i32 @mei_txe_br_reg_read(%struct.mei_txe_hw* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @IPC_HHIER_MSK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %99

22:                                               ; preds = %2
  %23 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %5, align 8
  %24 = load i32, i32* @HISR_REG, align 4
  %25 = call i32 @mei_txe_br_reg_read(%struct.mei_txe_hw* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %27 = call i32 @mei_txe_aliveness_get(%struct.mei_device* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @IPC_HHIER_SEC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %5, align 8
  %37 = load i32, i32* @SEC_IPC_HOST_INT_STATUS_REG, align 4
  %38 = call i32 @mei_txe_sec_reg_read_silent(%struct.mei_txe_hw* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  br label %44

39:                                               ; preds = %32, %22
  store i32 0, i32* %8, align 4
  %40 = load i32, i32* @IPC_HHIER_SEC, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @HISR_INT_STS_MSK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @SEC_IPC_HOST_INT_STATUS_PENDING, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %52, %47, %44
  %58 = phi i1 [ true, %47 ], [ true, %44 ], [ %56, %52 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %98

62:                                               ; preds = %57
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %98

65:                                               ; preds = %62
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @HISR_INT_STS_MSK, align 4
  %68 = and i32 %66, %67
  %69 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %5, align 8
  %70 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @SEC_IPC_HOST_INT_STATUS_IN_RDY, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %65
  %78 = load i32, i32* @TXE_INTR_IN_READY, align 4
  %79 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %5, align 8
  %80 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %77, %65
  %84 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %85 = call i32 @mei_txe_intr_disable(%struct.mei_device* %84)
  %86 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %5, align 8
  %87 = load i32, i32* @SEC_IPC_HOST_INT_STATUS_REG, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @mei_txe_sec_reg_write_silent(%struct.mei_txe_hw* %86, i32 %87, i32 %88)
  %90 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %5, align 8
  %91 = load i32, i32* @HISR_REG, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @mei_txe_br_reg_write(%struct.mei_txe_hw* %90, i32 %91, i32 %92)
  %94 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %5, align 8
  %95 = load i32, i32* @HHISR_REG, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @mei_txe_br_reg_write(%struct.mei_txe_hw* %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %83, %62, %57
  br label %99

99:                                               ; preds = %98, %21
  %100 = load i32, i32* %10, align 4
  ret i32 %100
}

declare dso_local %struct.mei_txe_hw* @to_txe_hw(%struct.mei_device*) #1

declare dso_local i32 @mei_txe_br_reg_read(%struct.mei_txe_hw*, i32) #1

declare dso_local i32 @mei_txe_aliveness_get(%struct.mei_device*) #1

declare dso_local i32 @mei_txe_sec_reg_read_silent(%struct.mei_txe_hw*, i32) #1

declare dso_local i32 @mei_txe_intr_disable(%struct.mei_device*) #1

declare dso_local i32 @mei_txe_sec_reg_write_silent(%struct.mei_txe_hw*, i32, i32) #1

declare dso_local i32 @mei_txe_br_reg_write(%struct.mei_txe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
