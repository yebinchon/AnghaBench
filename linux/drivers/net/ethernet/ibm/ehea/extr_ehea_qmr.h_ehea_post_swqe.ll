; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_qmr.h_ehea_post_swqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_qmr.h_ehea_post_swqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_qp = type { i32 }
%struct.ehea_swqe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehea_qp*, %struct.ehea_swqe*)* @ehea_post_swqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehea_post_swqe(%struct.ehea_qp* %0, %struct.ehea_swqe* %1) #0 {
  %3 = alloca %struct.ehea_qp*, align 8
  %4 = alloca %struct.ehea_swqe*, align 8
  store %struct.ehea_qp* %0, %struct.ehea_qp** %3, align 8
  store %struct.ehea_swqe* %1, %struct.ehea_swqe** %4, align 8
  %5 = call i32 (...) @iosync()
  %6 = load %struct.ehea_qp*, %struct.ehea_qp** %3, align 8
  %7 = call i32 @ehea_update_sqa(%struct.ehea_qp* %6, i32 1)
  ret void
}

declare dso_local i32 @iosync(...) #1

declare dso_local i32 @ehea_update_sqa(%struct.ehea_qp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
