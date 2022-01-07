; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_arcnet.c_arcnet_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_arcnet.c_arcnet_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.arcnet_local = type { i32, i32, i32, i64, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.net_device*)*, i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)* }

@TXFREEflag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c" - missed IRQ?\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NOTXcmd = common dso_local global i32 0, align 4
@EXCNAKflag = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@D_EXTRA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"tx timed out%s (status=%Xh, intmask=%Xh, dest=%02Xh)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arcnet_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.arcnet_local*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %7)
  store %struct.arcnet_local* %8, %struct.arcnet_local** %4, align 8
  %9 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %10 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %9, i32 0, i32 6
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %11, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 %12(%struct.net_device* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %16 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %15, i32 0, i32 5
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @TXFREEflag, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %44

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %31 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %33 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %34, align 8
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = load i32, i32* @NOTXcmd, align 4
  %38 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %39 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 3
  %42 = or i32 %37, %41
  %43 = call i32 %35(%struct.net_device* %36, i32 %42)
  br label %44

44:                                               ; preds = %24, %23
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %51 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %50, i32 0, i32 6
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %52, align 8
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = call i32 %53(%struct.net_device* %54, i32 0)
  %56 = load i32, i32* @TXFREEflag, align 4
  %57 = load i32, i32* @EXCNAKflag, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %60 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %64 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %65, align 8
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %69 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 %66(%struct.net_device* %67, i32 %70)
  %72 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %73 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %72, i32 0, i32 5
  %74 = load i64, i64* %3, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load i64, i64* @jiffies, align 8
  %77 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %78 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @HZ, align 4
  %81 = mul nsw i32 10, %80
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %79, %82
  %84 = call i64 @time_after(i64 %76, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %44
  %87 = load i32, i32* @D_EXTRA, align 4
  %88 = load %struct.net_device*, %struct.net_device** %2, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %92 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %95 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @arc_printk(i32 %87, %struct.net_device* %88, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8* %89, i32 %90, i32 %93, i32 %96)
  %98 = load i64, i64* @jiffies, align 8
  %99 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %100 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %99, i32 0, i32 3
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %86, %44
  %102 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %103 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load %struct.net_device*, %struct.net_device** %2, align 8
  %108 = call i32 @netif_wake_queue(%struct.net_device* %107)
  br label %109

109:                                              ; preds = %106, %101
  ret void
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @arc_printk(i32, %struct.net_device*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
