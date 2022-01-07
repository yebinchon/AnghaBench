; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_spi.c_sja1105_cold_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_spi.c_sja1105_cold_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sja1105_private*, %struct.sja1105_reset_cmd*)* }
%struct.sja1105_reset_cmd = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1105_private*)* @sja1105_cold_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_cold_reset(%struct.sja1105_private* %0) #0 {
  %2 = alloca %struct.sja1105_private*, align 8
  %3 = alloca %struct.sja1105_reset_cmd, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %2, align 8
  %4 = bitcast %struct.sja1105_reset_cmd* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false)
  %5 = getelementptr inbounds %struct.sja1105_reset_cmd, %struct.sja1105_reset_cmd* %3, i32 0, i32 0
  store i32 1, i32* %5, align 4
  %6 = load %struct.sja1105_private*, %struct.sja1105_private** %2, align 8
  %7 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.sja1105_private*, %struct.sja1105_reset_cmd*)*, i32 (%struct.sja1105_private*, %struct.sja1105_reset_cmd*)** %9, align 8
  %11 = load %struct.sja1105_private*, %struct.sja1105_private** %2, align 8
  %12 = call i32 %10(%struct.sja1105_private* %11, %struct.sja1105_reset_cmd* %3)
  ret i32 %12
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
