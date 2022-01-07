; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_init_bnx2x_kcq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_init_bnx2x_kcq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, %struct.cnic_local* }
%struct.cnic_local = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32*, i32*, i64, i64 }
%struct.TYPE_6__ = type { %struct.host_hc_status_block_e2* }
%struct.host_hc_status_block_e2 = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i32* }
%struct.TYPE_5__ = type { i32*, i32*, i64, i64 }
%struct.bnx2x = type { i32 }
%struct.host_hc_status_block_e1x = type { %struct.TYPE_8__ }

@BAR_CSTRORM_INTMEM = common dso_local global i64 0, align 8
@HC_INDEX_ISCSI_EQ_CONS = common dso_local global i64 0, align 8
@SM_RX_ID = common dso_local global i64 0, align 8
@BAR_USTRORM_INTMEM = common dso_local global i64 0, align 8
@HC_INDEX_FCOE_EQ_CONS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*)* @cnic_init_bnx2x_kcq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_init_bnx2x_kcq(%struct.cnic_dev* %0) #0 {
  %2 = alloca %struct.cnic_dev*, align 8
  %3 = alloca %struct.cnic_local*, align 8
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.host_hc_status_block_e2*, align 8
  %7 = alloca %struct.host_hc_status_block_e1x*, align 8
  %8 = alloca %struct.host_hc_status_block_e2*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %2, align 8
  %9 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %10 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %9, i32 0, i32 1
  %11 = load %struct.cnic_local*, %struct.cnic_local** %10, align 8
  store %struct.cnic_local* %11, %struct.cnic_local** %3, align 8
  %12 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %13 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.bnx2x* @netdev_priv(i32 %14)
  store %struct.bnx2x* %15, %struct.bnx2x** %4, align 8
  %16 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %17 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @CSTORM_ISCSI_EQ_PROD_OFFSET(i32 %20, i32 0)
  %22 = add nsw i64 %19, %21
  %23 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %24 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  store i64 %22, i64* %25, align 8
  %26 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %27 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %30 = call i64 @BNX2X_CHIP_IS_E2_PLUS(%struct.bnx2x* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %1
  %33 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %34 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.host_hc_status_block_e2*, %struct.host_hc_status_block_e2** %35, align 8
  store %struct.host_hc_status_block_e2* %36, %struct.host_hc_status_block_e2** %6, align 8
  %37 = load %struct.host_hc_status_block_e2*, %struct.host_hc_status_block_e2** %6, align 8
  %38 = getelementptr inbounds %struct.host_hc_status_block_e2, %struct.host_hc_status_block_e2* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @HC_INDEX_ISCSI_EQ_CONS, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %44 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32* %42, i32** %45, align 8
  %46 = load %struct.host_hc_status_block_e2*, %struct.host_hc_status_block_e2** %6, align 8
  %47 = getelementptr inbounds %struct.host_hc_status_block_e2, %struct.host_hc_status_block_e2* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @SM_RX_ID, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %53 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32* %51, i32** %54, align 8
  br label %79

55:                                               ; preds = %1
  %56 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %57 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.host_hc_status_block_e2*, %struct.host_hc_status_block_e2** %58, align 8
  %60 = bitcast %struct.host_hc_status_block_e2* %59 to %struct.host_hc_status_block_e1x*
  store %struct.host_hc_status_block_e1x* %60, %struct.host_hc_status_block_e1x** %7, align 8
  %61 = load %struct.host_hc_status_block_e1x*, %struct.host_hc_status_block_e1x** %7, align 8
  %62 = getelementptr inbounds %struct.host_hc_status_block_e1x, %struct.host_hc_status_block_e1x* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @HC_INDEX_ISCSI_EQ_CONS, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %68 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i32* %66, i32** %69, align 8
  %70 = load %struct.host_hc_status_block_e1x*, %struct.host_hc_status_block_e1x** %7, align 8
  %71 = getelementptr inbounds %struct.host_hc_status_block_e1x, %struct.host_hc_status_block_e1x* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @SM_RX_ID, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %77 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i32* %75, i32** %78, align 8
  br label %79

79:                                               ; preds = %55, %32
  %80 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %81 = call i64 @BNX2X_CHIP_IS_E2_PLUS(%struct.bnx2x* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %116

83:                                               ; preds = %79
  %84 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %85 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load %struct.host_hc_status_block_e2*, %struct.host_hc_status_block_e2** %86, align 8
  store %struct.host_hc_status_block_e2* %87, %struct.host_hc_status_block_e2** %8, align 8
  %88 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i64 @USTORM_FCOE_EQ_PROD_OFFSET(i32 %89)
  %91 = add nsw i64 %88, %90
  %92 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %93 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 3
  store i64 %91, i64* %94, align 8
  %95 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %96 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = load %struct.host_hc_status_block_e2*, %struct.host_hc_status_block_e2** %8, align 8
  %99 = getelementptr inbounds %struct.host_hc_status_block_e2, %struct.host_hc_status_block_e2* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @HC_INDEX_FCOE_EQ_CONS, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %105 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  store i32* %103, i32** %106, align 8
  %107 = load %struct.host_hc_status_block_e2*, %struct.host_hc_status_block_e2** %8, align 8
  %108 = getelementptr inbounds %struct.host_hc_status_block_e2, %struct.host_hc_status_block_e2* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* @SM_RX_ID, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %114 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  store i32* %112, i32** %115, align 8
  br label %116

116:                                              ; preds = %83, %79
  ret void
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local i64 @CSTORM_ISCSI_EQ_PROD_OFFSET(i32, i32) #1

declare dso_local i64 @BNX2X_CHIP_IS_E2_PLUS(%struct.bnx2x*) #1

declare dso_local i64 @USTORM_FCOE_EQ_PROD_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
