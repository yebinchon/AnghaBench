; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_ad_disable_collecting_distributing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_ad_disable_collecting_distributing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { %struct.TYPE_4__*, i32, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@null_mac_addr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Disabling port %d (LAG %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port*, i32*)* @ad_disable_collecting_distributing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad_disable_collecting_distributing(%struct.port* %0, i32* %1) #0 {
  %3 = alloca %struct.port*, align 8
  %4 = alloca i32*, align 8
  store %struct.port* %0, %struct.port** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.port*, %struct.port** %3, align 8
  %6 = getelementptr inbounds %struct.port, %struct.port* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %41

9:                                                ; preds = %2
  %10 = load %struct.port*, %struct.port** %3, align 8
  %11 = getelementptr inbounds %struct.port, %struct.port* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = call i32 @MAC_ADDRESS_EQUAL(i32* %13, i32* @null_mac_addr)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %9
  %17 = load %struct.port*, %struct.port** %3, align 8
  %18 = getelementptr inbounds %struct.port, %struct.port* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.port*, %struct.port** %3, align 8
  %25 = getelementptr inbounds %struct.port, %struct.port* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.port*, %struct.port** %3, align 8
  %30 = getelementptr inbounds %struct.port, %struct.port* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.port*, %struct.port** %3, align 8
  %33 = getelementptr inbounds %struct.port, %struct.port* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @slave_dbg(i32 %23, i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %36)
  %38 = load %struct.port*, %struct.port** %3, align 8
  %39 = call i32 @__disable_port(%struct.port* %38)
  %40 = load i32*, i32** %4, align 8
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %16, %9, %2
  ret void
}

declare dso_local i32 @MAC_ADDRESS_EQUAL(i32*, i32*) #1

declare dso_local i32 @slave_dbg(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @__disable_port(%struct.port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
