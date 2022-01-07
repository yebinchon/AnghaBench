; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_fsl_ucc_hdlc.c_ucc_hdlc_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_fsl_ucc_hdlc.c_ucc_hdlc_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucc_hdlc_private = type { i32, %struct.ucc_fast_private*, %struct.ucc_tdm_info*, %struct.net_device* }
%struct.ucc_fast_private = type { i32, i32 }
%struct.ucc_tdm_info = type { i32 }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@UCCE_HDLC_RX_EVENTS = common dso_local global i32 0, align 4
@UCCE_HDLC_TX_EVENTS = common dso_local global i32 0, align 4
@UCC_HDLC_UCCE_BSY = common dso_local global i32 0, align 4
@UCC_HDLC_UCCE_TXE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ucc_hdlc_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucc_hdlc_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ucc_hdlc_private*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ucc_fast_private*, align 8
  %9 = alloca %struct.ucc_tdm_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.ucc_hdlc_private*
  store %struct.ucc_hdlc_private* %13, %struct.ucc_hdlc_private** %6, align 8
  %14 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %6, align 8
  %15 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %14, i32 0, i32 3
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %7, align 8
  %17 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %6, align 8
  %18 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %17, i32 0, i32 2
  %19 = load %struct.ucc_tdm_info*, %struct.ucc_tdm_info** %18, align 8
  store %struct.ucc_tdm_info* %19, %struct.ucc_tdm_info** %9, align 8
  %20 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %6, align 8
  %21 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %20, i32 0, i32 1
  %22 = load %struct.ucc_fast_private*, %struct.ucc_fast_private** %21, align 8
  store %struct.ucc_fast_private* %22, %struct.ucc_fast_private** %8, align 8
  %23 = load %struct.ucc_fast_private*, %struct.ucc_fast_private** %8, align 8
  %24 = getelementptr inbounds %struct.ucc_fast_private, %struct.ucc_fast_private* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ioread32be(i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.ucc_fast_private*, %struct.ucc_fast_private** %8, align 8
  %28 = getelementptr inbounds %struct.ucc_fast_private, %struct.ucc_fast_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ioread32be(i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.ucc_fast_private*, %struct.ucc_fast_private** %8, align 8
  %36 = getelementptr inbounds %struct.ucc_fast_private, %struct.ucc_fast_private* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @iowrite32be(i32 %34, i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %2
  %42 = load i32, i32* @IRQ_NONE, align 4
  store i32 %42, i32* %3, align 4
  br label %99

43:                                               ; preds = %2
  %44 = load i32, i32* %10, align 4
  %45 = ashr i32 %44, 16
  %46 = load i32, i32* @UCCE_HDLC_RX_EVENTS, align 4
  %47 = load i32, i32* @UCCE_HDLC_TX_EVENTS, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %43
  %52 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %6, align 8
  %53 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %52, i32 0, i32 0
  %54 = call i64 @napi_schedule_prep(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load i32, i32* @UCCE_HDLC_RX_EVENTS, align 4
  %58 = load i32, i32* @UCCE_HDLC_TX_EVENTS, align 4
  %59 = or i32 %57, %58
  %60 = shl i32 %59, 16
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %11, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.ucc_fast_private*, %struct.ucc_fast_private** %8, align 8
  %66 = getelementptr inbounds %struct.ucc_fast_private, %struct.ucc_fast_private* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @iowrite32be(i32 %64, i32 %67)
  %69 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %6, align 8
  %70 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %69, i32 0, i32 0
  %71 = call i32 @__napi_schedule(i32* %70)
  br label %72

72:                                               ; preds = %56, %51
  br label %73

73:                                               ; preds = %72, %43
  %74 = load i32, i32* %10, align 4
  %75 = ashr i32 %74, 16
  %76 = load i32, i32* @UCC_HDLC_UCCE_BSY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load %struct.net_device*, %struct.net_device** %7, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %73
  %86 = load i32, i32* %10, align 4
  %87 = ashr i32 %86, 16
  %88 = load i32, i32* @UCC_HDLC_UCCE_TXE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %struct.net_device*, %struct.net_device** %7, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %91, %85
  %98 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %41
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @ioread32be(i32) #1

declare dso_local i32 @iowrite32be(i32, i32) #1

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i32 @__napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
