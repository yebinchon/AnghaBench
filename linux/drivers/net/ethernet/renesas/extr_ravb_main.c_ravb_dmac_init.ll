; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_dmac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_dmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ravb_private = type { i64 }

@RAVB_BE = common dso_local global i32 0, align 4
@RAVB_NC = common dso_local global i32 0, align 4
@RCR_EFFS = common dso_local global i32 0, align 4
@RCR_ENCF = common dso_local global i32 0, align 4
@RCR_ETS0 = common dso_local global i32 0, align 4
@RCR_ESF = common dso_local global i32 0, align 4
@RCR = common dso_local global i32 0, align 4
@TGC_TQP_AVBMODE1 = common dso_local global i32 0, align 4
@TGC = common dso_local global i32 0, align 4
@TCCR_TFEN = common dso_local global i32 0, align 4
@TCCR = common dso_local global i32 0, align 4
@RCAR_GEN3 = common dso_local global i64 0, align 8
@DIL = common dso_local global i32 0, align 4
@CIE_CRIE = common dso_local global i32 0, align 4
@CIE_CTIE = common dso_local global i32 0, align 4
@CIE_CL0M = common dso_local global i32 0, align 4
@CIE = common dso_local global i32 0, align 4
@RIC0_FRE0 = common dso_local global i32 0, align 4
@RIC0_FRE1 = common dso_local global i32 0, align 4
@RIC0 = common dso_local global i32 0, align 4
@RIC1 = common dso_local global i32 0, align 4
@RIC2_QFE0 = common dso_local global i32 0, align 4
@RIC2_QFE1 = common dso_local global i32 0, align 4
@RIC2_RFFE = common dso_local global i32 0, align 4
@RIC2 = common dso_local global i32 0, align 4
@TIC_FTE0 = common dso_local global i32 0, align 4
@TIC_FTE1 = common dso_local global i32 0, align 4
@TIC_TFUE = common dso_local global i32 0, align 4
@TIC = common dso_local global i32 0, align 4
@CCC = common dso_local global i32 0, align 4
@CCC_OPC = common dso_local global i32 0, align 4
@CCC_OPC_OPERATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ravb_dmac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ravb_dmac_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ravb_private*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ravb_private* @netdev_priv(%struct.net_device* %6)
  store %struct.ravb_private* %7, %struct.ravb_private** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @ravb_config(%struct.net_device* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %108

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = load i32, i32* @RAVB_BE, align 4
  %17 = call i32 @ravb_ring_init(%struct.net_device* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %108

22:                                               ; preds = %14
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = load i32, i32* @RAVB_NC, align 4
  %25 = call i32 @ravb_ring_init(%struct.net_device* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = load i32, i32* @RAVB_BE, align 4
  %31 = call i32 @ravb_ring_free(%struct.net_device* %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %108

33:                                               ; preds = %22
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = load i32, i32* @RAVB_BE, align 4
  %36 = call i32 @ravb_ring_format(%struct.net_device* %34, i32 %35)
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = load i32, i32* @RAVB_NC, align 4
  %39 = call i32 @ravb_ring_format(%struct.net_device* %37, i32 %38)
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = load i32, i32* @RCR_EFFS, align 4
  %42 = load i32, i32* @RCR_ENCF, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @RCR_ETS0, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @RCR_ESF, align 4
  %47 = or i32 %45, %46
  %48 = or i32 %47, 402653184
  %49 = load i32, i32* @RCR, align 4
  %50 = call i32 @ravb_write(%struct.net_device* %40, i32 %48, i32 %49)
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = load i32, i32* @TGC_TQP_AVBMODE1, align 4
  %53 = or i32 %52, 1122816
  %54 = load i32, i32* @TGC, align 4
  %55 = call i32 @ravb_write(%struct.net_device* %51, i32 %53, i32 %54)
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = load i32, i32* @TCCR_TFEN, align 4
  %58 = load i32, i32* @TCCR, align 4
  %59 = call i32 @ravb_write(%struct.net_device* %56, i32 %57, i32 %58)
  %60 = load %struct.ravb_private*, %struct.ravb_private** %4, align 8
  %61 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @RCAR_GEN3, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %33
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = load i32, i32* @DIL, align 4
  %68 = call i32 @ravb_write(%struct.net_device* %66, i32 0, i32 %67)
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  %70 = load i32, i32* @CIE_CRIE, align 4
  %71 = load i32, i32* @CIE_CTIE, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @CIE_CL0M, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @CIE, align 4
  %76 = call i32 @ravb_write(%struct.net_device* %69, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %65, %33
  %78 = load %struct.net_device*, %struct.net_device** %3, align 8
  %79 = load i32, i32* @RIC0_FRE0, align 4
  %80 = load i32, i32* @RIC0_FRE1, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @RIC0, align 4
  %83 = call i32 @ravb_write(%struct.net_device* %78, i32 %81, i32 %82)
  %84 = load %struct.net_device*, %struct.net_device** %3, align 8
  %85 = load i32, i32* @RIC1, align 4
  %86 = call i32 @ravb_write(%struct.net_device* %84, i32 0, i32 %85)
  %87 = load %struct.net_device*, %struct.net_device** %3, align 8
  %88 = load i32, i32* @RIC2_QFE0, align 4
  %89 = load i32, i32* @RIC2_QFE1, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @RIC2_RFFE, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @RIC2, align 4
  %94 = call i32 @ravb_write(%struct.net_device* %87, i32 %92, i32 %93)
  %95 = load %struct.net_device*, %struct.net_device** %3, align 8
  %96 = load i32, i32* @TIC_FTE0, align 4
  %97 = load i32, i32* @TIC_FTE1, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @TIC_TFUE, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @TIC, align 4
  %102 = call i32 @ravb_write(%struct.net_device* %95, i32 %100, i32 %101)
  %103 = load %struct.net_device*, %struct.net_device** %3, align 8
  %104 = load i32, i32* @CCC, align 4
  %105 = load i32, i32* @CCC_OPC, align 4
  %106 = load i32, i32* @CCC_OPC_OPERATION, align 4
  %107 = call i32 @ravb_modify(%struct.net_device* %103, i32 %104, i32 %105, i32 %106)
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %77, %28, %20, %12
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.ravb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ravb_config(%struct.net_device*) #1

declare dso_local i32 @ravb_ring_init(%struct.net_device*, i32) #1

declare dso_local i32 @ravb_ring_free(%struct.net_device*, i32) #1

declare dso_local i32 @ravb_ring_format(%struct.net_device*, i32) #1

declare dso_local i32 @ravb_write(%struct.net_device*, i32, i32) #1

declare dso_local i32 @ravb_modify(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
