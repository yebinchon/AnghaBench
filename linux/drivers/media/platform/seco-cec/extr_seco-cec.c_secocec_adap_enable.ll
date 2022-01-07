; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/seco-cec/extr_seco-cec.c_secocec_adap_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/seco-cec/extr_seco-cec.c_secocec_adap_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.secocec_data = type { %struct.device* }
%struct.device = type { i32 }

@SECOCEC_STATUS_REG_1 = common dso_local global i32 0, align 4
@SECOCEC_ENABLE_REG_1 = common dso_local global i32 0, align 4
@SECOCEC_ENABLE_REG_1_CEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Device enabled\00", align 1
@SECOCEC_ENABLE_REG_1_IR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Device disabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32)* @secocec_adap_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secocec_adap_enable(%struct.cec_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cec_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.secocec_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %11 = call %struct.secocec_data* @cec_get_drvdata(%struct.cec_adapter* %10)
  store %struct.secocec_data* %11, %struct.secocec_data** %6, align 8
  %12 = load %struct.secocec_data*, %struct.secocec_data** %6, align 8
  %13 = getelementptr inbounds %struct.secocec_data, %struct.secocec_data* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %2
  %18 = load i32, i32* @SECOCEC_STATUS_REG_1, align 4
  %19 = call i32 @smb_rd16(i32 %18, i32* %8)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %68

23:                                               ; preds = %17
  %24 = load i32, i32* @SECOCEC_STATUS_REG_1, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @smb_wr16(i32 %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %68

30:                                               ; preds = %23
  %31 = load i32, i32* @SECOCEC_ENABLE_REG_1, align 4
  %32 = call i32 @smb_rd16(i32 %31, i32* %8)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %68

36:                                               ; preds = %30
  %37 = load i32, i32* @SECOCEC_ENABLE_REG_1, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @SECOCEC_ENABLE_REG_1_CEC, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @smb_wr16(i32 %37, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %68

45:                                               ; preds = %36
  %46 = load %struct.device*, %struct.device** %7, align 8
  %47 = call i32 @dev_dbg(%struct.device* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %67

48:                                               ; preds = %2
  %49 = load i32, i32* @SECOCEC_STATUS_REG_1, align 4
  %50 = call i32 @smb_rd16(i32 %49, i32* %8)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* @SECOCEC_STATUS_REG_1, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @smb_wr16(i32 %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* @SECOCEC_ENABLE_REG_1, align 4
  %55 = call i32 @smb_rd16(i32 %54, i32* %8)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* @SECOCEC_ENABLE_REG_1, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @SECOCEC_ENABLE_REG_1_CEC, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = load i32, i32* @SECOCEC_ENABLE_REG_1_IR, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = call i32 @smb_wr16(i32 %56, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load %struct.device*, %struct.device** %7, align 8
  %66 = call i32 @dev_dbg(%struct.device* %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %48, %45
  store i32 0, i32* %3, align 4
  br label %70

68:                                               ; preds = %44, %35, %29, %22
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %67
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.secocec_data* @cec_get_drvdata(%struct.cec_adapter*) #1

declare dso_local i32 @smb_rd16(i32, i32*) #1

declare dso_local i32 @smb_wr16(i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
