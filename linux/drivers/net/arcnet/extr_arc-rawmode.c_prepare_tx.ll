; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_arc-rawmode.c_prepare_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_arc-rawmode.c_prepare_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.archdr = type { %struct.arc_hardware, %struct.arc_hardware }
%struct.arc_hardware = type { i32*, i32 }
%struct.arcnet_local = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32, i32, %struct.arc_hardware.0*, i32)* }
%struct.arc_hardware.0 = type opaque

@D_DURING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"prepare_tx: txbufs=%d/%d/%d\0A\00", align 1
@ARC_HDR_SIZE = common dso_local global i32 0, align 4
@XMTU = common dso_local global i32 0, align 4
@D_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Bug!  prepare_tx with size %d (> %d)\0A\00", align 1
@MinTU = common dso_local global i32 0, align 4
@MTU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"prepare_tx: length=%d ofs=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.archdr*, i32, i32)* @prepare_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_tx(%struct.net_device* %0, %struct.archdr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.archdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.arcnet_local*, align 8
  %10 = alloca %struct.arc_hardware*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.archdr* %1, %struct.archdr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %12)
  store %struct.arcnet_local* %13, %struct.arcnet_local** %9, align 8
  %14 = load %struct.archdr*, %struct.archdr** %6, align 8
  %15 = getelementptr inbounds %struct.archdr, %struct.archdr* %14, i32 0, i32 1
  store %struct.arc_hardware* %15, %struct.arc_hardware** %10, align 8
  %16 = load i32, i32* @D_DURING, align 4
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %19 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %22 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 (i32, %struct.net_device*, i8*, i32, i32, ...) @arc_printk(i32 %16, %struct.net_device* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %24)
  %26 = load i32, i32* @ARC_HDR_SIZE, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @XMTU, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %4
  %33 = load i32, i32* @D_NORMAL, align 4
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @XMTU, align 4
  %37 = call i32 (i32, %struct.net_device*, i8*, i32, i32, ...) @arc_printk(i32 %33, %struct.net_device* %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* @XMTU, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %32, %4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @MinTU, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load %struct.arc_hardware*, %struct.arc_hardware** %10, align 8
  %45 = getelementptr inbounds %struct.arc_hardware, %struct.arc_hardware* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 0, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 512, %48
  store i32 %49, i32* %11, align 4
  %50 = load %struct.arc_hardware*, %struct.arc_hardware** %10, align 8
  %51 = getelementptr inbounds %struct.arc_hardware, %struct.arc_hardware* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %49, i32* %53, align 4
  br label %78

54:                                               ; preds = %39
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @MTU, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load %struct.arc_hardware*, %struct.arc_hardware** %10, align 8
  %60 = getelementptr inbounds %struct.arc_hardware, %struct.arc_hardware* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 0, i32* %62, align 4
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 512, %63
  %65 = sub nsw i32 %64, 3
  store i32 %65, i32* %11, align 4
  %66 = load %struct.arc_hardware*, %struct.arc_hardware** %10, align 8
  %67 = getelementptr inbounds %struct.arc_hardware, %struct.arc_hardware* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 %65, i32* %69, align 4
  br label %77

70:                                               ; preds = %54
  %71 = load i32, i32* %7, align 4
  %72 = sub nsw i32 256, %71
  store i32 %72, i32* %11, align 4
  %73 = load %struct.arc_hardware*, %struct.arc_hardware** %10, align 8
  %74 = getelementptr inbounds %struct.arc_hardware, %struct.arc_hardware* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %70, %58
  br label %78

78:                                               ; preds = %77, %43
  %79 = load i32, i32* @D_DURING, align 4
  %80 = load %struct.net_device*, %struct.net_device** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 (i32, %struct.net_device*, i8*, i32, i32, ...) @arc_printk(i32 %79, %struct.net_device* %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %85 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32 (%struct.net_device*, i32, i32, %struct.arc_hardware.0*, i32)*, i32 (%struct.net_device*, i32, i32, %struct.arc_hardware.0*, i32)** %86, align 8
  %88 = load %struct.net_device*, %struct.net_device** %5, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.arc_hardware*, %struct.arc_hardware** %10, align 8
  %91 = bitcast %struct.arc_hardware* %90 to %struct.arc_hardware.0*
  %92 = load i32, i32* @ARC_HDR_SIZE, align 4
  %93 = call i32 %87(%struct.net_device* %88, i32 %89, i32 0, %struct.arc_hardware.0* %91, i32 %92)
  %94 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %95 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32 (%struct.net_device*, i32, i32, %struct.arc_hardware.0*, i32)*, i32 (%struct.net_device*, i32, i32, %struct.arc_hardware.0*, i32)** %96, align 8
  %98 = load %struct.net_device*, %struct.net_device** %5, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load %struct.archdr*, %struct.archdr** %6, align 8
  %102 = getelementptr inbounds %struct.archdr, %struct.archdr* %101, i32 0, i32 0
  %103 = bitcast %struct.arc_hardware* %102 to %struct.arc_hardware.0*
  %104 = load i32, i32* %7, align 4
  %105 = call i32 %97(%struct.net_device* %98, i32 %99, i32 %100, %struct.arc_hardware.0* %103, i32 %104)
  %106 = load %struct.arc_hardware*, %struct.arc_hardware** %10, align 8
  %107 = getelementptr inbounds %struct.arc_hardware, %struct.arc_hardware* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %110 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  ret i32 1
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @arc_printk(i32, %struct.net_device*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
