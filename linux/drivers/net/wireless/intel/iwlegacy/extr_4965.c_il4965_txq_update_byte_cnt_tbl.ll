; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965.c_il4965_txq_update_byte_cnt_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965.c_il4965_txq_update_byte_cnt_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.il4965_scd_bc_tbl* }
%struct.il4965_scd_bc_tbl = type { i8** }
%struct.il_tx_queue = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@IL_TX_CRC_SIZE = common dso_local global i32 0, align 4
@IL_TX_DELIMITER_SIZE = common dso_local global i32 0, align 4
@TFD_QUEUE_SIZE_MAX = common dso_local global i32 0, align 4
@TFD_QUEUE_SIZE_BC_DUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.il_tx_queue*, i32)* @il4965_txq_update_byte_cnt_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_txq_update_byte_cnt_tbl(%struct.il_priv* %0, %struct.il_tx_queue* %1, i32 %2) #0 {
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca %struct.il_tx_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.il4965_scd_bc_tbl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store %struct.il_tx_queue* %1, %struct.il_tx_queue** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %13 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.il4965_scd_bc_tbl*, %struct.il4965_scd_bc_tbl** %14, align 8
  store %struct.il4965_scd_bc_tbl* %15, %struct.il4965_scd_bc_tbl** %7, align 8
  %16 = load %struct.il_tx_queue*, %struct.il_tx_queue** %5, align 8
  %17 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.il_tx_queue*, %struct.il_tx_queue** %5, align 8
  %21 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @IL_TX_CRC_SIZE, align 4
  %26 = add nsw i32 %24, %25
  %27 = load i32, i32* @IL_TX_DELIMITER_SIZE, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp sgt i32 %29, 4095
  br i1 %30, label %35, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @TFD_QUEUE_SIZE_MAX, align 4
  %34 = icmp sge i32 %32, %33
  br label %35

35:                                               ; preds = %31, %3
  %36 = phi i1 [ true, %3 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @WARN_ON(i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, 4095
  %41 = call i8* @cpu_to_le16(i32 %40)
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load %struct.il4965_scd_bc_tbl*, %struct.il4965_scd_bc_tbl** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.il4965_scd_bc_tbl, %struct.il4965_scd_bc_tbl* %43, i64 %45
  %47 = getelementptr inbounds %struct.il4965_scd_bc_tbl, %struct.il4965_scd_bc_tbl* %46, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  store i8* %42, i8** %51, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @TFD_QUEUE_SIZE_BC_DUP, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %35
  %56 = load i8*, i8** %11, align 8
  %57 = load %struct.il4965_scd_bc_tbl*, %struct.il4965_scd_bc_tbl** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.il4965_scd_bc_tbl, %struct.il4965_scd_bc_tbl* %57, i64 %59
  %61 = getelementptr inbounds %struct.il4965_scd_bc_tbl, %struct.il4965_scd_bc_tbl* %60, i32 0, i32 0
  %62 = load i8**, i8*** %61, align 8
  %63 = load i32, i32* @TFD_QUEUE_SIZE_MAX, align 4
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %62, i64 %66
  store i8* %56, i8** %67, align 8
  br label %68

68:                                               ; preds = %55, %35
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
