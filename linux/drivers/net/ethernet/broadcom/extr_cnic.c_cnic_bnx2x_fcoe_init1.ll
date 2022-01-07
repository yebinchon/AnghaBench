; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_bnx2x_fcoe_init1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_bnx2x_fcoe_init1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, %struct.cnic_local* }
%struct.cnic_local = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.kwqe = type { i32 }
%struct.bnx2x = type { i32 }
%struct.fcoe_init_ramrod_params = type { i32, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.fcoe_kwqe_init1 = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.fcoe_kwqe_init2 = type { %struct.TYPE_5__ }
%struct.fcoe_kwqe_init3 = type { %struct.TYPE_5__ }
%union.l5cm_specific_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FCOE_KWQE_OPCODE_INIT2 = common dso_local global i64 0, align 8
@FCOE_KWQE_OPCODE_INIT3 = common dso_local global i64 0, align 8
@CNIC_KWQ16_DATA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"fcoe_init size too big\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BNX2X_FCOE_L5_CID_BASE = common dso_local global i32 0, align 4
@MAX_KCQ_IDX = common dso_local global i32 0, align 4
@HC_INDEX_FCOE_EQ_CONS = common dso_local global i32 0, align 4
@FCOE_RAMROD_CMD_ID_INIT_FUNC = common dso_local global i32 0, align 4
@FCOE_CONNECTION_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, %struct.kwqe**, i32, i32*)* @cnic_bnx2x_fcoe_init1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_bnx2x_fcoe_init1(%struct.cnic_dev* %0, %struct.kwqe** %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cnic_dev*, align 8
  %7 = alloca %struct.kwqe**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cnic_local*, align 8
  %12 = alloca %struct.bnx2x*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.fcoe_init_ramrod_params*, align 8
  %15 = alloca %struct.fcoe_kwqe_init1*, align 8
  %16 = alloca %struct.fcoe_kwqe_init2*, align 8
  %17 = alloca %struct.fcoe_kwqe_init3*, align 8
  %18 = alloca %union.l5cm_specific_data, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %6, align 8
  store %struct.kwqe** %1, %struct.kwqe*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %19 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %20 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %19, i32 0, i32 1
  %21 = load %struct.cnic_local*, %struct.cnic_local** %20, align 8
  store %struct.cnic_local* %21, %struct.cnic_local** %11, align 8
  %22 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %23 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.bnx2x* @netdev_priv(i32 %24)
  store %struct.bnx2x* %25, %struct.bnx2x** %12, align 8
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 3
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = load i32*, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %154

33:                                               ; preds = %4
  %34 = load %struct.kwqe**, %struct.kwqe*** %7, align 8
  %35 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %34, i64 0
  %36 = load %struct.kwqe*, %struct.kwqe** %35, align 8
  %37 = bitcast %struct.kwqe* %36 to %struct.fcoe_kwqe_init1*
  store %struct.fcoe_kwqe_init1* %37, %struct.fcoe_kwqe_init1** %15, align 8
  %38 = load %struct.kwqe**, %struct.kwqe*** %7, align 8
  %39 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %38, i64 1
  %40 = load %struct.kwqe*, %struct.kwqe** %39, align 8
  %41 = bitcast %struct.kwqe* %40 to %struct.fcoe_kwqe_init2*
  store %struct.fcoe_kwqe_init2* %41, %struct.fcoe_kwqe_init2** %16, align 8
  %42 = load %struct.kwqe**, %struct.kwqe*** %7, align 8
  %43 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %42, i64 2
  %44 = load %struct.kwqe*, %struct.kwqe** %43, align 8
  %45 = bitcast %struct.kwqe* %44 to %struct.fcoe_kwqe_init3*
  store %struct.fcoe_kwqe_init3* %45, %struct.fcoe_kwqe_init3** %17, align 8
  %46 = load %struct.fcoe_kwqe_init2*, %struct.fcoe_kwqe_init2** %16, align 8
  %47 = getelementptr inbounds %struct.fcoe_kwqe_init2, %struct.fcoe_kwqe_init2* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @FCOE_KWQE_OPCODE_INIT2, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %33
  %53 = load i32*, i32** %9, align 8
  store i32 1, i32* %53, align 4
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %154

56:                                               ; preds = %33
  %57 = load %struct.fcoe_kwqe_init3*, %struct.fcoe_kwqe_init3** %17, align 8
  %58 = getelementptr inbounds %struct.fcoe_kwqe_init3, %struct.fcoe_kwqe_init3* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @FCOE_KWQE_OPCODE_INIT3, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i32*, i32** %9, align 8
  store i32 2, i32* %64, align 4
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %154

67:                                               ; preds = %56
  %68 = load i32, i32* @CNIC_KWQ16_DATA_SIZE, align 4
  %69 = sext i32 %68 to i64
  %70 = icmp ugt i64 36, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %73 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @netdev_err(i32 %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %154

78:                                               ; preds = %67
  %79 = load %struct.cnic_local*, %struct.cnic_local** %11, align 8
  %80 = load i32, i32* @BNX2X_FCOE_L5_CID_BASE, align 4
  %81 = call %struct.fcoe_init_ramrod_params* @cnic_get_kwqe_16_data(%struct.cnic_local* %79, i32 %80, %union.l5cm_specific_data* %18)
  store %struct.fcoe_init_ramrod_params* %81, %struct.fcoe_init_ramrod_params** %14, align 8
  %82 = load %struct.fcoe_init_ramrod_params*, %struct.fcoe_init_ramrod_params** %14, align 8
  %83 = icmp ne %struct.fcoe_init_ramrod_params* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %154

87:                                               ; preds = %78
  %88 = load %struct.fcoe_init_ramrod_params*, %struct.fcoe_init_ramrod_params** %14, align 8
  %89 = call i32 @memset(%struct.fcoe_init_ramrod_params* %88, i32 0, i32 36)
  %90 = load %struct.fcoe_init_ramrod_params*, %struct.fcoe_init_ramrod_params** %14, align 8
  %91 = getelementptr inbounds %struct.fcoe_init_ramrod_params, %struct.fcoe_init_ramrod_params* %90, i32 0, i32 7
  %92 = load %struct.fcoe_kwqe_init1*, %struct.fcoe_kwqe_init1** %15, align 8
  %93 = bitcast %struct.fcoe_kwqe_init1* %92 to %struct.fcoe_kwqe_init3*
  %94 = call i32 @memcpy(i32* %91, %struct.fcoe_kwqe_init3* %93, i32 8)
  %95 = load %struct.fcoe_init_ramrod_params*, %struct.fcoe_init_ramrod_params** %14, align 8
  %96 = getelementptr inbounds %struct.fcoe_init_ramrod_params, %struct.fcoe_init_ramrod_params* %95, i32 0, i32 6
  %97 = load %struct.fcoe_kwqe_init2*, %struct.fcoe_kwqe_init2** %16, align 8
  %98 = bitcast %struct.fcoe_kwqe_init2* %97 to %struct.fcoe_kwqe_init3*
  %99 = call i32 @memcpy(i32* %96, %struct.fcoe_kwqe_init3* %98, i32 8)
  %100 = load %struct.fcoe_init_ramrod_params*, %struct.fcoe_init_ramrod_params** %14, align 8
  %101 = getelementptr inbounds %struct.fcoe_init_ramrod_params, %struct.fcoe_init_ramrod_params* %100, i32 0, i32 5
  %102 = load %struct.fcoe_kwqe_init3*, %struct.fcoe_kwqe_init3** %17, align 8
  %103 = call i32 @memcpy(i32* %101, %struct.fcoe_kwqe_init3* %102, i32 8)
  %104 = load %struct.cnic_local*, %struct.cnic_local** %11, align 8
  %105 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.fcoe_init_ramrod_params*, %struct.fcoe_init_ramrod_params** %14, align 8
  %110 = getelementptr inbounds %struct.fcoe_init_ramrod_params, %struct.fcoe_init_ramrod_params* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 4
  %112 = load %struct.cnic_local*, %struct.cnic_local** %11, align 8
  %113 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = ashr i32 %116, 32
  %118 = load %struct.fcoe_init_ramrod_params*, %struct.fcoe_init_ramrod_params** %14, align 8
  %119 = getelementptr inbounds %struct.fcoe_init_ramrod_params, %struct.fcoe_init_ramrod_params* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 4
  %121 = load %struct.cnic_local*, %struct.cnic_local** %11, align 8
  %122 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.fcoe_init_ramrod_params*, %struct.fcoe_init_ramrod_params** %14, align 8
  %127 = getelementptr inbounds %struct.fcoe_init_ramrod_params, %struct.fcoe_init_ramrod_params* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  %128 = load %struct.cnic_local*, %struct.cnic_local** %11, align 8
  %129 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.fcoe_init_ramrod_params*, %struct.fcoe_init_ramrod_params** %14, align 8
  %132 = getelementptr inbounds %struct.fcoe_init_ramrod_params, %struct.fcoe_init_ramrod_params* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* @MAX_KCQ_IDX, align 4
  %134 = load %struct.fcoe_init_ramrod_params*, %struct.fcoe_init_ramrod_params** %14, align 8
  %135 = getelementptr inbounds %struct.fcoe_init_ramrod_params, %struct.fcoe_init_ramrod_params* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @HC_INDEX_FCOE_EQ_CONS, align 4
  %137 = load %struct.fcoe_init_ramrod_params*, %struct.fcoe_init_ramrod_params** %14, align 8
  %138 = getelementptr inbounds %struct.fcoe_init_ramrod_params, %struct.fcoe_init_ramrod_params* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  %139 = load %struct.cnic_local*, %struct.cnic_local** %11, align 8
  %140 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  store i64 0, i64* %141, align 8
  %142 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  %143 = load %struct.cnic_local*, %struct.cnic_local** %11, align 8
  %144 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @BNX2X_HW_CID(%struct.bnx2x* %142, i32 %145)
  store i32 %146, i32* %13, align 4
  %147 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %148 = load i32, i32* @FCOE_RAMROD_CMD_ID_INIT_FUNC, align 4
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* @FCOE_CONNECTION_TYPE, align 4
  %151 = call i32 @cnic_submit_kwqe_16(%struct.cnic_dev* %147, i32 %148, i32 %149, i32 %150, %union.l5cm_specific_data* %18)
  store i32 %151, i32* %10, align 4
  %152 = load i32*, i32** %9, align 8
  store i32 3, i32* %152, align 4
  %153 = load i32, i32* %10, align 4
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %87, %84, %71, %63, %52, %28
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local %struct.fcoe_init_ramrod_params* @cnic_get_kwqe_16_data(%struct.cnic_local*, i32, %union.l5cm_specific_data*) #1

declare dso_local i32 @memset(%struct.fcoe_init_ramrod_params*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.fcoe_kwqe_init3*, i32) #1

declare dso_local i32 @BNX2X_HW_CID(%struct.bnx2x*, i32) #1

declare dso_local i32 @cnic_submit_kwqe_16(%struct.cnic_dev*, i32, i32, i32, %union.l5cm_specific_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
