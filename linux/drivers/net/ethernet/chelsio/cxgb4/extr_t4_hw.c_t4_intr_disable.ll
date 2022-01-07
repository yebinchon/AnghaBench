; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_intr_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_intr_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@PL_WHOAMI_A = common dso_local global i32 0, align 4
@CHELSIO_T5 = common dso_local global i64 0, align 8
@PL_PF_INT_ENABLE_A = common dso_local global i32 0, align 4
@PL_INT_MAP0_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_intr_disable(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @pci_channel_offline(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %39

11:                                               ; preds = %1
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = load i32, i32* @PL_WHOAMI_A, align 4
  %14 = call i32 @t4_read_reg(%struct.adapter* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.adapter*, %struct.adapter** %2, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @CHELSIO_CHIP_VERSION(i32 %18)
  %20 = load i64, i64* @CHELSIO_T5, align 8
  %21 = icmp sle i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %11
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @SOURCEPF_G(i32 %23)
  br label %28

25:                                               ; preds = %11
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @T6_SOURCEPF_G(i32 %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i32 [ %24, %22 ], [ %27, %25 ]
  store i32 %29, i32* %4, align 4
  %30 = load %struct.adapter*, %struct.adapter** %2, align 8
  %31 = load i32, i32* @PL_PF_INT_ENABLE_A, align 4
  %32 = call i32 @MYPF_REG(i32 %31)
  %33 = call i32 @t4_write_reg(%struct.adapter* %30, i32 %32, i32 0)
  %34 = load %struct.adapter*, %struct.adapter** %2, align 8
  %35 = load i32, i32* @PL_INT_MAP0_A, align 4
  %36 = load i32, i32* %4, align 4
  %37 = shl i32 1, %36
  %38 = call i32 @t4_set_reg_field(%struct.adapter* %34, i32 %35, i32 %37, i32 0)
  br label %39

39:                                               ; preds = %28, %10
  ret void
}

declare dso_local i64 @pci_channel_offline(i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i64 @CHELSIO_CHIP_VERSION(i32) #1

declare dso_local i32 @SOURCEPF_G(i32) #1

declare dso_local i32 @T6_SOURCEPF_G(i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @MYPF_REG(i32) #1

declare dso_local i32 @t4_set_reg_field(%struct.adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
