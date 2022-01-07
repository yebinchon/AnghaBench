; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_fw_reset_writel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_fw_reset_writel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, %struct.bnxt_fw_health* }
%struct.bnxt_fw_health = type { i32*, i32*, i32* }

@BNXT_GRC_BASE_MASK = common dso_local global i32 0, align 4
@BNXT_GRCPF_REG_WINDOW_BASE_OUT = common dso_local global i32 0, align 4
@BNXT_GRC_OFFSET_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, i32)* @bnxt_fw_reset_writel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_fw_reset_writel(%struct.bnxt* %0, i32 %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt_fw_health*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 3
  %13 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %12, align 8
  store %struct.bnxt_fw_health* %13, %struct.bnxt_fw_health** %5, align 8
  %14 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %15 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %22 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %29 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @BNXT_FW_HEALTH_REG_TYPE(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @BNXT_FW_HEALTH_REG_OFF(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  switch i32 %39, label %78 [
    i32 129, label %40
    i32 128, label %47
    i32 131, label %62
    i32 130, label %70
  ]

40:                                               ; preds = %2
  %41 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %42 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @pci_write_config_dword(i32 %43, i32 %44, i32 %45)
  br label %78

47:                                               ; preds = %2
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @BNXT_GRC_BASE_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %52 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @BNXT_GRCPF_REG_WINDOW_BASE_OUT, align 4
  %55 = add nsw i32 %53, %54
  %56 = add nsw i32 %55, 4
  %57 = call i32 @writel(i32 %50, i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @BNXT_GRC_OFFSET_MASK, align 4
  %60 = and i32 %58, %59
  %61 = add nsw i32 %60, 8192
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %2, %47
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %65 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %66, %67
  %69 = call i32 @writel(i32 %63, i32 %68)
  br label %78

70:                                               ; preds = %2
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %73 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %74, %75
  %77 = call i32 @writel(i32 %71, i32 %76)
  br label %78

78:                                               ; preds = %2, %70, %62, %40
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %83 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @pci_read_config_dword(i32 %84, i32 0, i32* %7)
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @msleep(i32 %86)
  br label %88

88:                                               ; preds = %81, %78
  ret void
}

declare dso_local i32 @BNXT_FW_HEALTH_REG_TYPE(i32) #1

declare dso_local i32 @BNXT_FW_HEALTH_REG_OFF(i32) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
