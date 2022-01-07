; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_com20020_cs.c_com20020_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_com20020_cs.c_com20020_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.com20020_dev* }
%struct.com20020_dev = type { %struct.net_device* }
%struct.net_device = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"detach...\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"com20020_detach\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"unregister...\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"unlinking...\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"kfree...\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"kfree2...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @com20020_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @com20020_detach(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.com20020_dev*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %5 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %6 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %5, i32 0, i32 1
  %7 = load %struct.com20020_dev*, %struct.com20020_dev** %6, align 8
  store %struct.com20020_dev* %7, %struct.com20020_dev** %3, align 8
  %8 = load %struct.com20020_dev*, %struct.com20020_dev** %3, align 8
  %9 = getelementptr inbounds %struct.com20020_dev, %struct.com20020_dev* %8, i32 0, i32 0
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %12 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %11, i32 0, i32 0
  %13 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %15 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %14, i32 0, i32 0
  %16 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %18 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %17, i32 0, i32 0
  %19 = call i32 @dev_dbg(i32* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call i32 @unregister_netdev(%struct.net_device* %20)
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = call i32 @free_irq(i64 %29, %struct.net_device* %30)
  br label %32

32:                                               ; preds = %26, %1
  %33 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %34 = call i32 @com20020_release(%struct.pcmcia_device* %33)
  %35 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %36 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %35, i32 0, i32 0
  %37 = call i32 @dev_dbg(i32* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %38 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %39 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %38, i32 0, i32 1
  %40 = load %struct.com20020_dev*, %struct.com20020_dev** %39, align 8
  %41 = icmp ne %struct.com20020_dev* %40, null
  br i1 %41, label %42, label %60

42:                                               ; preds = %32
  %43 = load %struct.com20020_dev*, %struct.com20020_dev** %3, align 8
  %44 = getelementptr inbounds %struct.com20020_dev, %struct.com20020_dev* %43, i32 0, i32 0
  %45 = load %struct.net_device*, %struct.net_device** %44, align 8
  store %struct.net_device* %45, %struct.net_device** %4, align 8
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = icmp ne %struct.net_device* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %50 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %49, i32 0, i32 0
  %51 = call i32 @dev_dbg(i32* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = call i32 @free_netdev(%struct.net_device* %52)
  br label %54

54:                                               ; preds = %48, %42
  %55 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %56 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %55, i32 0, i32 0
  %57 = call i32 @dev_dbg(i32* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %58 = load %struct.com20020_dev*, %struct.com20020_dev** %3, align 8
  %59 = call i32 @kfree(%struct.com20020_dev* %58)
  br label %60

60:                                               ; preds = %54, %32
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_irq(i64, %struct.net_device*) #1

declare dso_local i32 @com20020_release(%struct.pcmcia_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.com20020_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
