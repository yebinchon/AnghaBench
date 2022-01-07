; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_fw_init_one_p1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_fw_init_one_p1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i64 }

@BNXT_FW_CAP_KONG_MB_CHNL = common dso_local global i32 0, align 4
@BNXT_FW_CAP_SHORT_CMD = common dso_local global i32 0, align 4
@BNXT_HWRM_MAX_REQ_LEN = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_fw_init_one_p1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_fw_init_one_p1(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  %5 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %6 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %5, i32 0, i32 0
  store i32 0, i32* %6, align 8
  %7 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %8 = call i32 @bnxt_hwrm_ver_get(%struct.bnxt* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %65

13:                                               ; preds = %1
  %14 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %15 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @BNXT_FW_CAP_KONG_MB_CHNL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %13
  %21 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %22 = call i32 @bnxt_alloc_kong_hwrm_resources(%struct.bnxt* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i32, i32* @BNXT_FW_CAP_KONG_MB_CHNL, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %29 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %25, %20
  br label %33

33:                                               ; preds = %32, %13
  %34 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %35 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @BNXT_FW_CAP_SHORT_CMD, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %33
  %41 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %42 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @BNXT_HWRM_MAX_REQ_LEN, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40, %33
  %47 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %48 = call i32 @bnxt_alloc_hwrm_short_cmd_req(%struct.bnxt* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %65

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %40
  %55 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %56 = call i32 @bnxt_hwrm_func_reset(%struct.bnxt* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %65

62:                                               ; preds = %54
  %63 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %64 = call i32 @bnxt_hwrm_fw_set_time(%struct.bnxt* %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %62, %59, %51, %11
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @bnxt_hwrm_ver_get(%struct.bnxt*) #1

declare dso_local i32 @bnxt_alloc_kong_hwrm_resources(%struct.bnxt*) #1

declare dso_local i32 @bnxt_alloc_hwrm_short_cmd_req(%struct.bnxt*) #1

declare dso_local i32 @bnxt_hwrm_func_reset(%struct.bnxt*) #1

declare dso_local i32 @bnxt_hwrm_fw_set_time(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
