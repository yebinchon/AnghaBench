; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_msix_vec_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_msix_vec_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.be_eq_obj = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*, %struct.be_eq_obj*)* @be_msix_vec_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_msix_vec_get(%struct.be_adapter* %0, %struct.be_eq_obj* %1) #0 {
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_eq_obj*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store %struct.be_eq_obj* %1, %struct.be_eq_obj** %4, align 8
  %5 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load %struct.be_eq_obj*, %struct.be_eq_obj** %4, align 8
  %9 = getelementptr inbounds %struct.be_eq_obj, %struct.be_eq_obj* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
