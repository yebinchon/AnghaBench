; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_probe_nic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_probe_nic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { {}*, {}*, {}* }

@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"creating NIC\0A\00", align 1
@drv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Insufficient resources to allocate any channels\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@tx_irq_mod_usec = common dso_local global i32 0, align 4
@rx_irq_mod_usec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ef4_nic*)* @ef4_probe_nic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef4_probe_nic(%struct.ef4_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ef4_nic*, align 8
  %4 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %3, align 8
  %5 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %6 = load i32, i32* @probe, align 4
  %7 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %8 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @netif_dbg(%struct.ef4_nic* %5, i32 %6, i32 %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %12 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.ef4_nic*)**
  %16 = load i32 (%struct.ef4_nic*)*, i32 (%struct.ef4_nic*)** %15, align 8
  %17 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %18 = call i32 %16(%struct.ef4_nic* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %131

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %77, %23
  %25 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %26 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %31 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %36 = load i32, i32* @drv, align 4
  %37 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %38 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @netif_err(%struct.ef4_nic* %35, i32 %36, i32 %39, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @ENOSPC, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %121

43:                                               ; preds = %29
  %44 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %45 = call i32 @ef4_probe_interrupts(%struct.ef4_nic* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %121

49:                                               ; preds = %43
  %50 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %51 = call i32 @ef4_set_channels(%struct.ef4_nic* %50)
  %52 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %53 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = bitcast {}** %55 to i32 (%struct.ef4_nic*)**
  %57 = load i32 (%struct.ef4_nic*)*, i32 (%struct.ef4_nic*)** %56, align 8
  %58 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %59 = call i32 %57(%struct.ef4_nic* %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %49
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @EAGAIN, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp ne i32 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %118

68:                                               ; preds = %62, %49
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @EAGAIN, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %75 = call i32 @ef4_remove_interrupts(%struct.ef4_nic* %74)
  br label %76

76:                                               ; preds = %73, %68
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @EAGAIN, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %24, label %82

82:                                               ; preds = %77
  %83 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %84 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %89 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %88, i32 0, i32 7
  %90 = call i32 @netdev_rss_key_fill(i32* %89, i32 4)
  br label %91

91:                                               ; preds = %87, %82
  %92 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %93 = call i32 @ef4_set_default_rx_indir_table(%struct.ef4_nic* %92)
  %94 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %95 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %98 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @netif_set_real_num_tx_queues(i32 %96, i32 %99)
  %101 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %102 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %105 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @netif_set_real_num_rx_queues(i32 %103, i32 %106)
  %108 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %109 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @DIV_ROUND_UP(i32 %110, i32 1000)
  %112 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %113 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %115 = load i32, i32* @tx_irq_mod_usec, align 4
  %116 = load i32, i32* @rx_irq_mod_usec, align 4
  %117 = call i32 @ef4_init_irq_moderation(%struct.ef4_nic* %114, i32 %115, i32 %116, i32 1, i32 1)
  store i32 0, i32* %2, align 4
  br label %131

118:                                              ; preds = %67
  %119 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %120 = call i32 @ef4_remove_interrupts(%struct.ef4_nic* %119)
  br label %121

121:                                              ; preds = %118, %48, %34
  %122 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %123 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  %126 = bitcast {}** %125 to i32 (%struct.ef4_nic*)**
  %127 = load i32 (%struct.ef4_nic*)*, i32 (%struct.ef4_nic*)** %126, align 8
  %128 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %129 = call i32 %127(%struct.ef4_nic* %128)
  %130 = load i32, i32* %4, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %121, %91, %21
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @netif_dbg(%struct.ef4_nic*, i32, i32, i8*) #1

declare dso_local i32 @netif_err(%struct.ef4_nic*, i32, i32, i8*) #1

declare dso_local i32 @ef4_probe_interrupts(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_set_channels(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_remove_interrupts(%struct.ef4_nic*) #1

declare dso_local i32 @netdev_rss_key_fill(i32*, i32) #1

declare dso_local i32 @ef4_set_default_rx_indir_table(%struct.ef4_nic*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(i32, i32) #1

declare dso_local i32 @netif_set_real_num_rx_queues(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @ef4_init_irq_moderation(%struct.ef4_nic*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
