; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_fw_health_readl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_fw_health_readl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, %struct.bnxt_fw_health* }
%struct.bnxt_fw_health = type { i32*, i32*, i32 }

@BNXT_FW_RESET_INPROG_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_fw_health_readl(%struct.bnxt* %0, i32 %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt_fw_health*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %11 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %10, i32 0, i32 3
  %12 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %11, align 8
  store %struct.bnxt_fw_health* %12, %struct.bnxt_fw_health** %5, align 8
  %13 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %14 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @BNXT_FW_HEALTH_REG_TYPE(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @BNXT_FW_HEALTH_REG_OFF(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %53 [
    i32 129, label %25
    i32 128, label %31
    i32 131, label %39
    i32 130, label %46
  ]

25:                                               ; preds = %2
  %26 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %27 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @pci_read_config_dword(i32 %28, i32 %29, i32* %9)
  br label %53

31:                                               ; preds = %2
  %32 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %33 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %2, %31
  %40 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %41 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %42, %43
  %45 = call i32 @readl(i32 %44)
  store i32 %45, i32* %9, align 4
  br label %53

46:                                               ; preds = %2
  %47 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %48 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %49, %50
  %52 = call i32 @readl(i32 %51)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %2, %46, %39, %25
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @BNXT_FW_RESET_INPROG_REG, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %5, align 8
  %59 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %57, %53
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

declare dso_local i32 @BNXT_FW_HEALTH_REG_TYPE(i32) #1

declare dso_local i32 @BNXT_FW_HEALTH_REG_OFF(i32) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
