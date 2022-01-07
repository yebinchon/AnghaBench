; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_rx_push_indir_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_rx_push_indir_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32* }

@EF4_REV_FALCON_B0 = common dso_local global i64 0, align 8
@FR_BZ_RX_INDIRECTION_TBL_ROWS = common dso_local global i64 0, align 8
@FRF_BZ_IT_QUEUE = common dso_local global i32 0, align 4
@FR_BZ_RX_INDIRECTION_TBL = common dso_local global i64 0, align 8
@FR_BZ_RX_INDIRECTION_TBL_STEP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ef4_farch_rx_push_indir_table(%struct.ef4_nic* %0) #0 {
  %2 = alloca %struct.ef4_nic*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %6 = call i64 @ef4_nic_rev(%struct.ef4_nic* %5)
  %7 = load i64, i64* @EF4_REV_FALCON_B0, align 8
  %8 = icmp slt i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %12 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i64 @ARRAY_SIZE(i32* %13)
  %15 = load i64, i64* @FR_BZ_RX_INDIRECTION_TBL_ROWS, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUILD_BUG_ON(i32 %17)
  store i64 0, i64* %3, align 8
  br label %19

19:                                               ; preds = %40, %1
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @FR_BZ_RX_INDIRECTION_TBL_ROWS, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @FRF_BZ_IT_QUEUE, align 4
  %26 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %27 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @EF4_POPULATE_DWORD_1(i32 %24, i32 %25, i32 %31)
  %33 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %34 = load i64, i64* @FR_BZ_RX_INDIRECTION_TBL, align 8
  %35 = load i64, i64* @FR_BZ_RX_INDIRECTION_TBL_STEP, align 8
  %36 = load i64, i64* %3, align 8
  %37 = mul i64 %35, %36
  %38 = add i64 %34, %37
  %39 = call i32 @ef4_writed(%struct.ef4_nic* %33, i32* %4, i64 %38)
  br label %40

40:                                               ; preds = %23
  %41 = load i64, i64* %3, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %3, align 8
  br label %19

43:                                               ; preds = %19
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ef4_nic_rev(%struct.ef4_nic*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @EF4_POPULATE_DWORD_1(i32, i32, i32) #1

declare dso_local i32 @ef4_writed(%struct.ef4_nic*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
