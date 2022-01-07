; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_map_fw_health_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_map_fw_health_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i64, %struct.bnxt_fw_health* }
%struct.bnxt_fw_health = type { i32*, i64* }

@BNXT_FW_HEALTH_REG_TYPE_GRC = common dso_local global i64 0, align 8
@BNXT_GRC_BASE_MASK = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@BNXT_FW_HEALTH_WIN_BASE = common dso_local global i64 0, align 8
@BNXT_GRC_OFFSET_MASK = common dso_local global i32 0, align 4
@BNXT_GRCPF_REG_WINDOW_BASE_OUT = common dso_local global i64 0, align 8
@BNXT_FW_HEALTH_WIN_MAP_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_map_fw_health_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_map_fw_health_regs(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.bnxt_fw_health*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  %8 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %9 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %8, i32 0, i32 1
  %10 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %9, align 8
  store %struct.bnxt_fw_health* %10, %struct.bnxt_fw_health** %4, align 8
  store i32 -1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %56, %1
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %59

14:                                               ; preds = %11
  %15 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %4, align 8
  %16 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @BNXT_FW_HEALTH_REG_TYPE(i32 %22)
  %24 = load i64, i64* @BNXT_FW_HEALTH_REG_TYPE_GRC, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %56

27:                                               ; preds = %14
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @BNXT_GRC_BASE_MASK, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @BNXT_GRC_BASE_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @ERANGE, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %73

43:                                               ; preds = %34
  %44 = load i64, i64* @BNXT_FW_HEALTH_WIN_BASE, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @BNXT_GRC_OFFSET_MASK, align 4
  %47 = and i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %44, %48
  %50 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %4, align 8
  %51 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  store i64 %49, i64* %55, align 8
  br label %56

56:                                               ; preds = %43, %26
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %11

59:                                               ; preds = %11
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %73

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %66 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @BNXT_GRCPF_REG_WINDOW_BASE_OUT, align 8
  %69 = add nsw i64 %67, %68
  %70 = load i64, i64* @BNXT_FW_HEALTH_WIN_MAP_OFF, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 %64, i64 %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %63, %62, %40
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @BNXT_FW_HEALTH_REG_TYPE(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
