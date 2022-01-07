; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_device_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_device_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdp1_ctx = type { %struct.fdp1_dev* }
%struct.fdp1_dev = type { i32 }
%struct.fdp1_job = type { i32 }

@FD1_CTL_CLKCTRL_CSTP_N = common dso_local global i32 0, align 4
@FD1_CTL_CLKCTRL = common dso_local global i32 0, align 4
@FD1_IPC_LMEM_LINEAR = common dso_local global i32 0, align 4
@FD1_IPC_LMEM = common dso_local global i32 0, align 4
@FD1_CTL_IRQ_MASK = common dso_local global i32 0, align 4
@FD1_CTL_IRQENB = common dso_local global i32 0, align 4
@FD1_CTL_CMD_STRCMD = common dso_local global i32 0, align 4
@FD1_CTL_CMD = common dso_local global i32 0, align 4
@FD1_CTL_REGEND_REGEND = common dso_local global i32 0, align 4
@FD1_CTL_REGEND = common dso_local global i32 0, align 4
@FD1_CTL_SGCMD_SGEN = common dso_local global i32 0, align 4
@FD1_CTL_SGCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fdp1_ctx*)* @fdp1_device_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdp1_device_process(%struct.fdp1_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fdp1_ctx*, align 8
  %4 = alloca %struct.fdp1_dev*, align 8
  %5 = alloca %struct.fdp1_job*, align 8
  %6 = alloca i64, align 8
  store %struct.fdp1_ctx* %0, %struct.fdp1_ctx** %3, align 8
  %7 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %7, i32 0, i32 0
  %9 = load %struct.fdp1_dev*, %struct.fdp1_dev** %8, align 8
  store %struct.fdp1_dev* %9, %struct.fdp1_dev** %4, align 8
  %10 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %11 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %15 = call %struct.fdp1_job* @get_queued_job(%struct.fdp1_dev* %14)
  store %struct.fdp1_job* %15, %struct.fdp1_job** %5, align 8
  %16 = load %struct.fdp1_job*, %struct.fdp1_job** %5, align 8
  %17 = icmp ne %struct.fdp1_job* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %20 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  store i32 0, i32* %2, align 4
  br label %68

23:                                               ; preds = %1
  %24 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %25 = load i32, i32* @FD1_CTL_CLKCTRL_CSTP_N, align 4
  %26 = load i32, i32* @FD1_CTL_CLKCTRL, align 4
  %27 = call i32 @fdp1_write(%struct.fdp1_dev* %24, i32 %25, i32 %26)
  %28 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %29 = load %struct.fdp1_job*, %struct.fdp1_job** %5, align 8
  %30 = call i32 @fdp1_configure_deint_mode(%struct.fdp1_ctx* %28, %struct.fdp1_job* %29)
  %31 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %32 = call i32 @fdp1_set_ipc_dli(%struct.fdp1_ctx* %31)
  %33 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %34 = call i32 @fdp1_set_ipc_sensor(%struct.fdp1_ctx* %33)
  %35 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %36 = load %struct.fdp1_job*, %struct.fdp1_job** %5, align 8
  %37 = call i32 @fdp1_configure_rpf(%struct.fdp1_ctx* %35, %struct.fdp1_job* %36)
  %38 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %39 = load %struct.fdp1_job*, %struct.fdp1_job** %5, align 8
  %40 = call i32 @fdp1_configure_wpf(%struct.fdp1_ctx* %38, %struct.fdp1_job* %39)
  %41 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %42 = load i32, i32* @FD1_IPC_LMEM_LINEAR, align 4
  %43 = load i32, i32* @FD1_IPC_LMEM, align 4
  %44 = call i32 @fdp1_write(%struct.fdp1_dev* %41, i32 %42, i32 %43)
  %45 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %46 = load i32, i32* @FD1_CTL_IRQ_MASK, align 4
  %47 = load i32, i32* @FD1_CTL_IRQENB, align 4
  %48 = call i32 @fdp1_write(%struct.fdp1_dev* %45, i32 %46, i32 %47)
  %49 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %50 = load %struct.fdp1_job*, %struct.fdp1_job** %5, align 8
  %51 = call i32 @queue_hw_job(%struct.fdp1_dev* %49, %struct.fdp1_job* %50)
  %52 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %53 = load i32, i32* @FD1_CTL_CMD_STRCMD, align 4
  %54 = load i32, i32* @FD1_CTL_CMD, align 4
  %55 = call i32 @fdp1_write(%struct.fdp1_dev* %52, i32 %53, i32 %54)
  %56 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %57 = load i32, i32* @FD1_CTL_REGEND_REGEND, align 4
  %58 = load i32, i32* @FD1_CTL_REGEND, align 4
  %59 = call i32 @fdp1_write(%struct.fdp1_dev* %56, i32 %57, i32 %58)
  %60 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %61 = load i32, i32* @FD1_CTL_SGCMD_SGEN, align 4
  %62 = load i32, i32* @FD1_CTL_SGCMD, align 4
  %63 = call i32 @fdp1_write(%struct.fdp1_dev* %60, i32 %61, i32 %62)
  %64 = load %struct.fdp1_dev*, %struct.fdp1_dev** %4, align 8
  %65 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %64, i32 0, i32 0
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %23, %18
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.fdp1_job* @get_queued_job(%struct.fdp1_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @fdp1_write(%struct.fdp1_dev*, i32, i32) #1

declare dso_local i32 @fdp1_configure_deint_mode(%struct.fdp1_ctx*, %struct.fdp1_job*) #1

declare dso_local i32 @fdp1_set_ipc_dli(%struct.fdp1_ctx*) #1

declare dso_local i32 @fdp1_set_ipc_sensor(%struct.fdp1_ctx*) #1

declare dso_local i32 @fdp1_configure_rpf(%struct.fdp1_ctx*, %struct.fdp1_job*) #1

declare dso_local i32 @fdp1_configure_wpf(%struct.fdp1_ctx*, %struct.fdp1_job*) #1

declare dso_local i32 @queue_hw_job(%struct.fdp1_dev*, %struct.fdp1_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
