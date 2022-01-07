; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi.c_efx_mcdi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi.c_efx_mcdi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_3__*, %struct.efx_nic*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.efx_mcdi_iface = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.efx_nic* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MCDI_STATE_QUIESCENT = common dso_local global i32 0, align 4
@MCDI_MODE_POLL = common dso_local global i32 0, align 4
@efx_mcdi_timeout_async = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to register driver with MCPU\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Host already registered with MCPU\0A\00", align 1
@MC_CMD_DRV_ATTACH_EXT_OUT_FLAG_PRIMARY = common dso_local global i32 0, align 4
@mcdi_logging_default = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_mcdi_init(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_mcdi_iface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.TYPE_3__* @kzalloc(i32 4, i32 %9)
  %11 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 0
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %12, align 8
  %13 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %14 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %102

18:                                               ; preds = %1
  %19 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %20 = call %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic* %19)
  store %struct.efx_mcdi_iface* %20, %struct.efx_mcdi_iface** %4, align 8
  %21 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %22 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %4, align 8
  %23 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %22, i32 0, i32 11
  store %struct.efx_nic* %21, %struct.efx_nic** %23, align 8
  %24 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %4, align 8
  %25 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %24, i32 0, i32 9
  %26 = call i32 @init_waitqueue_head(i32* %25)
  %27 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %4, align 8
  %28 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %27, i32 0, i32 8
  %29 = call i32 @init_waitqueue_head(i32* %28)
  %30 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %4, align 8
  %31 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %30, i32 0, i32 7
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load i32, i32* @MCDI_STATE_QUIESCENT, align 4
  %34 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %4, align 8
  %35 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @MCDI_MODE_POLL, align 4
  %37 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %4, align 8
  %38 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %4, align 8
  %40 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %39, i32 0, i32 4
  %41 = call i32 @spin_lock_init(i32* %40)
  %42 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %4, align 8
  %43 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %42, i32 0, i32 3
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %4, align 8
  %46 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %45, i32 0, i32 2
  %47 = load i32, i32* @efx_mcdi_timeout_async, align 4
  %48 = call i32 @timer_setup(i32* %46, i32 %47, i32 0)
  %49 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %50 = call i32 @efx_mcdi_poll_reboot(%struct.efx_nic* %49)
  %51 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %4, align 8
  %52 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %51, i32 0, i32 1
  store i32 1, i32* %52, align 8
  %53 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %54 = call i32 @efx_mcdi_handle_assertion(%struct.efx_nic* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %18
  br label %95

58:                                               ; preds = %18
  %59 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %60 = call i32 @efx_mcdi_drv_attach(%struct.efx_nic* %59, i32 1, i32* %5)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %65 = load i32, i32* @probe, align 4
  %66 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %67 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @netif_err(%struct.efx_nic* %64, i32 %65, i32 %68, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %95

70:                                               ; preds = %58
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %75 = load i32, i32* @probe, align 4
  %76 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %77 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @netif_err(%struct.efx_nic* %74, i32 %75, i32 %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %73, %70
  %81 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %82 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @MC_CMD_DRV_ATTACH_EXT_OUT_FLAG_PRIMARY, align 4
  %87 = shl i32 1, %86
  %88 = and i32 %85, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %80
  %91 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %92 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %93 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %92, i32 0, i32 1
  store %struct.efx_nic* %91, %struct.efx_nic** %93, align 8
  br label %94

94:                                               ; preds = %90, %80
  store i32 0, i32* %2, align 4
  br label %104

95:                                               ; preds = %63, %57
  %96 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %97 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = call i32 @kfree(%struct.TYPE_3__* %98)
  %100 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %101 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %100, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %101, align 8
  br label %102

102:                                              ; preds = %95, %17
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %94
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.TYPE_3__* @kzalloc(i32, i32) #1

declare dso_local %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @efx_mcdi_poll_reboot(%struct.efx_nic*) #1

declare dso_local i32 @efx_mcdi_handle_assertion(%struct.efx_nic*) #1

declare dso_local i32 @efx_mcdi_drv_attach(%struct.efx_nic*, i32, i32*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
