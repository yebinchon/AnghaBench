; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_api_cmd_hw_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_api_cmd_hw_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_api_cmd_chain = type { i32, %struct.hinic_hwif* }
%struct.hinic_hwif = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@RESTART = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@API_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_api_cmd_chain*)* @api_cmd_hw_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @api_cmd_hw_restart(%struct.hinic_api_cmd_chain* %0) #0 {
  %2 = alloca %struct.hinic_api_cmd_chain*, align 8
  %3 = alloca %struct.hinic_hwif*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hinic_api_cmd_chain* %0, %struct.hinic_api_cmd_chain** %2, align 8
  %8 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %2, align 8
  %9 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %8, i32 0, i32 1
  %10 = load %struct.hinic_hwif*, %struct.hinic_hwif** %9, align 8
  store %struct.hinic_hwif* %10, %struct.hinic_hwif** %3, align 8
  %11 = load i32, i32* @ETIMEDOUT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %2, align 8
  %14 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @HINIC_CSR_API_CMD_CHAIN_REQ_ADDR(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.hinic_hwif*, %struct.hinic_hwif** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @hinic_hwif_read_reg(%struct.hinic_hwif* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @RESTART, align 4
  %22 = call i32 @HINIC_API_CMD_CHAIN_REQ_CLEAR(i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @RESTART, align 4
  %24 = call i32 @HINIC_API_CMD_CHAIN_REQ_SET(i32 1, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load %struct.hinic_hwif*, %struct.hinic_hwif** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @hinic_hwif_write_reg(%struct.hinic_hwif* %27, i32 %28, i32 %29)
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i32, i32* @API_CMD_TIMEOUT, align 4
  %33 = call i64 @msecs_to_jiffies(i32 %32)
  %34 = add i64 %31, %33
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %46, %1
  %36 = load %struct.hinic_hwif*, %struct.hinic_hwif** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @hinic_hwif_read_reg(%struct.hinic_hwif* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @RESTART, align 4
  %41 = call i32 @HINIC_API_CMD_CHAIN_REQ_GET(i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %51

44:                                               ; preds = %35
  %45 = call i32 @msleep(i32 20)
  br label %46

46:                                               ; preds = %44
  %47 = load i64, i64* @jiffies, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @time_before(i64 %47, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %35, label %51

51:                                               ; preds = %46, %43
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @HINIC_CSR_API_CMD_CHAIN_REQ_ADDR(i32) #1

declare dso_local i32 @hinic_hwif_read_reg(%struct.hinic_hwif*, i32) #1

declare dso_local i32 @HINIC_API_CMD_CHAIN_REQ_CLEAR(i32, i32) #1

declare dso_local i32 @HINIC_API_CMD_CHAIN_REQ_SET(i32, i32) #1

declare dso_local i32 @hinic_hwif_write_reg(%struct.hinic_hwif*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @HINIC_API_CMD_CHAIN_REQ_GET(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
