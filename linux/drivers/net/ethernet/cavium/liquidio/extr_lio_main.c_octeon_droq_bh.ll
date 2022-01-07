; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_octeon_droq_bh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_octeon_droq_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_4__, i64, i32*, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.octeon_device_priv = type { i32 }

@MAX_PACKET_BUDGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @octeon_droq_bh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_droq_bh(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca %struct.octeon_device_priv*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.octeon_device*
  store %struct.octeon_device* %9, %struct.octeon_device** %5, align 8
  %10 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %11 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.octeon_device_priv*
  store %struct.octeon_device_priv* %13, %struct.octeon_device_priv** %6, align 8
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %74, %1
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %17 = call i32 @MAX_OCTEON_OUTPUT_QUEUES(%struct.octeon_device* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %77

19:                                               ; preds = %14
  %20 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %21 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @BIT_ULL(i32 %24)
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  br label %74

29:                                               ; preds = %19
  %30 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %31 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %32 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MAX_PACKET_BUDGET, align 4
  %39 = call i32 @octeon_droq_process_packets(%struct.octeon_device* %30, i32 %37, i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %43 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @lio_enable_irq(i32 %48, i32* null)
  %50 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %51 = call i64 @OCTEON_CN23XX_PF(%struct.octeon_device* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %29
  %54 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %55 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %61 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %59, %63
  store i32 %64, i32* %7, align 4
  %65 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @CN23XX_SLI_OQ_PKT_INT_LEVELS(i32 %66)
  %68 = call i32 @octeon_write_csr64(%struct.octeon_device* %65, i32 %67, i32 64)
  %69 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @CN23XX_SLI_OQ_PKTS_SENT(i32 %70)
  %72 = call i32 @octeon_write_csr64(%struct.octeon_device* %69, i32 %71, i32 0)
  br label %73

73:                                               ; preds = %58, %53, %29
  br label %74

74:                                               ; preds = %73, %28
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %14

77:                                               ; preds = %14
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.octeon_device_priv*, %struct.octeon_device_priv** %6, align 8
  %82 = getelementptr inbounds %struct.octeon_device_priv, %struct.octeon_device_priv* %81, i32 0, i32 0
  %83 = call i32 @tasklet_schedule(i32* %82)
  br label %84

84:                                               ; preds = %80, %77
  ret void
}

declare dso_local i32 @MAX_OCTEON_OUTPUT_QUEUES(%struct.octeon_device*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @octeon_droq_process_packets(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @lio_enable_irq(i32, i32*) #1

declare dso_local i64 @OCTEON_CN23XX_PF(%struct.octeon_device*) #1

declare dso_local i32 @octeon_write_csr64(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @CN23XX_SLI_OQ_PKT_INT_LEVELS(i32) #1

declare dso_local i32 @CN23XX_SLI_OQ_PKTS_SENT(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
