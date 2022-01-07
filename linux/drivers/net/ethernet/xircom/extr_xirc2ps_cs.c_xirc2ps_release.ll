; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xircom/extr_xirc2ps_cs.c_xirc2ps_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xircom/extr_xirc2ps_cs.c_xirc2ps_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.net_device*, %struct.TYPE_2__**, i32 }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { i64 }
%struct.local_info = type { i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"release\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @xirc2ps_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xirc2ps_release(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.local_info*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %5 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %6 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %5, i32 0, i32 2
  %7 = call i32 @dev_dbg(i32* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %9 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %10, i64 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %1
  %17 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %18 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %17, i32 0, i32 0
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %3, align 8
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call %struct.local_info* @netdev_priv(%struct.net_device* %20)
  store %struct.local_info* %21, %struct.local_info** %4, align 8
  %22 = load %struct.local_info*, %struct.local_info** %4, align 8
  %23 = getelementptr inbounds %struct.local_info, %struct.local_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  %27 = load %struct.local_info*, %struct.local_info** %4, align 8
  %28 = getelementptr inbounds %struct.local_info, %struct.local_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %29, 2048
  %31 = call i32 @iounmap(i64 %30)
  br label %32

32:                                               ; preds = %26, %16
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %35 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %34)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.local_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
