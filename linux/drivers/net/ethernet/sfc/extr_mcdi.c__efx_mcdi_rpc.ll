; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi.c__efx_mcdi_rpc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi.c__efx_mcdi_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.efx_mcdi_iface = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"MCDI waiting for proxy auth %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"MCDI proxy retry %d\0A\00", align 1
@MCDI_STATE_RUNNING_SYNC = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@err = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"MC command 0x%x failed after proxy auth rc=%d\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@RESET_TYPE_MC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, i32, i32*, i64, i32*, i64, i64*, i32, i32*)* @_efx_mcdi_rpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_efx_mcdi_rpc(%struct.efx_nic* %0, i32 %1, i32* %2, i64 %3, i32* %4, i64 %5, i64* %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.efx_nic*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.efx_mcdi_iface*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i64 %3, i64* %14, align 8
  store i32* %4, i32** %15, align 8
  store i64 %5, i64* %16, align 8
  store i64* %6, i64** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  store i64 0, i64* %20, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %9
  %26 = load i64, i64* %14, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i32*, i32** %13, align 8
  %30 = load i32*, i32** %15, align 8
  %31 = icmp eq i32* %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = call i32 @WARN_ON(i32 1)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %10, align 4
  br label %133

36:                                               ; preds = %28, %25, %9
  %37 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load i32*, i32** %13, align 8
  %40 = load i64, i64* %14, align 8
  %41 = call i32 @efx_mcdi_rpc_start(%struct.efx_nic* %37, i32 %38, i32* %39, i64 %40)
  store i32 %41, i32* %21, align 4
  %42 = load i32, i32* %21, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %21, align 4
  store i32 %45, i32* %10, align 4
  br label %133

46:                                               ; preds = %36
  %47 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i64, i64* %14, align 8
  %50 = load i32*, i32** %15, align 8
  %51 = load i64, i64* %16, align 8
  %52 = load i64*, i64** %17, align 8
  %53 = load i32, i32* %18, align 4
  %54 = load i32*, i32** %19, align 8
  %55 = call i32 @_efx_mcdi_rpc_finish(%struct.efx_nic* %47, i32 %48, i64 %49, i32* %50, i64 %51, i64* %52, i32 %53, i64* %20, i32* %54)
  store i32 %55, i32* %21, align 4
  %56 = load i64, i64* %20, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %131

58:                                               ; preds = %46
  %59 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %60 = call %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic* %59)
  store %struct.efx_mcdi_iface* %60, %struct.efx_mcdi_iface** %22, align 8
  %61 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %62 = load i32, i32* @hw, align 4
  %63 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %64 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %20, align 8
  %67 = call i32 @netif_dbg(%struct.efx_nic* %61, i32 %62, i32 %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %66)
  %68 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %69 = load i64, i64* %20, align 8
  %70 = load i32, i32* %18, align 4
  %71 = call i32 @efx_mcdi_proxy_wait(%struct.efx_nic* %68, i64 %69, i32 %70)
  store i32 %71, i32* %21, align 4
  %72 = load i32, i32* %21, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %58
  %75 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %76 = load i32, i32* @hw, align 4
  %77 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %78 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %20, align 8
  %81 = call i32 @netif_dbg(%struct.efx_nic* %75, i32 %76, i32 %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %80)
  %82 = load i32, i32* @MCDI_STATE_RUNNING_SYNC, align 4
  %83 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %22, align 8
  %84 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32*, i32** %13, align 8
  %88 = load i64, i64* %14, align 8
  %89 = call i32 @efx_mcdi_send_request(%struct.efx_nic* %85, i32 %86, i32* %87, i64 %88)
  %90 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load i64, i64* %14, align 8
  %93 = load i32*, i32** %15, align 8
  %94 = load i64, i64* %16, align 8
  %95 = load i64*, i64** %17, align 8
  %96 = load i32, i32* %18, align 4
  %97 = load i32*, i32** %19, align 8
  %98 = call i32 @_efx_mcdi_rpc_finish(%struct.efx_nic* %90, i32 %91, i64 %92, i32* %93, i64 %94, i64* %95, i32 %96, i64* null, i32* %97)
  store i32 %98, i32* %21, align 4
  br label %130

99:                                               ; preds = %58
  %100 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %101 = load i32, i32* @hw, align 4
  %102 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %103 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %21, align 4
  %106 = load i32, i32* @EPERM, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp eq i32 %105, %107
  %109 = zext i1 %108 to i32
  %110 = load i32, i32* @err, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %21, align 4
  %113 = call i32 @netif_cond_dbg(%struct.efx_nic* %100, i32 %101, i32 %104, i32 %109, i32 %110, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %111, i32 %112)
  %114 = load i32, i32* %21, align 4
  %115 = load i32, i32* @EINTR, align 4
  %116 = sub nsw i32 0, %115
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %123, label %118

118:                                              ; preds = %99
  %119 = load i32, i32* %21, align 4
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  %122 = icmp eq i32 %119, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %118, %99
  %124 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %125 = load i32, i32* @RESET_TYPE_MC_FAILURE, align 4
  %126 = call i32 @efx_schedule_reset(%struct.efx_nic* %124, i32 %125)
  br label %127

127:                                              ; preds = %123, %118
  %128 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %22, align 8
  %129 = call i32 @efx_mcdi_release(%struct.efx_mcdi_iface* %128)
  br label %130

130:                                              ; preds = %127, %74
  br label %131

131:                                              ; preds = %130, %46
  %132 = load i32, i32* %21, align 4
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %131, %44, %32
  %134 = load i32, i32* %10, align 4
  ret i32 %134
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @efx_mcdi_rpc_start(%struct.efx_nic*, i32, i32*, i64) #1

declare dso_local i32 @_efx_mcdi_rpc_finish(%struct.efx_nic*, i32, i64, i32*, i64, i64*, i32, i64*, i32*) #1

declare dso_local %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic*) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i64) #1

declare dso_local i32 @efx_mcdi_proxy_wait(%struct.efx_nic*, i64, i32) #1

declare dso_local i32 @efx_mcdi_send_request(%struct.efx_nic*, i32, i32*, i64) #1

declare dso_local i32 @netif_cond_dbg(%struct.efx_nic*, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @efx_schedule_reset(%struct.efx_nic*, i32) #1

declare dso_local i32 @efx_mcdi_release(%struct.efx_mcdi_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
