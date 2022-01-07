; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc_ct.c_bfa_ioc_ct_sync_leave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc_ct.c_bfa_ioc_ct_sync_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc*)* @bfa_ioc_ct_sync_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_ct_sync_leave(%struct.bfa_ioc* %0) #0 {
  %2 = alloca %struct.bfa_ioc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %2, align 8
  %5 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %6 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @readl(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %11 = call i32 @bfa_ioc_ct_sync_reqd_pos(%struct.bfa_ioc* %10)
  %12 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %13 = call i32 @bfa_ioc_ct_sync_pos(%struct.bfa_ioc* %12)
  %14 = or i32 %11, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %20 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @writel(i32 %18, i32 %22)
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @bfa_ioc_ct_sync_reqd_pos(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_ct_sync_pos(%struct.bfa_ioc*) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
