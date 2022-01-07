; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsi2.c_csi2_irq_complexio1_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsi2.c_csi2_irq_complexio1_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { i32 }
%struct.isp_csi2_device = type { i32 }

@ISPCSI2_PHY_IRQENABLE_STATEALLULPMEXIT = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQENABLE_STATEALLULPMENTER = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQENABLE_STATEULPM5 = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQENABLE_ERRCONTROL5 = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQENABLE_ERRESC5 = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQENABLE_ERRSOTSYNCHS5 = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQENABLE_ERRSOTHS5 = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQENABLE_STATEULPM4 = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQENABLE_ERRCONTROL4 = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQENABLE_ERRESC4 = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQENABLE_ERRSOTSYNCHS4 = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQENABLE_ERRSOTHS4 = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQENABLE_STATEULPM3 = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQENABLE_ERRCONTROL3 = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQENABLE_ERRESC3 = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQENABLE_ERRSOTSYNCHS3 = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQENABLE_ERRSOTHS3 = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQENABLE_STATEULPM2 = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQENABLE_ERRCONTROL2 = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQENABLE_ERRESC2 = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQENABLE_ERRSOTSYNCHS2 = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQENABLE_ERRSOTHS2 = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQENABLE_STATEULPM1 = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQENABLE_ERRCONTROL1 = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQENABLE_ERRESC1 = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQENABLE_ERRSOTSYNCHS1 = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQENABLE_ERRSOTHS1 = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQSTATUS = common dso_local global i32 0, align 4
@ISPCSI2_PHY_IRQENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_device*, %struct.isp_csi2_device*, i32)* @csi2_irq_complexio1_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi2_irq_complexio1_set(%struct.isp_device* %0, %struct.isp_csi2_device* %1, i32 %2) #0 {
  %4 = alloca %struct.isp_device*, align 8
  %5 = alloca %struct.isp_csi2_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.isp_device* %0, %struct.isp_device** %4, align 8
  store %struct.isp_csi2_device* %1, %struct.isp_csi2_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @ISPCSI2_PHY_IRQENABLE_STATEALLULPMEXIT, align 4
  %9 = load i32, i32* @ISPCSI2_PHY_IRQENABLE_STATEALLULPMENTER, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @ISPCSI2_PHY_IRQENABLE_STATEULPM5, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @ISPCSI2_PHY_IRQENABLE_ERRCONTROL5, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @ISPCSI2_PHY_IRQENABLE_ERRESC5, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @ISPCSI2_PHY_IRQENABLE_ERRSOTSYNCHS5, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @ISPCSI2_PHY_IRQENABLE_ERRSOTHS5, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @ISPCSI2_PHY_IRQENABLE_STATEULPM4, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @ISPCSI2_PHY_IRQENABLE_ERRCONTROL4, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @ISPCSI2_PHY_IRQENABLE_ERRESC4, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @ISPCSI2_PHY_IRQENABLE_ERRSOTSYNCHS4, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @ISPCSI2_PHY_IRQENABLE_ERRSOTHS4, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @ISPCSI2_PHY_IRQENABLE_STATEULPM3, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @ISPCSI2_PHY_IRQENABLE_ERRCONTROL3, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @ISPCSI2_PHY_IRQENABLE_ERRESC3, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @ISPCSI2_PHY_IRQENABLE_ERRSOTSYNCHS3, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @ISPCSI2_PHY_IRQENABLE_ERRSOTHS3, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @ISPCSI2_PHY_IRQENABLE_STATEULPM2, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @ISPCSI2_PHY_IRQENABLE_ERRCONTROL2, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @ISPCSI2_PHY_IRQENABLE_ERRESC2, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @ISPCSI2_PHY_IRQENABLE_ERRSOTSYNCHS2, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @ISPCSI2_PHY_IRQENABLE_ERRSOTHS2, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @ISPCSI2_PHY_IRQENABLE_STATEULPM1, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @ISPCSI2_PHY_IRQENABLE_ERRCONTROL1, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @ISPCSI2_PHY_IRQENABLE_ERRESC1, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @ISPCSI2_PHY_IRQENABLE_ERRSOTSYNCHS1, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @ISPCSI2_PHY_IRQENABLE_ERRSOTHS1, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %7, align 4
  %61 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %5, align 8
  %64 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ISPCSI2_PHY_IRQSTATUS, align 4
  %67 = call i32 @isp_reg_writel(%struct.isp_device* %61, i32 %62, i32 %65, i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %3
  %71 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %72 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %5, align 8
  %73 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ISPCSI2_PHY_IRQENABLE, align 4
  %76 = call i32 @isp_reg_readl(%struct.isp_device* %71, i32 %74, i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %80

79:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %79, %70
  %81 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %5, align 8
  %84 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ISPCSI2_PHY_IRQENABLE, align 4
  %87 = call i32 @isp_reg_writel(%struct.isp_device* %81, i32 %82, i32 %85, i32 %86)
  ret void
}

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @isp_reg_readl(%struct.isp_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
