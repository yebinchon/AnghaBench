; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_fw_matches_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_fw_matches_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fw_hdr = type { i64 }

@FW_HDR_CHIP_T4 = common dso_local global i64 0, align 8
@FW_HDR_CHIP_T5 = common dso_local global i64 0, align 8
@FW_HDR_CHIP_T6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"FW image (%d) is not suitable for this adapter (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.fw_hdr*)* @t4_fw_matches_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_fw_matches_chip(%struct.adapter* %0, %struct.fw_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.fw_hdr*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.fw_hdr* %1, %struct.fw_hdr** %5, align 8
  %6 = load %struct.adapter*, %struct.adapter** %4, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @is_t4(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.fw_hdr*, %struct.fw_hdr** %5, align 8
  %14 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FW_HDR_CHIP_T4, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %44, label %18

18:                                               ; preds = %12, %2
  %19 = load %struct.adapter*, %struct.adapter** %4, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @is_t5(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.fw_hdr*, %struct.fw_hdr** %5, align 8
  %27 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @FW_HDR_CHIP_T5, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %44, label %31

31:                                               ; preds = %25, %18
  %32 = load %struct.adapter*, %struct.adapter** %4, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @is_t6(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load %struct.fw_hdr*, %struct.fw_hdr** %5, align 8
  %40 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FW_HDR_CHIP_T6, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %25, %12
  store i32 1, i32* %3, align 4
  br label %58

45:                                               ; preds = %38, %31
  %46 = load %struct.adapter*, %struct.adapter** %4, align 8
  %47 = getelementptr inbounds %struct.adapter, %struct.adapter* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.fw_hdr*, %struct.fw_hdr** %5, align 8
  %50 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.adapter*, %struct.adapter** %4, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @CHELSIO_CHIP_VERSION(i32 %55)
  %57 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %51, i32 %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %45, %44
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @is_t4(i32) #1

declare dso_local i64 @is_t5(i32) #1

declare dso_local i64 @is_t6(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32) #1

declare dso_local i32 @CHELSIO_CHIP_VERSION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
