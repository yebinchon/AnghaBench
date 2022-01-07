; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/fujitsu/extr_fmvj18x_cs.c_fmvj18x_setup_mfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/fujitsu/extr_fmvj18x_cs.c_fmvj18x_setup_mfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_4__**, %struct.net_device* }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.net_device = type { i32 }
%struct.local_info = type { i32* }

@WIN_DATA_WIDTH_8 = common dso_local global i32 0, align 4
@WIN_MEMORY_TYPE_AM = common dso_local global i32 0, align 4
@WIN_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ioremap failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @fmvj18x_setup_mfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fmvj18x_setup_mfc(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.local_info*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %8 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %9 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %8, i32 0, i32 1
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.local_info* @netdev_priv(%struct.net_device* %11)
  store %struct.local_info* %12, %struct.local_info** %7, align 8
  %13 = load i32, i32* @WIN_DATA_WIDTH_8, align 4
  %14 = load i32, i32* @WIN_MEMORY_TYPE_AM, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @WIN_ENABLE, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %19 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %20, i64 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %17, i32* %23, align 8
  %24 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %25 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %26, i64 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %31 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %32, i64 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %37 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %38 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %39, i64 3
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = call i32 @pcmcia_request_window(%struct.pcmcia_device* %36, %struct.TYPE_4__* %41, i32 0)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %126

46:                                               ; preds = %1
  %47 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %48 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %49, i64 3
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %55 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %56, i64 3
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = call i32 @resource_size(%struct.TYPE_4__* %58)
  %60 = call i32* @ioremap(i64 %53, i32 %59)
  %61 = load %struct.local_info*, %struct.local_info** %7, align 8
  %62 = getelementptr inbounds %struct.local_info, %struct.local_info* %61, i32 0, i32 0
  store i32* %60, i32** %62, align 8
  %63 = load %struct.local_info*, %struct.local_info** %7, align 8
  %64 = getelementptr inbounds %struct.local_info, %struct.local_info* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %46
  %68 = load %struct.net_device*, %struct.net_device** %5, align 8
  %69 = call i32 @netdev_notice(%struct.net_device* %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %126

70:                                               ; preds = %46
  %71 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %72 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %73 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %74, i64 3
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = call i32 @pcmcia_map_mem_page(%struct.pcmcia_device* %71, %struct.TYPE_4__* %76, i32 0)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %70
  %81 = load %struct.local_info*, %struct.local_info** %7, align 8
  %82 = getelementptr inbounds %struct.local_info, %struct.local_info* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @iounmap(i32* %83)
  %85 = load %struct.local_info*, %struct.local_info** %7, align 8
  %86 = getelementptr inbounds %struct.local_info, %struct.local_info* %85, i32 0, i32 0
  store i32* null, i32** %86, align 8
  store i32 -1, i32* %2, align 4
  br label %126

87:                                               ; preds = %70
  %88 = load %struct.net_device*, %struct.net_device** %5, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %6, align 4
  %91 = load %struct.local_info*, %struct.local_info** %7, align 8
  %92 = getelementptr inbounds %struct.local_info, %struct.local_info* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2048
  %95 = call i32 @writeb(i32 71, i32* %94)
  %96 = load %struct.local_info*, %struct.local_info** %7, align 8
  %97 = getelementptr inbounds %struct.local_info, %struct.local_info* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2050
  %100 = call i32 @writeb(i32 0, i32* %99)
  %101 = load i32, i32* %6, align 4
  %102 = and i32 %101, 255
  %103 = load %struct.local_info*, %struct.local_info** %7, align 8
  %104 = getelementptr inbounds %struct.local_info, %struct.local_info* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2058
  %107 = call i32 @writeb(i32 %102, i32* %106)
  %108 = load i32, i32* %6, align 4
  %109 = lshr i32 %108, 8
  %110 = and i32 %109, 255
  %111 = load %struct.local_info*, %struct.local_info** %7, align 8
  %112 = getelementptr inbounds %struct.local_info, %struct.local_info* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2060
  %115 = call i32 @writeb(i32 %110, i32* %114)
  %116 = load %struct.local_info*, %struct.local_info** %7, align 8
  %117 = getelementptr inbounds %struct.local_info, %struct.local_info* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2080
  %120 = call i32 @writeb(i32 69, i32* %119)
  %121 = load %struct.local_info*, %struct.local_info** %7, align 8
  %122 = getelementptr inbounds %struct.local_info, %struct.local_info* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2082
  %125 = call i32 @writeb(i32 8, i32* %124)
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %87, %80, %67, %45
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.local_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pcmcia_request_window(%struct.pcmcia_device*, %struct.TYPE_4__*, i32) #1

declare dso_local i32* @ioremap(i64, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_4__*) #1

declare dso_local i32 @netdev_notice(%struct.net_device*, i8*) #1

declare dso_local i32 @pcmcia_map_mem_page(%struct.pcmcia_device*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @writeb(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
