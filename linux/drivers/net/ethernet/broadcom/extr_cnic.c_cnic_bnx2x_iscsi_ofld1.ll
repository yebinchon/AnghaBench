; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_bnx2x_iscsi_ofld1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_bnx2x_iscsi_ofld1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i64, i32, %struct.cnic_local* }
%struct.cnic_local = type { %struct.cnic_context*, i32 }
%struct.cnic_context = type { i32, i32 }
%struct.kwqe = type { i32 }
%struct.iscsi_kwqe_conn_offload1 = type { i32 }
%struct.iscsi_kwqe_conn_offload2 = type { i32 }
%struct.bnx2x = type { i32 }
%struct.iscsi_kcqe = type { i32, i32, i32, i32 }
%struct.kcqe = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAX_ISCSI_TBL_SZ = common dso_local global i32 0, align 4
@ISCSI_KCQE_OPCODE_OFFLOAD_CONN = common dso_local global i32 0, align 4
@ISCSI_KCQE_COMPLETION_STATUS_CTX_ALLOC_FAILURE = common dso_local global i32 0, align 4
@CTX_FL_OFFLD_START = common dso_local global i32 0, align 4
@ISCSI_KCQE_COMPLETION_STATUS_CID_BUSY = common dso_local global i32 0, align 4
@ISCSI_KCQE_COMPLETION_STATUS_SUCCESS = common dso_local global i32 0, align 4
@CNIC_ULP_ISCSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, %struct.kwqe**, i32, i32*)* @cnic_bnx2x_iscsi_ofld1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_bnx2x_iscsi_ofld1(%struct.cnic_dev* %0, %struct.kwqe** %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cnic_dev*, align 8
  %7 = alloca %struct.kwqe**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.iscsi_kwqe_conn_offload1*, align 8
  %11 = alloca %struct.iscsi_kwqe_conn_offload2*, align 8
  %12 = alloca %struct.cnic_local*, align 8
  %13 = alloca %struct.bnx2x*, align 8
  %14 = alloca %struct.cnic_context*, align 8
  %15 = alloca %struct.iscsi_kcqe, align 4
  %16 = alloca [1 x %struct.kcqe*], align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %6, align 8
  store %struct.kwqe** %1, %struct.kwqe*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %19 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %20 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %19, i32 0, i32 2
  %21 = load %struct.cnic_local*, %struct.cnic_local** %20, align 8
  store %struct.cnic_local* %21, %struct.cnic_local** %12, align 8
  %22 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %23 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.bnx2x* @netdev_priv(i32 %24)
  store %struct.bnx2x* %25, %struct.bnx2x** %13, align 8
  store i32 0, i32* %18, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = load i32*, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %147

33:                                               ; preds = %4
  %34 = load %struct.kwqe**, %struct.kwqe*** %7, align 8
  %35 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %34, i64 0
  %36 = load %struct.kwqe*, %struct.kwqe** %35, align 8
  %37 = bitcast %struct.kwqe* %36 to %struct.iscsi_kwqe_conn_offload1*
  store %struct.iscsi_kwqe_conn_offload1* %37, %struct.iscsi_kwqe_conn_offload1** %10, align 8
  %38 = load %struct.kwqe**, %struct.kwqe*** %7, align 8
  %39 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %38, i64 1
  %40 = load %struct.kwqe*, %struct.kwqe** %39, align 8
  %41 = bitcast %struct.kwqe* %40 to %struct.iscsi_kwqe_conn_offload2*
  store %struct.iscsi_kwqe_conn_offload2* %41, %struct.iscsi_kwqe_conn_offload2** %11, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, 2
  %44 = load %struct.iscsi_kwqe_conn_offload2*, %struct.iscsi_kwqe_conn_offload2** %11, align 8
  %45 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload2, %struct.iscsi_kwqe_conn_offload2* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %33
  %49 = load i32, i32* %8, align 4
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %147

53:                                               ; preds = %33
  %54 = load %struct.iscsi_kwqe_conn_offload2*, %struct.iscsi_kwqe_conn_offload2** %11, align 8
  %55 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload2, %struct.iscsi_kwqe_conn_offload2* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 2, %56
  %58 = load i32*, i32** %9, align 8
  store i32 %57, i32* %58, align 4
  %59 = load %struct.iscsi_kwqe_conn_offload1*, %struct.iscsi_kwqe_conn_offload1** %10, align 8
  %60 = getelementptr inbounds %struct.iscsi_kwqe_conn_offload1, %struct.iscsi_kwqe_conn_offload1* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* @MAX_ISCSI_TBL_SZ, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %147

68:                                               ; preds = %53
  %69 = call i32 @memset(%struct.iscsi_kcqe* %15, i32 0, i32 16)
  %70 = load i32, i32* @ISCSI_KCQE_OPCODE_OFFLOAD_CONN, align 4
  %71 = getelementptr inbounds %struct.iscsi_kcqe, %struct.iscsi_kcqe* %15, i32 0, i32 3
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %17, align 4
  %73 = getelementptr inbounds %struct.iscsi_kcqe, %struct.iscsi_kcqe* %15, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* @ISCSI_KCQE_COMPLETION_STATUS_CTX_ALLOC_FAILURE, align 4
  %75 = getelementptr inbounds %struct.iscsi_kcqe, %struct.iscsi_kcqe* %15, i32 0, i32 2
  store i32 %74, i32* %75, align 4
  %76 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  %77 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %76, i32 0, i32 0
  %78 = load %struct.cnic_context*, %struct.cnic_context** %77, align 8
  %79 = load i32, i32* %17, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %78, i64 %80
  store %struct.cnic_context* %81, %struct.cnic_context** %14, align 8
  %82 = load i32, i32* @CTX_FL_OFFLD_START, align 4
  %83 = load %struct.cnic_context*, %struct.cnic_context** %14, align 8
  %84 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %83, i32 0, i32 1
  %85 = call i64 @test_bit(i32 %82, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %68
  %88 = load i32, i32* @ISCSI_KCQE_COMPLETION_STATUS_CID_BUSY, align 4
  %89 = getelementptr inbounds %struct.iscsi_kcqe, %struct.iscsi_kcqe* %15, i32 0, i32 2
  store i32 %88, i32* %89, align 4
  br label %140

90:                                               ; preds = %68
  %91 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  %92 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %91, i32 0, i32 1
  %93 = call i64 @atomic_inc_return(i32* %92)
  %94 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %95 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp sgt i64 %93, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %90
  %99 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  %100 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %99, i32 0, i32 1
  %101 = call i32 @atomic_dec(i32* %100)
  br label %140

102:                                              ; preds = %90
  %103 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %104 = load i32, i32* %17, align 4
  %105 = call i32 @cnic_alloc_bnx2x_conn_resc(%struct.cnic_dev* %103, i32 %104)
  store i32 %105, i32* %18, align 4
  %106 = load i32, i32* %18, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  %110 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %109, i32 0, i32 1
  %111 = call i32 @atomic_dec(i32* %110)
  store i32 0, i32* %18, align 4
  br label %140

112:                                              ; preds = %102
  %113 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %114 = load %struct.kwqe**, %struct.kwqe*** %7, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @cnic_setup_bnx2x_ctx(%struct.cnic_dev* %113, %struct.kwqe** %114, i32 %115)
  store i32 %116, i32* %18, align 4
  %117 = load i32, i32* %18, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %112
  %120 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %121 = load i32, i32* %17, align 4
  %122 = call i32 @cnic_free_bnx2x_conn_resc(%struct.cnic_dev* %120, i32 %121)
  %123 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  %124 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %123, i32 0, i32 1
  %125 = call i32 @atomic_dec(i32* %124)
  br label %140

126:                                              ; preds = %112
  %127 = load i32, i32* @ISCSI_KCQE_COMPLETION_STATUS_SUCCESS, align 4
  %128 = getelementptr inbounds %struct.iscsi_kcqe, %struct.iscsi_kcqe* %15, i32 0, i32 2
  store i32 %127, i32* %128, align 4
  %129 = load %struct.bnx2x*, %struct.bnx2x** %13, align 8
  %130 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  %131 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %130, i32 0, i32 0
  %132 = load %struct.cnic_context*, %struct.cnic_context** %131, align 8
  %133 = load i32, i32* %17, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %132, i64 %134
  %136 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @BNX2X_HW_CID(%struct.bnx2x* %129, i32 %137)
  %139 = getelementptr inbounds %struct.iscsi_kcqe, %struct.iscsi_kcqe* %15, i32 0, i32 1
  store i32 %138, i32* %139, align 4
  br label %140

140:                                              ; preds = %126, %119, %108, %98, %87
  %141 = bitcast %struct.iscsi_kcqe* %15 to %struct.kcqe*
  %142 = getelementptr inbounds [1 x %struct.kcqe*], [1 x %struct.kcqe*]* %16, i64 0, i64 0
  store %struct.kcqe* %141, %struct.kcqe** %142, align 8
  %143 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %144 = load i32, i32* @CNIC_ULP_ISCSI, align 4
  %145 = getelementptr inbounds [1 x %struct.kcqe*], [1 x %struct.kcqe*]* %16, i64 0, i64 0
  %146 = call i32 @cnic_reply_bnx2x_kcqes(%struct.cnic_dev* %143, i32 %144, %struct.kcqe** %145, i32 1)
  store i32 0, i32* %5, align 4
  br label %147

147:                                              ; preds = %140, %65, %48, %28
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local i32 @memset(%struct.iscsi_kcqe*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @cnic_alloc_bnx2x_conn_resc(%struct.cnic_dev*, i32) #1

declare dso_local i32 @cnic_setup_bnx2x_ctx(%struct.cnic_dev*, %struct.kwqe**, i32) #1

declare dso_local i32 @cnic_free_bnx2x_conn_resc(%struct.cnic_dev*, i32) #1

declare dso_local i32 @BNX2X_HW_CID(%struct.bnx2x*, i32) #1

declare dso_local i32 @cnic_reply_bnx2x_kcqes(%struct.cnic_dev*, i32, %struct.kcqe**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
