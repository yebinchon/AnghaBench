; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_dump_dcbx_drv_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_dump_dcbx_drv_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.dcbx_features = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"local_mib.error %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"local_mib.features.ets.enabled %x\0A\00", align 1
@DCBX_MAX_NUM_PG_BW_ENTRIES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"local_mib.features.ets.pg_bw_tbl[%d] %d\0A\00", align 1
@DCBX_MAX_NUM_PRI_PG_ENTRIES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"local_mib.features.ets.pri_pg_tbl[%d] %d\0A\00", align 1
@BNX2X_MSG_DCB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"dcbx_features.pfc.pri_en_bitmap %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"dcbx_features.pfc.pfc_caps %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"dcbx_features.pfc.enabled %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"dcbx_features.app.default_pri %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"dcbx_features.app.tc_supported %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"dcbx_features.app.enabled %x\0A\00", align 1
@DCBX_MAX_APP_PROTOCOL = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [45 x i8] c"dcbx_features.app.app_pri_tbl[%x].app_id %x\0A\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"dcbx_features.app.app_pri_tbl[%x].pri_bitmap %x\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"dcbx_features.app.app_pri_tbl[%x].appBitfield %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.dcbx_features*, i32)* @bnx2x_dump_dcbx_drv_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_dump_dcbx_drv_param(%struct.bnx2x* %0, %struct.dcbx_features* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.dcbx_features*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.dcbx_features* %1, %struct.dcbx_features** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @NETIF_MSG_LINK, align 4
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = call i32 (i32, i8*, i64, ...) @DP(i32 %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i32, i32* @NETIF_MSG_LINK, align 4
  %13 = load %struct.dcbx_features*, %struct.dcbx_features** %5, align 8
  %14 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = call i32 (i32, i8*, i64, ...) @DP(i32 %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  store i64 0, i64* %7, align 8
  br label %19

19:                                               ; preds = %33, %3
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @DCBX_MAX_NUM_PG_BW_ENTRIES, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load i32, i32* @NETIF_MSG_LINK, align 4
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.dcbx_features*, %struct.dcbx_features** %5, align 8
  %27 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @DCBX_PG_BW_GET(i32 %29, i64 %30)
  %32 = call i32 (i32, i8*, i64, ...) @DP(i32 %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %25, i32 %31)
  br label %33

33:                                               ; preds = %23
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %7, align 8
  br label %19

36:                                               ; preds = %19
  store i64 0, i64* %7, align 8
  br label %37

37:                                               ; preds = %51, %36
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @DCBX_MAX_NUM_PRI_PG_ENTRIES, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = load i32, i32* @NETIF_MSG_LINK, align 4
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.dcbx_features*, %struct.dcbx_features** %5, align 8
  %45 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @DCBX_PRI_PG_GET(i32 %47, i64 %48)
  %50 = call i32 (i32, i8*, i64, ...) @DP(i32 %42, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %43, i32 %49)
  br label %51

51:                                               ; preds = %41
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %7, align 8
  br label %37

54:                                               ; preds = %37
  %55 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %56 = load %struct.dcbx_features*, %struct.dcbx_features** %5, align 8
  %57 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = call i32 (i32, i8*, i64, ...) @DP(i32 %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %60)
  %62 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %63 = load %struct.dcbx_features*, %struct.dcbx_features** %5, align 8
  %64 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = call i32 (i32, i8*, i64, ...) @DP(i32 %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %67)
  %69 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %70 = load %struct.dcbx_features*, %struct.dcbx_features** %5, align 8
  %71 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = call i32 (i32, i8*, i64, ...) @DP(i32 %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i64 %74)
  %76 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %77 = load %struct.dcbx_features*, %struct.dcbx_features** %5, align 8
  %78 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = call i32 (i32, i8*, i64, ...) @DP(i32 %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i64 %81)
  %83 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %84 = load %struct.dcbx_features*, %struct.dcbx_features** %5, align 8
  %85 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = call i32 (i32, i8*, i64, ...) @DP(i32 %83, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i64 %88)
  %90 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %91 = load %struct.dcbx_features*, %struct.dcbx_features** %5, align 8
  %92 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = call i32 (i32, i8*, i64, ...) @DP(i32 %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i64 %95)
  store i64 0, i64* %7, align 8
  br label %97

97:                                               ; preds = %135, %54
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* @DCBX_MAX_APP_PROTOCOL, align 8
  %100 = icmp ult i64 %98, %99
  br i1 %100, label %101, label %138

101:                                              ; preds = %97
  %102 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %103 = load i64, i64* %7, align 8
  %104 = load %struct.dcbx_features*, %struct.dcbx_features** %5, align 8
  %105 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = load i64, i64* %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i32, i8*, i64, ...) @DP(i32 %102, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i64 %103, i32 %111)
  %113 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %114 = load i64, i64* %7, align 8
  %115 = load %struct.dcbx_features*, %struct.dcbx_features** %5, align 8
  %116 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = load i64, i64* %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i32, i8*, i64, ...) @DP(i32 %113, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i64 %114, i32 %122)
  %124 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %125 = load i64, i64* %7, align 8
  %126 = load %struct.dcbx_features*, %struct.dcbx_features** %5, align 8
  %127 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = load i64, i64* %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i32, i8*, i64, ...) @DP(i32 %124, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0), i64 %125, i32 %133)
  br label %135

135:                                              ; preds = %101
  %136 = load i64, i64* %7, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %7, align 8
  br label %97

138:                                              ; preds = %97
  ret void
}

declare dso_local i32 @DP(i32, i8*, i64, ...) #1

declare dso_local i32 @DCBX_PG_BW_GET(i32, i64) #1

declare dso_local i32 @DCBX_PRI_PG_GET(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
