; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi.c_efx_mcdi_send_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi.c_efx_mcdi_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32 (%struct.efx_nic*, %struct.TYPE_9__*, i64, %struct.TYPE_9__*, i64)* }
%struct.TYPE_9__ = type { i32* }
%struct.efx_mcdi_iface = type { i8*, i64, i32, i64, i32, i64, i32 }

@MCDI_STATE_QUIESCENT = common dso_local global i64 0, align 8
@SEQ_MASK = common dso_local global i32 0, align 4
@MCDI_MODE_EVENTS = common dso_local global i64 0, align 8
@MCDI_HEADER_XFLAGS_EVREQ = common dso_local global i32 0, align 4
@MCDI_HEADER_RESPONSE = common dso_local global i32 0, align 4
@MCDI_HEADER_RESYNC = common dso_local global i32 0, align 4
@MCDI_HEADER_CODE = common dso_local global i32 0, align 4
@MCDI_HEADER_DATALEN = common dso_local global i32 0, align 4
@MCDI_HEADER_SEQ = common dso_local global i32 0, align 4
@MCDI_HEADER_XFLAGS = common dso_local global i32 0, align 4
@MCDI_HEADER_NOT_EPOCH = common dso_local global i32 0, align 4
@MCDI_CTL_SDU_LEN_MAX_V2 = common dso_local global i64 0, align 8
@MC_CMD_V2_EXTN = common dso_local global i32 0, align 4
@MC_CMD_V2_EXTN_IN_EXTENDED_CMD = common dso_local global i32 0, align 4
@MC_CMD_V2_EXTN_IN_ACTUAL_LEN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, i32, %struct.TYPE_9__*, i64)* @efx_mcdi_send_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_mcdi_send_request(%struct.efx_nic* %0, i32 %1, %struct.TYPE_9__* %2, i64 %3) #0 {
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.efx_mcdi_iface*, align 8
  %10 = alloca [2 x %struct.TYPE_9__], align 16
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %15 = call %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic* %14)
  store %struct.efx_mcdi_iface* %15, %struct.efx_mcdi_iface** %9, align 8
  %16 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %9, align 8
  %17 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MCDI_STATE_QUIESCENT, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %9, align 8
  %24 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %23, i32 0, i32 6
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %9, align 8
  %27 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %9, align 8
  %31 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %30, i32 0, i32 6
  %32 = call i32 @spin_unlock_bh(i32* %31)
  %33 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %9, align 8
  %34 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SEQ_MASK, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %38 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %9, align 8
  %39 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MCDI_MODE_EVENTS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %4
  %44 = load i32, i32* @MCDI_HEADER_XFLAGS_EVREQ, align 4
  %45 = load i32, i32* %12, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %43, %4
  %48 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %49 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %76

54:                                               ; preds = %47
  %55 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %10, i64 0, i64 0
  %56 = load i32, i32* @MCDI_HEADER_RESPONSE, align 4
  %57 = load i32, i32* @MCDI_HEADER_RESYNC, align 4
  %58 = load i32, i32* @MCDI_HEADER_CODE, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @MCDI_HEADER_DATALEN, align 4
  %61 = load i64, i64* %8, align 8
  %62 = load i32, i32* @MCDI_HEADER_SEQ, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @MCDI_HEADER_XFLAGS, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @MCDI_HEADER_NOT_EPOCH, align 4
  %67 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %9, align 8
  %68 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %74 = load i32*, i32** %73, align 16
  %75 = call i32 @EFX_POPULATE_DWORD_7(i32* %74, i32 %56, i32 0, i32 %57, i32 1, i32 %58, i32 %59, i32 %60, i64 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %72)
  store i64 4, i64* %11, align 8
  br label %110

76:                                               ; preds = %47
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* @MCDI_CTL_SDU_LEN_MAX_V2, align 8
  %79 = icmp ugt i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @BUG_ON(i32 %80)
  %82 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %10, i64 0, i64 0
  %83 = load i32, i32* @MCDI_HEADER_RESPONSE, align 4
  %84 = load i32, i32* @MCDI_HEADER_RESYNC, align 4
  %85 = load i32, i32* @MCDI_HEADER_CODE, align 4
  %86 = load i32, i32* @MC_CMD_V2_EXTN, align 4
  %87 = load i32, i32* @MCDI_HEADER_DATALEN, align 4
  %88 = load i32, i32* @MCDI_HEADER_SEQ, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* @MCDI_HEADER_XFLAGS, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @MCDI_HEADER_NOT_EPOCH, align 4
  %93 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %9, align 8
  %94 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %100 = load i32*, i32** %99, align 16
  %101 = call i32 @EFX_POPULATE_DWORD_7(i32* %100, i32 %83, i32 0, i32 %84, i32 1, i32 %85, i32 %86, i32 %87, i64 0, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %98)
  %102 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %10, i64 0, i64 1
  %103 = load i32, i32* @MC_CMD_V2_EXTN_IN_EXTENDED_CMD, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @MC_CMD_V2_EXTN_IN_ACTUAL_LEN, align 4
  %106 = load i64, i64* %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @EFX_POPULATE_DWORD_2(i32* %108, i32 %103, i32 %104, i32 %105, i64 %106)
  store i64 8, i64* %11, align 8
  br label %110

110:                                              ; preds = %76, %54
  %111 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %112 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i32 (%struct.efx_nic*, %struct.TYPE_9__*, i64, %struct.TYPE_9__*, i64)*, i32 (%struct.efx_nic*, %struct.TYPE_9__*, i64, %struct.TYPE_9__*, i64)** %114, align 8
  %116 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %117 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %10, i64 0, i64 0
  %118 = load i64, i64* %11, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %120 = load i64, i64* %8, align 8
  %121 = call i32 %115(%struct.efx_nic* %116, %struct.TYPE_9__* %117, i64 %118, %struct.TYPE_9__* %119, i64 %120)
  %122 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %9, align 8
  %123 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %122, i32 0, i32 4
  store i32 0, i32* %123, align 8
  ret void
}

declare dso_local %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @EFX_POPULATE_DWORD_7(i32*, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @EFX_POPULATE_DWORD_2(i32*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
