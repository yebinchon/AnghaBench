; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_ad_tx_machine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_ad_tx_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@AD_PORT_LACP_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Sent LACPDU on port %d\0A\00", align 1
@ad_ticks_per_sec = common dso_local global i32 0, align 4
@AD_MAX_TX_IN_SECOND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port*)* @ad_tx_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad_tx_machine(%struct.port* %0) #0 {
  %2 = alloca %struct.port*, align 8
  store %struct.port* %0, %struct.port** %2, align 8
  %3 = load %struct.port*, %struct.port** %2, align 8
  %4 = getelementptr inbounds %struct.port, %struct.port* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %57

7:                                                ; preds = %1
  %8 = load %struct.port*, %struct.port** %2, align 8
  %9 = getelementptr inbounds %struct.port, %struct.port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %9, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %57, label %13

13:                                               ; preds = %7
  %14 = load %struct.port*, %struct.port** %2, align 8
  %15 = getelementptr inbounds %struct.port, %struct.port* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %13
  %19 = load %struct.port*, %struct.port** %2, align 8
  %20 = getelementptr inbounds %struct.port, %struct.port* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @AD_PORT_LACP_ENABLED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %18
  %26 = load %struct.port*, %struct.port** %2, align 8
  %27 = call i32 @__update_lacpdu_from_port(%struct.port* %26)
  %28 = load %struct.port*, %struct.port** %2, align 8
  %29 = call i64 @ad_lacpdu_send(%struct.port* %28)
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %25
  %32 = load %struct.port*, %struct.port** %2, align 8
  %33 = getelementptr inbounds %struct.port, %struct.port* %32, i32 0, i32 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.port*, %struct.port** %2, align 8
  %40 = getelementptr inbounds %struct.port, %struct.port* %39, i32 0, i32 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.port*, %struct.port** %2, align 8
  %45 = getelementptr inbounds %struct.port, %struct.port* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @slave_dbg(i32 %38, i32 %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.port*, %struct.port** %2, align 8
  %49 = getelementptr inbounds %struct.port, %struct.port* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %31, %25
  br label %51

51:                                               ; preds = %50, %18, %13
  %52 = load i32, i32* @ad_ticks_per_sec, align 4
  %53 = load i32, i32* @AD_MAX_TX_IN_SECOND, align 4
  %54 = sdiv i32 %52, %53
  %55 = load %struct.port*, %struct.port** %2, align 8
  %56 = getelementptr inbounds %struct.port, %struct.port* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %51, %7, %1
  ret void
}

declare dso_local i32 @__update_lacpdu_from_port(%struct.port*) #1

declare dso_local i64 @ad_lacpdu_send(%struct.port*) #1

declare dso_local i32 @slave_dbg(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
