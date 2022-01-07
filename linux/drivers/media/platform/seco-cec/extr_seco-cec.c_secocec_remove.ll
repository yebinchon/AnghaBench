; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/seco-cec/extr_seco-cec.c_secocec_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/seco-cec/extr_seco-cec.c_secocec_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.secocec_data = type { i32, i32, i64 }

@SECOCEC_ENABLE_REG_1 = common dso_local global i32 0, align 4
@SECOCEC_ENABLE_REG_1_IR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"IR disabled\00", align 1
@BRA_SMB_BASE_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"CEC device removed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @secocec_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secocec_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.secocec_data*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.secocec_data* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.secocec_data* %6, %struct.secocec_data** %3, align 8
  %7 = load %struct.secocec_data*, %struct.secocec_data** %3, align 8
  %8 = getelementptr inbounds %struct.secocec_data, %struct.secocec_data* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load i32, i32* @SECOCEC_ENABLE_REG_1, align 4
  %13 = call i32 @smb_rd16(i32 %12, i32* %4)
  %14 = load i32, i32* @SECOCEC_ENABLE_REG_1, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SECOCEC_ENABLE_REG_1_IR, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = call i32 @smb_wr16(i32 %14, i32 %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @dev_dbg(i32* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %11, %1
  %24 = load %struct.secocec_data*, %struct.secocec_data** %3, align 8
  %25 = getelementptr inbounds %struct.secocec_data, %struct.secocec_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cec_notifier_cec_adap_unregister(i32 %26)
  %28 = load %struct.secocec_data*, %struct.secocec_data** %3, align 8
  %29 = getelementptr inbounds %struct.secocec_data, %struct.secocec_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @cec_unregister_adapter(i32 %30)
  %32 = load i32, i32* @BRA_SMB_BASE_ADDR, align 4
  %33 = call i32 @release_region(i32 %32, i32 7)
  %34 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 @dev_dbg(i32* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.secocec_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @smb_rd16(i32, i32*) #1

declare dso_local i32 @smb_wr16(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @cec_notifier_cec_adap_unregister(i32) #1

declare dso_local i32 @cec_unregister_adapter(i32) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
