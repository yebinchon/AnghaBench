; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdricoh_cs.c_sdricoh_pcmcia_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdricoh_cs.c_sdricoh_pcmcia_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.mmc_host* }
%struct.mmc_host = type { i32 }
%struct.sdricoh_host = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"detach\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @sdricoh_pcmcia_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdricoh_pcmcia_detach(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.sdricoh_host*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %5 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %6 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %5, i32 0, i32 1
  %7 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  store %struct.mmc_host* %7, %struct.mmc_host** %3, align 8
  %8 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %9 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %8, i32 0, i32 0
  %10 = call i32 @dev_dbg(i32* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %12 = icmp ne %struct.mmc_host* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %15 = call %struct.sdricoh_host* @mmc_priv(%struct.mmc_host* %14)
  store %struct.sdricoh_host* %15, %struct.sdricoh_host** %4, align 8
  %16 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %17 = call i32 @mmc_remove_host(%struct.mmc_host* %16)
  %18 = load %struct.sdricoh_host*, %struct.sdricoh_host** %4, align 8
  %19 = getelementptr inbounds %struct.sdricoh_host, %struct.sdricoh_host* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sdricoh_host*, %struct.sdricoh_host** %4, align 8
  %22 = getelementptr inbounds %struct.sdricoh_host, %struct.sdricoh_host* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pci_iounmap(i32 %20, i32 %23)
  %25 = load %struct.sdricoh_host*, %struct.sdricoh_host** %4, align 8
  %26 = getelementptr inbounds %struct.sdricoh_host, %struct.sdricoh_host* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pci_dev_put(i32 %27)
  %29 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %30 = call i32 @mmc_free_host(%struct.mmc_host* %29)
  br label %31

31:                                               ; preds = %13, %1
  %32 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %33 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %32)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.sdricoh_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mmc_remove_host(%struct.mmc_host*) #1

declare dso_local i32 @pci_iounmap(i32, i32) #1

declare dso_local i32 @pci_dev_put(i32) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
