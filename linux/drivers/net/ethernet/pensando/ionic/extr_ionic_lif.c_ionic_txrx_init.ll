; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_txrx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_txrx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_lif = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ionic_lif*)* @ionic_txrx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ionic_txrx_init(%struct.ionic_lif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ionic_lif*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ionic_lif* %0, %struct.ionic_lif** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %51, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %9 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %54

12:                                               ; preds = %6
  %13 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %14 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %15 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ionic_lif_txq_init(%struct.ionic_lif* %13, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  br label %71

26:                                               ; preds = %12
  %27 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %28 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %29 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ionic_lif_rxq_init(%struct.ionic_lif* %27, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %26
  %40 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %41 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %42 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ionic_lif_qcq_deinit(%struct.ionic_lif* %40, i32 %48)
  br label %71

50:                                               ; preds = %26
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %4, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %6

54:                                               ; preds = %6
  %55 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %56 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %55, i32 0, i32 3
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @NETIF_F_RXHASH, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %65 = call i32 @ionic_lif_rss_init(%struct.ionic_lif* %64)
  br label %66

66:                                               ; preds = %63, %54
  %67 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %68 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %67, i32 0, i32 3
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = call i32 @ionic_set_rx_mode(%struct.TYPE_6__* %69)
  store i32 0, i32* %2, align 4
  br label %99

71:                                               ; preds = %39, %25
  br label %72

72:                                               ; preds = %76, %71
  %73 = load i32, i32* %4, align 4
  %74 = add i32 %73, -1
  store i32 %74, i32* %4, align 4
  %75 = icmp ne i32 %73, 0
  br i1 %75, label %76, label %97

76:                                               ; preds = %72
  %77 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %78 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %79 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %78, i32 0, i32 2
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ionic_lif_qcq_deinit(%struct.ionic_lif* %77, i32 %85)
  %87 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %88 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %89 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %88, i32 0, i32 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ionic_lif_qcq_deinit(%struct.ionic_lif* %87, i32 %95)
  br label %72

97:                                               ; preds = %72
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %66
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @ionic_lif_txq_init(%struct.ionic_lif*, i32) #1

declare dso_local i32 @ionic_lif_rxq_init(%struct.ionic_lif*, i32) #1

declare dso_local i32 @ionic_lif_qcq_deinit(%struct.ionic_lif*, i32) #1

declare dso_local i32 @ionic_lif_rss_init(%struct.ionic_lif*) #1

declare dso_local i32 @ionic_set_rx_mode(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
