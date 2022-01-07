; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_pci_probe_main.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_pci_probe_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { {}*, {}* }

@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to initialise NIC\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to initialise port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_pci_probe_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_pci_probe_main(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %5 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %6 = call i32 @efx_probe_all(%struct.efx_nic* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %85

10:                                               ; preds = %1
  %11 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %12 = call i32 @efx_init_napi(%struct.efx_nic* %11)
  %13 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %14 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %13, i32 0, i32 2
  %15 = call i32 @down_write(i32* %14)
  %16 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %17 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.efx_nic*)**
  %21 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %20, align 8
  %22 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %23 = call i32 %21(%struct.efx_nic* %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %25 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %24, i32 0, i32 2
  %26 = call i32 @up_write(i32* %25)
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %10
  %30 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %31 = load i32, i32* @probe, align 4
  %32 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %33 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @netif_err(%struct.efx_nic* %30, i32 %31, i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %80

36:                                               ; preds = %10
  %37 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %38 = call i32 @efx_init_port(%struct.efx_nic* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %43 = load i32, i32* @probe, align 4
  %44 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %45 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @netif_err(%struct.efx_nic* %42, i32 %43, i32 %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %71

48:                                               ; preds = %36
  %49 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %50 = call i32 @efx_nic_init_interrupt(%struct.efx_nic* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %68

54:                                               ; preds = %48
  %55 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %56 = call i32 @efx_set_interrupt_affinity(%struct.efx_nic* %55)
  %57 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %58 = call i32 @efx_enable_interrupts(%struct.efx_nic* %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %63

62:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %87

63:                                               ; preds = %61
  %64 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %65 = call i32 @efx_clear_interrupt_affinity(%struct.efx_nic* %64)
  %66 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %67 = call i32 @efx_nic_fini_interrupt(%struct.efx_nic* %66)
  br label %68

68:                                               ; preds = %63, %53
  %69 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %70 = call i32 @efx_fini_port(%struct.efx_nic* %69)
  br label %71

71:                                               ; preds = %68, %41
  %72 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %73 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = bitcast {}** %75 to i32 (%struct.efx_nic*)**
  %77 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %76, align 8
  %78 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %79 = call i32 %77(%struct.efx_nic* %78)
  br label %80

80:                                               ; preds = %71, %29
  %81 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %82 = call i32 @efx_fini_napi(%struct.efx_nic* %81)
  %83 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %84 = call i32 @efx_remove_all(%struct.efx_nic* %83)
  br label %85

85:                                               ; preds = %80, %9
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %85, %62
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @efx_probe_all(%struct.efx_nic*) #1

declare dso_local i32 @efx_init_napi(%struct.efx_nic*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @efx_init_port(%struct.efx_nic*) #1

declare dso_local i32 @efx_nic_init_interrupt(%struct.efx_nic*) #1

declare dso_local i32 @efx_set_interrupt_affinity(%struct.efx_nic*) #1

declare dso_local i32 @efx_enable_interrupts(%struct.efx_nic*) #1

declare dso_local i32 @efx_clear_interrupt_affinity(%struct.efx_nic*) #1

declare dso_local i32 @efx_nic_fini_interrupt(%struct.efx_nic*) #1

declare dso_local i32 @efx_fini_port(%struct.efx_nic*) #1

declare dso_local i32 @efx_fini_napi(%struct.efx_nic*) #1

declare dso_local i32 @efx_remove_all(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
