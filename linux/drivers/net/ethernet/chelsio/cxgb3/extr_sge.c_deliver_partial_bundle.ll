; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_deliver_partial_bundle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_deliver_partial_bundle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i32 (%struct.t3cdev*, %struct.sk_buff**, i32)* }
%struct.sk_buff = type opaque
%struct.sge_rspq = type { i32 }
%struct.sk_buff.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t3cdev*, %struct.sge_rspq*, %struct.sk_buff.0**, i32)* @deliver_partial_bundle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deliver_partial_bundle(%struct.t3cdev* %0, %struct.sge_rspq* %1, %struct.sk_buff.0** %2, i32 %3) #0 {
  %5 = alloca %struct.t3cdev*, align 8
  %6 = alloca %struct.sge_rspq*, align 8
  %7 = alloca %struct.sk_buff.0**, align 8
  %8 = alloca i32, align 4
  store %struct.t3cdev* %0, %struct.t3cdev** %5, align 8
  store %struct.sge_rspq* %1, %struct.sge_rspq** %6, align 8
  store %struct.sk_buff.0** %2, %struct.sk_buff.0*** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %4
  %12 = load %struct.sge_rspq*, %struct.sge_rspq** %6, align 8
  %13 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.t3cdev*, %struct.t3cdev** %5, align 8
  %17 = getelementptr inbounds %struct.t3cdev, %struct.t3cdev* %16, i32 0, i32 0
  %18 = load i32 (%struct.t3cdev*, %struct.sk_buff**, i32)*, i32 (%struct.t3cdev*, %struct.sk_buff**, i32)** %17, align 8
  %19 = load %struct.t3cdev*, %struct.t3cdev** %5, align 8
  %20 = load %struct.sk_buff.0**, %struct.sk_buff.0*** %7, align 8
  %21 = bitcast %struct.sk_buff.0** %20 to %struct.sk_buff**
  %22 = load i32, i32* %8, align 4
  %23 = call i32 %18(%struct.t3cdev* %19, %struct.sk_buff** %21, i32 %22)
  br label %24

24:                                               ; preds = %11, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
