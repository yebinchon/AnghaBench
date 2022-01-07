; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_pmf.c_port_to_mib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_pmf.c_port_to_mib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SMT_SAS = common dso_local global i64 0, align 8
@PS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s_smc*, i32)* @port_to_mib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_to_mib(%struct.s_smc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s_smc*, align 8
  %5 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %7 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SMT_SAS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @PS, align 4
  store i32 %13, i32* %3, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
