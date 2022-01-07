; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_fill_report_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_fill_report_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.bnx2x_link_report_data, %struct.TYPE_2__ }
%struct.bnx2x_link_report_data = type { i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@MF_FUNC_DIS = common dso_local global i32 0, align 4
@BNX2X_LINK_REPORT_LINK_DOWN = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@BNX2X_LINK_REPORT_FD = common dso_local global i32 0, align 4
@BNX2X_FLOW_CTRL_RX = common dso_local global i32 0, align 4
@BNX2X_LINK_REPORT_RX_FC_ON = common dso_local global i32 0, align 4
@BNX2X_FLOW_CTRL_TX = common dso_local global i32 0, align 4
@BNX2X_LINK_REPORT_TX_FC_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_link_report_data*)* @bnx2x_fill_report_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_fill_report_data(%struct.bnx2x* %0, %struct.bnx2x_link_report_data* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_link_report_data*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_link_report_data* %1, %struct.bnx2x_link_report_data** %4, align 8
  %5 = load %struct.bnx2x_link_report_data*, %struct.bnx2x_link_report_data** %4, align 8
  %6 = call i32 @memset(%struct.bnx2x_link_report_data* %5, i32 0, i32 8)
  %7 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %8 = call i64 @IS_PF(%struct.bnx2x* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %80

10:                                               ; preds = %2
  %11 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %12 = call i32 @bnx2x_get_mf_speed(%struct.bnx2x* %11)
  %13 = load %struct.bnx2x_link_report_data*, %struct.bnx2x_link_report_data** %4, align 8
  %14 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %16 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %10
  %21 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %22 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MF_FUNC_DIS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20, %10
  %28 = load i32, i32* @BNX2X_LINK_REPORT_LINK_DOWN, align 4
  %29 = load %struct.bnx2x_link_report_data*, %struct.bnx2x_link_report_data** %4, align 8
  %30 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %29, i32 0, i32 0
  %31 = call i32 @__set_bit(i32 %28, i32* %30)
  br label %32

32:                                               ; preds = %27, %20
  %33 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %34 = call i32 @BNX2X_NUM_ETH_QUEUES(%struct.bnx2x* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @BNX2X_LINK_REPORT_LINK_DOWN, align 4
  %38 = load %struct.bnx2x_link_report_data*, %struct.bnx2x_link_report_data** %4, align 8
  %39 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %38, i32 0, i32 0
  %40 = call i32 @__set_bit(i32 %37, i32* %39)
  br label %41

41:                                               ; preds = %36, %32
  %42 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %43 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DUPLEX_FULL, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load i32, i32* @BNX2X_LINK_REPORT_FD, align 4
  %50 = load %struct.bnx2x_link_report_data*, %struct.bnx2x_link_report_data** %4, align 8
  %51 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %50, i32 0, i32 0
  %52 = call i32 @__set_bit(i32 %49, i32* %51)
  br label %53

53:                                               ; preds = %48, %41
  %54 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %55 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @BNX2X_FLOW_CTRL_RX, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  %62 = load i32, i32* @BNX2X_LINK_REPORT_RX_FC_ON, align 4
  %63 = load %struct.bnx2x_link_report_data*, %struct.bnx2x_link_report_data** %4, align 8
  %64 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %63, i32 0, i32 0
  %65 = call i32 @__set_bit(i32 %62, i32* %64)
  br label %66

66:                                               ; preds = %61, %53
  %67 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %68 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @BNX2X_FLOW_CTRL_TX, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load i32, i32* @BNX2X_LINK_REPORT_TX_FC_ON, align 4
  %76 = load %struct.bnx2x_link_report_data*, %struct.bnx2x_link_report_data** %4, align 8
  %77 = getelementptr inbounds %struct.bnx2x_link_report_data, %struct.bnx2x_link_report_data* %76, i32 0, i32 0
  %78 = call i32 @__set_bit(i32 %75, i32* %77)
  br label %79

79:                                               ; preds = %74, %66
  br label %86

80:                                               ; preds = %2
  %81 = load %struct.bnx2x_link_report_data*, %struct.bnx2x_link_report_data** %4, align 8
  %82 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %83 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %82, i32 0, i32 1
  %84 = bitcast %struct.bnx2x_link_report_data* %81 to i8*
  %85 = bitcast %struct.bnx2x_link_report_data* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 4 %85, i64 8, i1 false)
  br label %86

86:                                               ; preds = %80, %79
  ret void
}

declare dso_local i32 @memset(%struct.bnx2x_link_report_data*, i32, i32) #1

declare dso_local i64 @IS_PF(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_get_mf_speed(%struct.bnx2x*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @BNX2X_NUM_ETH_QUEUES(%struct.bnx2x*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
