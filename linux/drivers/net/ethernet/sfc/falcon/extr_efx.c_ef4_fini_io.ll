; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_fini_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_fini_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32, i64, %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"shutting down I/O\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_nic*)* @ef4_fini_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ef4_fini_io(%struct.ef4_nic* %0) #0 {
  %2 = alloca %struct.ef4_nic*, align 8
  %3 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %2, align 8
  %4 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %5 = load i32, i32* @drv, align 4
  %6 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %7 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @netif_dbg(%struct.ef4_nic* %4, i32 %5, i32 %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %11 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %16 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @iounmap(i32* %17)
  %19 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %20 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %19, i32 0, i32 3
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %14, %1
  %22 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %23 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %28 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %3, align 4
  %32 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %33 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @pci_release_region(i32 %34, i32 %35)
  %37 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %38 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %26, %21
  %40 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %41 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @pci_vfs_assigned(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %47 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @pci_disable_device(i32 %48)
  br label %50

50:                                               ; preds = %45, %39
  ret void
}

declare dso_local i32 @netif_dbg(%struct.ef4_nic*, i32, i32, i8*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @pci_release_region(i32, i32) #1

declare dso_local i32 @pci_vfs_assigned(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
