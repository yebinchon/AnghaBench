; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_hinic_api_cmd_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_hinic_api_cmd_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_api_cmd_chain = type { i32 }

@HINIC_API_CMD_WRITE_TO_MGMT_CPU = common dso_local global i32 0, align 4
@HINIC_API_CMD_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hinic_api_cmd_free(%struct.hinic_api_cmd_chain** %0) #0 {
  %2 = alloca %struct.hinic_api_cmd_chain**, align 8
  %3 = alloca i32, align 4
  store %struct.hinic_api_cmd_chain** %0, %struct.hinic_api_cmd_chain*** %2, align 8
  %4 = load i32, i32* @HINIC_API_CMD_WRITE_TO_MGMT_CPU, align 4
  store i32 %4, i32* %3, align 4
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @HINIC_API_CMD_MAX, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @HINIC_API_CMD_WRITE_TO_MGMT_CPU, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %21

14:                                               ; preds = %9
  %15 = load %struct.hinic_api_cmd_chain**, %struct.hinic_api_cmd_chain*** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %15, i64 %17
  %19 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %18, align 8
  %20 = call i32 @api_cmd_destroy_chain(%struct.hinic_api_cmd_chain* %19)
  br label %21

21:                                               ; preds = %14, %13
  %22 = load i32, i32* %3, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %5

24:                                               ; preds = %5
  ret void
}

declare dso_local i32 @api_cmd_destroy_chain(%struct.hinic_api_cmd_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
