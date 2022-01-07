; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_offload.c_cxgb3_adapter_unofld.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_cxgb3_offload.c_cxgb3_adapter_unofld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.t3cdev }
%struct.t3cdev = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgb3_adapter_unofld(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.t3cdev*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = getelementptr inbounds %struct.adapter, %struct.adapter* %4, i32 0, i32 0
  store %struct.t3cdev* %5, %struct.t3cdev** %3, align 8
  %6 = load %struct.t3cdev*, %struct.t3cdev** %3, align 8
  %7 = getelementptr inbounds %struct.t3cdev, %struct.t3cdev* %6, i32 0, i32 1
  store i32* null, i32** %7, align 8
  %8 = load %struct.t3cdev*, %struct.t3cdev** %3, align 8
  %9 = getelementptr inbounds %struct.t3cdev, %struct.t3cdev* %8, i32 0, i32 0
  store i32* null, i32** %9, align 8
  %10 = load %struct.t3cdev*, %struct.t3cdev** %3, align 8
  %11 = call i32 @unregister_tdev(%struct.t3cdev* %10)
  ret void
}

declare dso_local i32 @unregister_tdev(%struct.t3cdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
