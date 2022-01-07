; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.jmb38x_ms = type { i32, %struct.TYPE_9__**, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.jmb38x_ms_host = type { i32, %struct.TYPE_7__*, i64, i32 }
%struct.TYPE_7__ = type { i32 }

@jmb38x_ms_dummy_submit = common dso_local global i32 0, align 4
@INT_SIGNAL_ENABLE = common dso_local global i64 0, align 8
@INT_STATUS_ENABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"interrupts off\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"host removed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @jmb38x_ms_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jmb38x_ms_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.jmb38x_ms*, align 8
  %4 = alloca %struct.jmb38x_ms_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call %struct.jmb38x_ms* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.jmb38x_ms* %8, %struct.jmb38x_ms** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %112, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %3, align 8
  %12 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %115

15:                                               ; preds = %9
  %16 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %3, align 8
  %17 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %18, i64 %20
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = icmp ne %struct.TYPE_9__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %115

25:                                               ; preds = %15
  %26 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %3, align 8
  %27 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %26, i32 0, i32 1
  %28 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %28, i64 %30
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = call %struct.jmb38x_ms_host* @memstick_priv(%struct.TYPE_9__* %32)
  store %struct.jmb38x_ms_host* %33, %struct.jmb38x_ms_host** %4, align 8
  %34 = load i32, i32* @jmb38x_ms_dummy_submit, align 4
  %35 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %3, align 8
  %36 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %37, i64 %39
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32 %34, i32* %42, align 4
  %43 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %44 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %43, i32 0, i32 3
  %45 = call i32 @tasklet_kill(i32* %44)
  %46 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %47 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @INT_SIGNAL_ENABLE, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 0, i64 %50)
  %52 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %53 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @INT_STATUS_ENABLE, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 0, i64 %56)
  %58 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %3, align 8
  %59 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %58, i32 0, i32 2
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = call i32 @dev_dbg(i32* %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %64 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %63, i32 0, i32 0
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @spin_lock_irqsave(i32* %64, i64 %65)
  %67 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %68 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %67, i32 0, i32 1
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = icmp ne %struct.TYPE_7__* %69, null
  br i1 %70, label %71, label %86

71:                                               ; preds = %25
  %72 = load i32, i32* @ETIME, align 4
  %73 = sub nsw i32 0, %72
  %74 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %75 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %74, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i32 %73, i32* %77, align 4
  %78 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %3, align 8
  %79 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %78, i32 0, i32 1
  %80 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %80, i64 %82
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = call i32 @jmb38x_ms_complete_cmd(%struct.TYPE_9__* %84, i32 1)
  br label %86

86:                                               ; preds = %71, %25
  %87 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %88 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %87, i32 0, i32 0
  %89 = load i64, i64* %6, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  %91 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %3, align 8
  %92 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %91, i32 0, i32 1
  %93 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %93, i64 %95
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = call i32 @memstick_remove_host(%struct.TYPE_9__* %97)
  %99 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %3, align 8
  %100 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %99, i32 0, i32 2
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = call i32 @dev_dbg(i32* %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %104 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %3, align 8
  %105 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %104, i32 0, i32 1
  %106 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %106, i64 %108
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = call i32 @jmb38x_ms_free_host(%struct.TYPE_9__* %110)
  br label %112

112:                                              ; preds = %86
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  br label %9

115:                                              ; preds = %24, %9
  %116 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %117 = call i32 @jmb38x_ms_pmos(%struct.pci_dev* %116, i32 0)
  %118 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %119 = call i32 @pci_set_drvdata(%struct.pci_dev* %118, i32* null)
  %120 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %121 = call i32 @pci_release_regions(%struct.pci_dev* %120)
  %122 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %123 = call i32 @pci_disable_device(%struct.pci_dev* %122)
  %124 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %3, align 8
  %125 = call i32 @kfree(%struct.jmb38x_ms* %124)
  ret void
}

declare dso_local %struct.jmb38x_ms* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.jmb38x_ms_host* @memstick_priv(%struct.TYPE_9__*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @jmb38x_ms_complete_cmd(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memstick_remove_host(%struct.TYPE_9__*) #1

declare dso_local i32 @jmb38x_ms_free_host(%struct.TYPE_9__*) #1

declare dso_local i32 @jmb38x_ms_pmos(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.jmb38x_ms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
