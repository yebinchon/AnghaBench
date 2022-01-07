; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_init_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c_ef4_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}*, {}*, {}* }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"init port\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ef4_nic*)* @ef4_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef4_init_port(%struct.ef4_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ef4_nic*, align 8
  %4 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %3, align 8
  %5 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %6 = load i32, i32* @drv, align 4
  %7 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %8 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @netif_dbg(%struct.ef4_nic* %5, i32 %6, i32 %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %12 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %15 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.ef4_nic*)**
  %19 = load i32 (%struct.ef4_nic*)*, i32 (%struct.ef4_nic*)** %18, align 8
  %20 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %21 = call i32 %19(%struct.ef4_nic* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %59

25:                                               ; preds = %1
  %26 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %27 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %29 = call i32 @ef4_mac_reconfigure(%struct.ef4_nic* %28)
  %30 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %31 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = bitcast {}** %33 to i32 (%struct.ef4_nic*)**
  %35 = load i32 (%struct.ef4_nic*)*, i32 (%struct.ef4_nic*)** %34, align 8
  %36 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %37 = call i32 %35(%struct.ef4_nic* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %25
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @EPERM, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %50

46:                                               ; preds = %40, %25
  %47 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %48 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %47, i32 0, i32 1
  %49 = call i32 @mutex_unlock(i32* %48)
  store i32 0, i32* %2, align 4
  br label %64

50:                                               ; preds = %45
  %51 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %52 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = bitcast {}** %54 to i32 (%struct.ef4_nic*)**
  %56 = load i32 (%struct.ef4_nic*)*, i32 (%struct.ef4_nic*)** %55, align 8
  %57 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %58 = call i32 %56(%struct.ef4_nic* %57)
  br label %59

59:                                               ; preds = %50, %24
  %60 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %61 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %59, %46
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @netif_dbg(%struct.ef4_nic*, i32, i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ef4_mac_reconfigure(%struct.ef4_nic*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
