; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_com20020_cs.c_com20020_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_com20020_cs.c_com20020_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.com20020_dev*, i32, %struct.TYPE_4__**, i32 }
%struct.com20020_dev = type { %struct.net_device* }
%struct.net_device = type { i32* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.arcnet_local = type { i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"com20020_attach()\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@timeout = common dso_local global i32 0, align 4
@backplane = common dso_local global i32 0, align 4
@clockp = common dso_local global i32 0, align 4
@clockm = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@node = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_8 = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @com20020_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @com20020_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.com20020_dev*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.arcnet_local*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %7 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %8 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %7, i32 0, i32 3
  %9 = call i32 @dev_dbg(i32* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.com20020_dev* @kzalloc(i32 8, i32 %10)
  store %struct.com20020_dev* %11, %struct.com20020_dev** %4, align 8
  %12 = load %struct.com20020_dev*, %struct.com20020_dev** %4, align 8
  %13 = icmp ne %struct.com20020_dev* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %76

15:                                               ; preds = %1
  %16 = call %struct.net_device* @alloc_arcdev(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store %struct.net_device* %16, %struct.net_device** %5, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = icmp ne %struct.net_device* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %73

20:                                               ; preds = %15
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %21)
  store %struct.arcnet_local* %22, %struct.arcnet_local** %6, align 8
  %23 = load i32, i32* @timeout, align 4
  %24 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %25 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @backplane, align 4
  %27 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %28 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @clockp, align 4
  %30 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %31 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @clockm, align 4
  %33 = and i32 %32, 3
  %34 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %35 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @THIS_MODULE, align 4
  %37 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %38 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @node, align 4
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %46 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %47 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %48, i64 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %45
  store i32 %53, i32* %51, align 4
  %54 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %55 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %56, i64 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 16, i32* %59, align 4
  %60 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %61 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %62 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = load %struct.com20020_dev*, %struct.com20020_dev** %4, align 8
  %67 = getelementptr inbounds %struct.com20020_dev, %struct.com20020_dev* %66, i32 0, i32 0
  store %struct.net_device* %65, %struct.net_device** %67, align 8
  %68 = load %struct.com20020_dev*, %struct.com20020_dev** %4, align 8
  %69 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %70 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %69, i32 0, i32 0
  store %struct.com20020_dev* %68, %struct.com20020_dev** %70, align 8
  %71 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %72 = call i32 @com20020_config(%struct.pcmcia_device* %71)
  store i32 %72, i32* %2, align 4
  br label %79

73:                                               ; preds = %19
  %74 = load %struct.com20020_dev*, %struct.com20020_dev** %4, align 8
  %75 = call i32 @kfree(%struct.com20020_dev* %74)
  br label %76

76:                                               ; preds = %73, %14
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %76, %20
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.com20020_dev* @kzalloc(i32, i32) #1

declare dso_local %struct.net_device* @alloc_arcdev(i8*) #1

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @com20020_config(%struct.pcmcia_device*) #1

declare dso_local i32 @kfree(%struct.com20020_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
