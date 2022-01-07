; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_osi_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_osi_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, i32, i32, %struct.TYPE_2__**, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.net_device = type { i32 }

@osi_config.com = internal constant [4 x i32] [i32 1016, i32 760, i32 1000, i32 744], align 16
@CONF_ENABLE_SPKR = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @osi_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osi_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %6 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %7 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %6, i32 0, i32 4
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load i32, i32* @CONF_ENABLE_SPKR, align 4
  %10 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %13 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %17 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %18, i64 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 64, i32* %21, align 4
  %22 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %23 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %24 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %25, i64 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %22
  store i32 %30, i32* %28, align 4
  %31 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %32 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %33, i64 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 8, i32* %36, align 4
  %37 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %38 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %37, i32 0, i32 1
  store i32 16, i32* %38, align 4
  %39 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %40 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %39, i32 0, i32 2
  store i32 35, i32* %40, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %61, %1
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %44, label %64

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* @osi_config.com, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %50 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %51, i64 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 %48, i32* %54, align 4
  %55 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %56 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %44
  br label %64

60:                                               ; preds = %44
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %41

64:                                               ; preds = %59, %41
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %69 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %68, i32 0, i32 2
  store i32 3, i32* %69, align 8
  %70 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %71 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %70, i32 0, i32 3
  %72 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %72, i64 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 0, i32* %75, align 4
  %76 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %77 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %76)
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %67, %64
  %79 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %80 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %79, i32 0, i32 3
  %81 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %81, i64 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add i32 %85, 16
  %87 = load %struct.net_device*, %struct.net_device** %3, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @pcmcia_request_io(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
