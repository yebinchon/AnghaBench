; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_submit_kwqe_16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_submit_kwqe_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, %struct.cnic_local* }
%struct.cnic_local = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (i32, %struct.kwqe_16**, i32)* }
%struct.kwqe_16 = type { i32 }
%union.l5cm_specific_data = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.bnx2x = type { i32 }
%struct.l5cm_spe = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i64, i32, i8* }

@SPE_HDR_CMD_ID_SHIFT = common dso_local global i32 0, align 4
@SPE_HDR_CONN_TYPE_SHIFT = common dso_local global i32 0, align 4
@SPE_HDR_CONN_TYPE = common dso_local global i32 0, align 4
@SPE_HDR_FUNCTION_ID_SHIFT = common dso_local global i32 0, align 4
@SPE_HDR_FUNCTION_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, i32, i32, i32, %union.l5cm_specific_data*)* @cnic_submit_kwqe_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_submit_kwqe_16(%struct.cnic_dev* %0, i32 %1, i32 %2, i32 %3, %union.l5cm_specific_data* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cnic_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.l5cm_specific_data*, align 8
  %12 = alloca %struct.cnic_local*, align 8
  %13 = alloca %struct.bnx2x*, align 8
  %14 = alloca %struct.l5cm_spe, align 8
  %15 = alloca [1 x %struct.kwqe_16*], align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %union.l5cm_specific_data* %4, %union.l5cm_specific_data** %11, align 8
  %18 = load %struct.cnic_dev*, %struct.cnic_dev** %7, align 8
  %19 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %18, i32 0, i32 1
  %20 = load %struct.cnic_local*, %struct.cnic_local** %19, align 8
  store %struct.cnic_local* %20, %struct.cnic_local** %12, align 8
  %21 = load %struct.cnic_dev*, %struct.cnic_dev** %7, align 8
  %22 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.bnx2x* @netdev_priv(i32 %23)
  store %struct.bnx2x* %24, %struct.bnx2x** %13, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @SPE_HDR_CMD_ID_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load %struct.bnx2x*, %struct.bnx2x** %13, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @BNX2X_HW_CID(%struct.bnx2x* %28, i32 %29)
  %31 = or i32 %27, %30
  %32 = call i8* @cpu_to_le32(i32 %31)
  %33 = getelementptr inbounds %struct.l5cm_spe, %struct.l5cm_spe* %14, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @SPE_HDR_CONN_TYPE_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* @SPE_HDR_CONN_TYPE, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %16, align 4
  %40 = load %struct.bnx2x*, %struct.bnx2x** %13, align 8
  %41 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SPE_HDR_FUNCTION_ID_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* @SPE_HDR_FUNCTION_ID, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* %16, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = call i32 @cpu_to_le16(i32 %49)
  %51 = getelementptr inbounds %struct.l5cm_spe, %struct.l5cm_spe* %14, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = getelementptr inbounds %struct.l5cm_spe, %struct.l5cm_spe* %14, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %union.l5cm_specific_data*, %union.l5cm_specific_data** %11, align 8
  %56 = bitcast %union.l5cm_specific_data* %55 to %struct.TYPE_9__*
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @cpu_to_le32(i32 %58)
  %60 = getelementptr inbounds %struct.l5cm_spe, %struct.l5cm_spe* %14, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  store i8* %59, i8** %62, align 8
  %63 = load %union.l5cm_specific_data*, %union.l5cm_specific_data** %11, align 8
  %64 = bitcast %union.l5cm_specific_data* %63 to %struct.TYPE_9__*
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @cpu_to_le32(i32 %66)
  %68 = getelementptr inbounds %struct.l5cm_spe, %struct.l5cm_spe* %14, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i8* %67, i8** %70, align 8
  %71 = bitcast %struct.l5cm_spe* %14 to %struct.kwqe_16*
  %72 = getelementptr inbounds [1 x %struct.kwqe_16*], [1 x %struct.kwqe_16*]* %15, i64 0, i64 0
  store %struct.kwqe_16* %71, %struct.kwqe_16** %72, align 8
  %73 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  %74 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %73, i32 0, i32 0
  %75 = call i32 @spin_lock_bh(i32* %74)
  %76 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  %77 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %76, i32 0, i32 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32 (i32, %struct.kwqe_16**, i32)*, i32 (i32, %struct.kwqe_16**, i32)** %79, align 8
  %81 = load %struct.cnic_dev*, %struct.cnic_dev** %7, align 8
  %82 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds [1 x %struct.kwqe_16*], [1 x %struct.kwqe_16*]* %15, i64 0, i64 0
  %85 = call i32 %80(i32 %83, %struct.kwqe_16** %84, i32 1)
  store i32 %85, i32* %17, align 4
  %86 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  %87 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %86, i32 0, i32 0
  %88 = call i32 @spin_unlock_bh(i32* %87)
  %89 = load i32, i32* %17, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %94

92:                                               ; preds = %5
  %93 = load i32, i32* %17, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %92, %91
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @BNX2X_HW_CID(%struct.bnx2x*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
