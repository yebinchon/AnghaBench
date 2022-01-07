; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb4_read_sge_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb4_read_sge_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.adapter = type { i32 }

@SGE_TIMESTAMP_LO_A = common dso_local global i32 0, align 4
@SGE_TIMESTAMP_HI_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_read_sge_timestamp(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.adapter* @netdev2adap(%struct.net_device* %6)
  store %struct.adapter* %7, %struct.adapter** %5, align 8
  %8 = load %struct.adapter*, %struct.adapter** %5, align 8
  %9 = load i32, i32* @SGE_TIMESTAMP_LO_A, align 4
  %10 = call i64 @t4_read_reg(%struct.adapter* %8, i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load %struct.adapter*, %struct.adapter** %5, align 8
  %12 = load i32, i32* @SGE_TIMESTAMP_HI_A, align 4
  %13 = call i64 @t4_read_reg(%struct.adapter* %11, i32 %12)
  %14 = call i64 @TSVAL_G(i64 %13)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = trunc i64 %15 to i32
  %17 = shl i32 %16, 32
  %18 = load i64, i64* %4, align 8
  %19 = trunc i64 %18 to i32
  %20 = or i32 %17, %19
  ret i32 %20
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local i64 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i64 @TSVAL_G(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
