; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_ack_igu_sb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_ack_igu_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32 }
%struct.igu_regular = type { i32 }

@BAR_IGU_INTMEM = common dso_local global i64 0, align 8
@IGU_CMD_INT_ACK_BASE = common dso_local global i32 0, align 4
@IGU_REGULAR_SB_INDEX_SHIFT = common dso_local global i32 0, align 4
@IGU_REGULAR_SEGMENT_ACCESS_SHIFT = common dso_local global i32 0, align 4
@IGU_REGULAR_BUPDATE_SHIFT = common dso_local global i32 0, align 4
@IGU_REGULAR_ENABLE_INT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*, i32, i32, i32, i32, i32)* @cnic_ack_igu_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_ack_igu_sb(%struct.cnic_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.cnic_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.igu_regular, align 4
  %14 = alloca i64, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i64, i64* @BAR_IGU_INTMEM, align 8
  %16 = load i32, i32* @IGU_CMD_INT_ACK_BASE, align 4
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %16, %17
  %19 = mul nsw i32 %18, 8
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %15, %20
  store i64 %21, i64* %14, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @IGU_REGULAR_SB_INDEX_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @IGU_REGULAR_SEGMENT_ACCESS_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = or i32 %24, %27
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @IGU_REGULAR_BUPDATE_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %28, %31
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @IGU_REGULAR_ENABLE_INT_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = or i32 %32, %35
  %37 = getelementptr inbounds %struct.igu_regular, %struct.igu_regular* %13, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load %struct.cnic_dev*, %struct.cnic_dev** %7, align 8
  %39 = load i64, i64* %14, align 8
  %40 = getelementptr inbounds %struct.igu_regular, %struct.igu_regular* %13, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @CNIC_WR(%struct.cnic_dev* %38, i64 %39, i32 %41)
  ret void
}

declare dso_local i32 @CNIC_WR(%struct.cnic_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
