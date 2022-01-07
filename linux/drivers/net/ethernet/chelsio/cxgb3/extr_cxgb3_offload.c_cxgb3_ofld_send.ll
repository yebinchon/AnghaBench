; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_offload.c_cxgb3_ofld_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_offload.c_cxgb3_ofld_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i32 (%struct.t3cdev*, %struct.sk_buff*)* }
%struct.sk_buff = type opaque
%struct.sk_buff.0 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb3_ofld_send(%struct.t3cdev* %0, %struct.sk_buff.0* %1) #0 {
  %3 = alloca %struct.t3cdev*, align 8
  %4 = alloca %struct.sk_buff.0*, align 8
  %5 = alloca i32, align 4
  store %struct.t3cdev* %0, %struct.t3cdev** %3, align 8
  store %struct.sk_buff.0* %1, %struct.sk_buff.0** %4, align 8
  %6 = call i32 (...) @local_bh_disable()
  %7 = load %struct.t3cdev*, %struct.t3cdev** %3, align 8
  %8 = getelementptr inbounds %struct.t3cdev, %struct.t3cdev* %7, i32 0, i32 0
  %9 = load i32 (%struct.t3cdev*, %struct.sk_buff*)*, i32 (%struct.t3cdev*, %struct.sk_buff*)** %8, align 8
  %10 = load %struct.t3cdev*, %struct.t3cdev** %3, align 8
  %11 = load %struct.sk_buff.0*, %struct.sk_buff.0** %4, align 8
  %12 = bitcast %struct.sk_buff.0* %11 to %struct.sk_buff*
  %13 = call i32 %9(%struct.t3cdev* %10, %struct.sk_buff* %12)
  store i32 %13, i32* %5, align 4
  %14 = call i32 (...) @local_bh_enable()
  %15 = load i32, i32* %5, align 4
  ret i32 %15
}

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
