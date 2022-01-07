; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ulp.c_bnxt_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ulp.c_bnxt_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_en_dev = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.bnxt_fw_msg = type { i64, i32, i32, i32, %struct.input* }
%struct.input = type { i32 }
%struct.bnxt = type { i32, %struct.output*, i32, i64 }
%struct.output = type { i32 }

@BNXT_ROCE_ULP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_en_dev*, i32, %struct.bnxt_fw_msg*)* @bnxt_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_send_msg(%struct.bnxt_en_dev* %0, i32 %1, %struct.bnxt_fw_msg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt_en_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnxt_fw_msg*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.bnxt*, align 8
  %10 = alloca %struct.input*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.output*, align 8
  %13 = alloca i64, align 8
  store %struct.bnxt_en_dev* %0, %struct.bnxt_en_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.bnxt_fw_msg* %2, %struct.bnxt_fw_msg** %7, align 8
  %14 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %5, align 8
  %15 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %8, align 8
  %17 = load %struct.net_device*, %struct.net_device** %8, align 8
  %18 = call %struct.bnxt* @netdev_priv(%struct.net_device* %17)
  store %struct.bnxt* %18, %struct.bnxt** %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @BNXT_ROCE_ULP, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %24 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %85

30:                                               ; preds = %22, %3
  %31 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %32 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.bnxt_fw_msg*, %struct.bnxt_fw_msg** %7, align 8
  %35 = getelementptr inbounds %struct.bnxt_fw_msg, %struct.bnxt_fw_msg* %34, i32 0, i32 4
  %36 = load %struct.input*, %struct.input** %35, align 8
  store %struct.input* %36, %struct.input** %10, align 8
  %37 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %38 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @cpu_to_le64(i32 %39)
  %41 = load %struct.input*, %struct.input** %10, align 8
  %42 = getelementptr inbounds %struct.input, %struct.input* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %44 = load %struct.bnxt_fw_msg*, %struct.bnxt_fw_msg** %7, align 8
  %45 = getelementptr inbounds %struct.bnxt_fw_msg, %struct.bnxt_fw_msg* %44, i32 0, i32 4
  %46 = load %struct.input*, %struct.input** %45, align 8
  %47 = load %struct.bnxt_fw_msg*, %struct.bnxt_fw_msg** %7, align 8
  %48 = getelementptr inbounds %struct.bnxt_fw_msg, %struct.bnxt_fw_msg* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.bnxt_fw_msg*, %struct.bnxt_fw_msg** %7, align 8
  %51 = getelementptr inbounds %struct.bnxt_fw_msg, %struct.bnxt_fw_msg* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @_hwrm_send_message(%struct.bnxt* %43, %struct.input* %46, i32 %49, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %80, label %56

56:                                               ; preds = %30
  %57 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %58 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %57, i32 0, i32 1
  %59 = load %struct.output*, %struct.output** %58, align 8
  store %struct.output* %59, %struct.output** %12, align 8
  %60 = load %struct.output*, %struct.output** %12, align 8
  %61 = getelementptr inbounds %struct.output, %struct.output* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @le16_to_cpu(i32 %62)
  store i64 %63, i64* %13, align 8
  %64 = load %struct.bnxt_fw_msg*, %struct.bnxt_fw_msg** %7, align 8
  %65 = getelementptr inbounds %struct.bnxt_fw_msg, %struct.bnxt_fw_msg* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %13, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %56
  %70 = load %struct.bnxt_fw_msg*, %struct.bnxt_fw_msg** %7, align 8
  %71 = getelementptr inbounds %struct.bnxt_fw_msg, %struct.bnxt_fw_msg* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %13, align 8
  br label %73

73:                                               ; preds = %69, %56
  %74 = load %struct.bnxt_fw_msg*, %struct.bnxt_fw_msg** %7, align 8
  %75 = getelementptr inbounds %struct.bnxt_fw_msg, %struct.bnxt_fw_msg* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.output*, %struct.output** %12, align 8
  %78 = load i64, i64* %13, align 8
  %79 = call i32 @memcpy(i32 %76, %struct.output* %77, i64 %78)
  br label %80

80:                                               ; preds = %73, %30
  %81 = load %struct.bnxt*, %struct.bnxt** %9, align 8
  %82 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %80, %27
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.input*, i32, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, %struct.output*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
