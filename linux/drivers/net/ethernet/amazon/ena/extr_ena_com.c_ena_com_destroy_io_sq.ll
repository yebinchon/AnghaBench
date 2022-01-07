; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_destroy_io_sq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_destroy_io_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.ena_com_admin_queue }
%struct.ena_com_admin_queue = type { i32 }
%struct.ena_com_io_sq = type { i64, i32 }
%struct.ena_admin_aq_destroy_sq_cmd = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ena_admin_acq_destroy_sq_resp_desc = type { i32 }
%struct.ena_admin_aq_entry = type { i32 }
%struct.ena_admin_acq_entry = type { i32 }

@ENA_COM_IO_QUEUE_DIRECTION_TX = common dso_local global i64 0, align 8
@ENA_ADMIN_SQ_DIRECTION_TX = common dso_local global i32 0, align 4
@ENA_ADMIN_SQ_DIRECTION_RX = common dso_local global i32 0, align 4
@ENA_ADMIN_SQ_SQ_DIRECTION_SHIFT = common dso_local global i32 0, align 4
@ENA_ADMIN_SQ_SQ_DIRECTION_MASK = common dso_local global i32 0, align 4
@ENA_ADMIN_DESTROY_SQ = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to destroy io sq error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_dev*, %struct.ena_com_io_sq*)* @ena_com_destroy_io_sq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_destroy_io_sq(%struct.ena_com_dev* %0, %struct.ena_com_io_sq* %1) #0 {
  %3 = alloca %struct.ena_com_dev*, align 8
  %4 = alloca %struct.ena_com_io_sq*, align 8
  %5 = alloca %struct.ena_com_admin_queue*, align 8
  %6 = alloca %struct.ena_admin_aq_destroy_sq_cmd, align 4
  %7 = alloca %struct.ena_admin_acq_destroy_sq_resp_desc, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %3, align 8
  store %struct.ena_com_io_sq* %1, %struct.ena_com_io_sq** %4, align 8
  %10 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %11 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %10, i32 0, i32 0
  store %struct.ena_com_admin_queue* %11, %struct.ena_com_admin_queue** %5, align 8
  %12 = call i32 @memset(%struct.ena_admin_aq_destroy_sq_cmd* %6, i32 0, i32 12)
  %13 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %14 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ENA_COM_IO_QUEUE_DIRECTION_TX, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @ENA_ADMIN_SQ_DIRECTION_TX, align 4
  store i32 %19, i32* %8, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @ENA_ADMIN_SQ_DIRECTION_RX, align 4
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @ENA_ADMIN_SQ_SQ_DIRECTION_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* @ENA_ADMIN_SQ_SQ_DIRECTION_MASK, align 4
  %27 = and i32 %25, %26
  %28 = getelementptr inbounds %struct.ena_admin_aq_destroy_sq_cmd, %struct.ena_admin_aq_destroy_sq_cmd* %6, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %33 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.ena_admin_aq_destroy_sq_cmd, %struct.ena_admin_aq_destroy_sq_cmd* %6, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @ENA_ADMIN_DESTROY_SQ, align 4
  %38 = getelementptr inbounds %struct.ena_admin_aq_destroy_sq_cmd, %struct.ena_admin_aq_destroy_sq_cmd* %6, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %5, align 8
  %41 = bitcast %struct.ena_admin_aq_destroy_sq_cmd* %6 to %struct.ena_admin_aq_entry*
  %42 = bitcast %struct.ena_admin_acq_destroy_sq_resp_desc* %7 to %struct.ena_admin_acq_entry*
  %43 = call i32 @ena_com_execute_admin_command(%struct.ena_com_admin_queue* %40, %struct.ena_admin_aq_entry* %41, i32 12, %struct.ena_admin_acq_entry* %42, i32 4)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %22
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp ne i32 %47, %49
  br label %51

51:                                               ; preds = %46, %22
  %52 = phi i1 [ false, %22 ], [ %50, %46 ]
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

declare dso_local i32 @memset(%struct.ena_admin_aq_destroy_sq_cmd*, i32, i32) #1

declare dso_local i32 @ena_com_execute_admin_command(%struct.ena_com_admin_queue*, %struct.ena_admin_aq_entry*, i32, %struct.ena_admin_acq_entry*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
