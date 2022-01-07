; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_ethtool.c_sja1105_port_status_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_ethtool.c_sja1105_port_status_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { i32 }
%struct.sja1105_port_status = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1105_private*, %struct.sja1105_port_status*, i32)* @sja1105_port_status_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_port_status_get(%struct.sja1105_private* %0, %struct.sja1105_port_status* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sja1105_private*, align 8
  %6 = alloca %struct.sja1105_port_status*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %5, align 8
  store %struct.sja1105_port_status* %1, %struct.sja1105_port_status** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %10 = load %struct.sja1105_port_status*, %struct.sja1105_port_status** %6, align 8
  %11 = getelementptr inbounds %struct.sja1105_port_status, %struct.sja1105_port_status* %10, i32 0, i32 2
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @sja1105_port_status_get_mac(%struct.sja1105_private* %9, i32* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %39

18:                                               ; preds = %3
  %19 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %20 = load %struct.sja1105_port_status*, %struct.sja1105_port_status** %6, align 8
  %21 = getelementptr inbounds %struct.sja1105_port_status, %struct.sja1105_port_status* %20, i32 0, i32 1
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @sja1105_port_status_get_hl1(%struct.sja1105_private* %19, i32* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %39

28:                                               ; preds = %18
  %29 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %30 = load %struct.sja1105_port_status*, %struct.sja1105_port_status** %6, align 8
  %31 = getelementptr inbounds %struct.sja1105_port_status, %struct.sja1105_port_status* %30, i32 0, i32 0
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @sja1105_port_status_get_hl2(%struct.sja1105_private* %29, i32* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %39

38:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %36, %26, %16
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @sja1105_port_status_get_mac(%struct.sja1105_private*, i32*, i32) #1

declare dso_local i32 @sja1105_port_status_get_hl1(%struct.sja1105_private*, i32*, i32) #1

declare dso_local i32 @sja1105_port_status_get_hl2(%struct.sja1105_private*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
