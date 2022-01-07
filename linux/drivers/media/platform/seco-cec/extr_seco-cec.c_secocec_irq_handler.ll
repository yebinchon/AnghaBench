; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/seco-cec/extr_seco-cec.c_secocec_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/seco-cec/extr_seco-cec.c_secocec_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secocec_data = type { i32, %struct.device* }
%struct.device = type { i32 }

@SECOCEC_STATUS_REG_1 = common dso_local global i32 0, align 4
@SECOCEC_STATUS_REG_1_CEC = common dso_local global i32 0, align 4
@SECOCEC_STATUS = common dso_local global i32 0, align 4
@SECOCEC_STATUS_MSG_RECEIVED_MASK = common dso_local global i32 0, align 4
@SECOCEC_STATUS_MSG_SENT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Message not received or sent, but interrupt fired\00", align 1
@SECOCEC_STATUS_REG_1_IR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"IRQ: R/W SMBus operation failed (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @secocec_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secocec_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.secocec_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.secocec_data*
  store %struct.secocec_data* %13, %struct.secocec_data** %6, align 8
  %14 = load %struct.secocec_data*, %struct.secocec_data** %6, align 8
  %15 = getelementptr inbounds %struct.secocec_data, %struct.secocec_data* %14, i32 0, i32 1
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %7, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* @SECOCEC_STATUS_REG_1, align 4
  %18 = call i32 @smb_rd16(i32 %17, i32* %8)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %92

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @SECOCEC_STATUS_REG_1_CEC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %72

27:                                               ; preds = %22
  %28 = load i32, i32* @SECOCEC_STATUS, align 4
  %29 = call i32 @smb_rd16(i32 %28, i32* %9)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %92

33:                                               ; preds = %27
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @SECOCEC_STATUS_MSG_RECEIVED_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.secocec_data*, %struct.secocec_data** %6, align 8
  %40 = getelementptr inbounds %struct.secocec_data, %struct.secocec_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @secocec_rx_done(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %33
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @SECOCEC_STATUS_MSG_SENT_MASK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.secocec_data*, %struct.secocec_data** %6, align 8
  %51 = getelementptr inbounds %struct.secocec_data, %struct.secocec_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @secocec_tx_done(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %44
  %56 = load i32, i32* %9, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* @SECOCEC_STATUS_MSG_SENT_MASK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load i32, i32* %9, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* @SECOCEC_STATUS_MSG_RECEIVED_MASK, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load %struct.device*, %struct.device** %7, align 8
  %69 = call i32 @dev_warn_once(%struct.device* %68, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %61, %55
  %71 = load i32, i32* @SECOCEC_STATUS_REG_1_CEC, align 4
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %70, %22
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @SECOCEC_STATUS_REG_1_IR, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32, i32* @SECOCEC_STATUS_REG_1_IR, align 4
  %79 = load i32, i32* %10, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %10, align 4
  %81 = load %struct.secocec_data*, %struct.secocec_data** %6, align 8
  %82 = call i32 @secocec_ir_rx(%struct.secocec_data* %81)
  br label %83

83:                                               ; preds = %77, %72
  %84 = load i32, i32* @SECOCEC_STATUS_REG_1, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @smb_wr16(i32 %84, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %92

90:                                               ; preds = %83
  %91 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %91, i32* %3, align 4
  br label %103

92:                                               ; preds = %89, %32, %21
  %93 = load %struct.device*, %struct.device** %7, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @dev_err_once(%struct.device* %93, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @SECOCEC_STATUS_REG_1_CEC, align 4
  %97 = load i32, i32* @SECOCEC_STATUS_REG_1_IR, align 4
  %98 = or i32 %96, %97
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* @SECOCEC_STATUS_REG_1, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @smb_wr16(i32 %99, i32 %100)
  %102 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %92, %90
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @smb_rd16(i32, i32*) #1

declare dso_local i32 @secocec_rx_done(i32, i32) #1

declare dso_local i32 @secocec_tx_done(i32, i32) #1

declare dso_local i32 @dev_warn_once(%struct.device*, i8*) #1

declare dso_local i32 @secocec_ir_rx(%struct.secocec_data*) #1

declare dso_local i32 @smb_wr16(i32, i32) #1

declare dso_local i32 @dev_err_once(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
