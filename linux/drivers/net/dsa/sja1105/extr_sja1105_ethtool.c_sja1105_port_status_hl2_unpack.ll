; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_ethtool.c_sja1105_port_status_hl2_unpack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_ethtool.c_sja1105_port_status_hl2_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_port_status_hl2 = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sja1105_port_status_hl2*)* @sja1105_port_status_hl2_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sja1105_port_status_hl2_unpack(i8* %0, %struct.sja1105_port_status_hl2* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sja1105_port_status_hl2*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.sja1105_port_status_hl2* %1, %struct.sja1105_port_status_hl2** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 3
  %10 = load %struct.sja1105_port_status_hl2*, %struct.sja1105_port_status_hl2** %4, align 8
  %11 = getelementptr inbounds %struct.sja1105_port_status_hl2, %struct.sja1105_port_status_hl2* %10, i32 0, i32 3
  %12 = call i32 @sja1105_unpack(i32* %9, i32* %11, i32 31, i32 0, i32 4)
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  %15 = load %struct.sja1105_port_status_hl2*, %struct.sja1105_port_status_hl2** %4, align 8
  %16 = getelementptr inbounds %struct.sja1105_port_status_hl2, %struct.sja1105_port_status_hl2* %15, i32 0, i32 2
  %17 = call i32 @sja1105_unpack(i32* %14, i32* %16, i32 31, i32 0, i32 4)
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load %struct.sja1105_port_status_hl2*, %struct.sja1105_port_status_hl2** %4, align 8
  %21 = getelementptr inbounds %struct.sja1105_port_status_hl2, %struct.sja1105_port_status_hl2* %20, i32 0, i32 1
  %22 = call i32 @sja1105_unpack(i32* %19, i32* %21, i32 31, i32 0, i32 4)
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load %struct.sja1105_port_status_hl2*, %struct.sja1105_port_status_hl2** %4, align 8
  %26 = getelementptr inbounds %struct.sja1105_port_status_hl2, %struct.sja1105_port_status_hl2* %25, i32 0, i32 0
  %27 = call i32 @sja1105_unpack(i32* %24, i32* %26, i32 31, i32 0, i32 4)
  ret void
}

declare dso_local i32 @sja1105_unpack(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
