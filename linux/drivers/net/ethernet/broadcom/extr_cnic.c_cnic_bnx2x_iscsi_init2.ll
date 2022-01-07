; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_bnx2x_iscsi_init2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_bnx2x_iscsi_init2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, i32 }
%struct.kwqe = type { i32 }
%struct.iscsi_kwqe_init2 = type { i32, i32* }
%struct.bnx2x = type { i32 }
%struct.iscsi_kcqe = type { i32, i32 }
%struct.kcqe = type { i32 }

@ISCSI_KCQE_COMPLETION_STATUS_ISCSI_NOT_SUPPORTED = common dso_local global i32 0, align 4
@BAR_TSTRORM_INTMEM = common dso_local global i64 0, align 8
@BAR_USTRORM_INTMEM = common dso_local global i64 0, align 8
@BAR_CSTRORM_INTMEM = common dso_local global i64 0, align 8
@ISCSI_KCQE_COMPLETION_STATUS_SUCCESS = common dso_local global i32 0, align 4
@ISCSI_KCQE_OPCODE_INIT = common dso_local global i32 0, align 4
@CNIC_ULP_ISCSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, %struct.kwqe*)* @cnic_bnx2x_iscsi_init2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_bnx2x_iscsi_init2(%struct.cnic_dev* %0, %struct.kwqe* %1) #0 {
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.kwqe*, align 8
  %5 = alloca %struct.iscsi_kwqe_init2*, align 8
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iscsi_kcqe, align 4
  %9 = alloca [1 x %struct.kcqe*], align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  store %struct.kwqe* %1, %struct.kwqe** %4, align 8
  %10 = load %struct.kwqe*, %struct.kwqe** %4, align 8
  %11 = bitcast %struct.kwqe* %10 to %struct.iscsi_kwqe_init2*
  store %struct.iscsi_kwqe_init2* %11, %struct.iscsi_kwqe_init2** %5, align 8
  %12 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %13 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.bnx2x* @netdev_priv(i32 %14)
  store %struct.bnx2x* %15, %struct.bnx2x** %6, align 8
  %16 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %17 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = call i32 @memset(%struct.iscsi_kcqe* %8, i32 0, i32 8)
  %20 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %21 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ISCSI_KCQE_COMPLETION_STATUS_ISCSI_NOT_SUPPORTED, align 4
  %26 = getelementptr inbounds %struct.iscsi_kcqe, %struct.iscsi_kcqe* %8, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  br label %94

27:                                               ; preds = %2
  %28 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %29 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @TSTORM_ISCSI_ERROR_BITMAP_OFFSET(i32 %30)
  %32 = add nsw i64 %29, %31
  %33 = load %struct.iscsi_kwqe_init2*, %struct.iscsi_kwqe_init2** %5, align 8
  %34 = getelementptr inbounds %struct.iscsi_kwqe_init2, %struct.iscsi_kwqe_init2* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @CNIC_WR(%struct.cnic_dev* %28, i64 %32, i32 %37)
  %39 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %40 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @TSTORM_ISCSI_ERROR_BITMAP_OFFSET(i32 %41)
  %43 = add nsw i64 %40, %42
  %44 = add nsw i64 %43, 4
  %45 = load %struct.iscsi_kwqe_init2*, %struct.iscsi_kwqe_init2** %5, align 8
  %46 = getelementptr inbounds %struct.iscsi_kwqe_init2, %struct.iscsi_kwqe_init2* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @CNIC_WR(%struct.cnic_dev* %39, i64 %44, i32 %49)
  %51 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %52 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @USTORM_ISCSI_CQ_SQN_SIZE_OFFSET(i32 %53)
  %55 = add nsw i64 %52, %54
  %56 = load %struct.iscsi_kwqe_init2*, %struct.iscsi_kwqe_init2** %5, align 8
  %57 = getelementptr inbounds %struct.iscsi_kwqe_init2, %struct.iscsi_kwqe_init2* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @CNIC_WR16(%struct.cnic_dev* %51, i64 %55, i32 %58)
  %60 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %61 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @USTORM_ISCSI_ERROR_BITMAP_OFFSET(i32 %62)
  %64 = add nsw i64 %61, %63
  %65 = load %struct.iscsi_kwqe_init2*, %struct.iscsi_kwqe_init2** %5, align 8
  %66 = getelementptr inbounds %struct.iscsi_kwqe_init2, %struct.iscsi_kwqe_init2* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @CNIC_WR(%struct.cnic_dev* %60, i64 %64, i32 %69)
  %71 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %72 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i64 @USTORM_ISCSI_ERROR_BITMAP_OFFSET(i32 %73)
  %75 = add nsw i64 %72, %74
  %76 = add nsw i64 %75, 4
  %77 = load %struct.iscsi_kwqe_init2*, %struct.iscsi_kwqe_init2** %5, align 8
  %78 = getelementptr inbounds %struct.iscsi_kwqe_init2, %struct.iscsi_kwqe_init2* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @CNIC_WR(%struct.cnic_dev* %71, i64 %76, i32 %81)
  %83 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %84 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i64 @CSTORM_ISCSI_CQ_SQN_SIZE_OFFSET(i32 %85)
  %87 = add nsw i64 %84, %86
  %88 = load %struct.iscsi_kwqe_init2*, %struct.iscsi_kwqe_init2** %5, align 8
  %89 = getelementptr inbounds %struct.iscsi_kwqe_init2, %struct.iscsi_kwqe_init2* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @CNIC_WR16(%struct.cnic_dev* %83, i64 %87, i32 %90)
  %92 = load i32, i32* @ISCSI_KCQE_COMPLETION_STATUS_SUCCESS, align 4
  %93 = getelementptr inbounds %struct.iscsi_kcqe, %struct.iscsi_kcqe* %8, i32 0, i32 1
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %27, %24
  %95 = load i32, i32* @ISCSI_KCQE_OPCODE_INIT, align 4
  %96 = getelementptr inbounds %struct.iscsi_kcqe, %struct.iscsi_kcqe* %8, i32 0, i32 0
  store i32 %95, i32* %96, align 4
  %97 = bitcast %struct.iscsi_kcqe* %8 to %struct.kcqe*
  %98 = getelementptr inbounds [1 x %struct.kcqe*], [1 x %struct.kcqe*]* %9, i64 0, i64 0
  store %struct.kcqe* %97, %struct.kcqe** %98, align 8
  %99 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %100 = load i32, i32* @CNIC_ULP_ISCSI, align 4
  %101 = getelementptr inbounds [1 x %struct.kcqe*], [1 x %struct.kcqe*]* %9, i64 0, i64 0
  %102 = call i32 @cnic_reply_bnx2x_kcqes(%struct.cnic_dev* %99, i32 %100, %struct.kcqe** %101, i32 1)
  ret i32 0
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local i32 @memset(%struct.iscsi_kcqe*, i32, i32) #1

declare dso_local i32 @CNIC_WR(%struct.cnic_dev*, i64, i32) #1

declare dso_local i64 @TSTORM_ISCSI_ERROR_BITMAP_OFFSET(i32) #1

declare dso_local i32 @CNIC_WR16(%struct.cnic_dev*, i64, i32) #1

declare dso_local i64 @USTORM_ISCSI_CQ_SQN_SIZE_OFFSET(i32) #1

declare dso_local i64 @USTORM_ISCSI_ERROR_BITMAP_OFFSET(i32) #1

declare dso_local i64 @CSTORM_ISCSI_CQ_SQN_SIZE_OFFSET(i32) #1

declare dso_local i32 @cnic_reply_bnx2x_kcqes(%struct.cnic_dev*, i32, %struct.kcqe**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
