; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_ccdc_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_ccdc_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpfe_ccdc = type { i32 }
%struct.device = type { i32 }

@VPFE_PCR = common dso_local global i32 0, align 4
@VPFE_DMA_CNTL = common dso_local global i32 0, align 4
@VPFE_DMA_CNTL_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpfe_ccdc*, %struct.device*)* @vpfe_ccdc_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_ccdc_close(%struct.vpfe_ccdc* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.vpfe_ccdc*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vpfe_ccdc* %0, %struct.vpfe_ccdc** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %22, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 10
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = call i32 @usleep_range(i32 5000, i32 6000)
  %13 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %3, align 8
  %14 = load i32, i32* @VPFE_PCR, align 4
  %15 = call i32 @vpfe_reg_read(%struct.vpfe_ccdc* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %25

19:                                               ; preds = %11
  %20 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %3, align 8
  %21 = call i32 @vpfe_pcr_enable(%struct.vpfe_ccdc* %20, i32 0)
  br label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %8

25:                                               ; preds = %18, %8
  %26 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %3, align 8
  %27 = call i32 @vpfe_ccdc_restore_defaults(%struct.vpfe_ccdc* %26)
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %46, %25
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 10
  br i1 %30, label %31, label %49

31:                                               ; preds = %28
  %32 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %3, align 8
  %33 = load i32, i32* @VPFE_DMA_CNTL, align 4
  %34 = call i32 @vpfe_reg_read(%struct.vpfe_ccdc* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @VPFE_DMA_CNTL_OVERFLOW, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  br label %49

40:                                               ; preds = %31
  %41 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @VPFE_DMA_CNTL, align 4
  %44 = call i32 @vpfe_reg_write(%struct.vpfe_ccdc* %41, i32 %42, i32 %43)
  %45 = call i32 @usleep_range(i32 5000, i32 6000)
  br label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %28

49:                                               ; preds = %39, %28
  %50 = load %struct.vpfe_ccdc*, %struct.vpfe_ccdc** %3, align 8
  %51 = call i32 @vpfe_config_enable(%struct.vpfe_ccdc* %50, i32 0)
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = call i32 @pm_runtime_put_sync(%struct.device* %52)
  ret i32 0
}

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @vpfe_reg_read(%struct.vpfe_ccdc*, i32) #1

declare dso_local i32 @vpfe_pcr_enable(%struct.vpfe_ccdc*, i32) #1

declare dso_local i32 @vpfe_ccdc_restore_defaults(%struct.vpfe_ccdc*) #1

declare dso_local i32 @vpfe_reg_write(%struct.vpfe_ccdc*, i32, i32) #1

declare dso_local i32 @vpfe_config_enable(%struct.vpfe_ccdc*, i32) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
