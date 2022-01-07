; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_nw_ioc_hb_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_nw_ioc_hb_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@BFA_IOC_HB_TOV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_nw_ioc_hb_check(%struct.bfa_ioc* %0) #0 {
  %2 = alloca %struct.bfa_ioc*, align 8
  %3 = alloca i64, align 8
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %2, align 8
  %4 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %5 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @readl(i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %10 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %3, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %16 = call i32 @bfa_ioc_recover(%struct.bfa_ioc* %15)
  br label %31

17:                                               ; preds = %1
  %18 = load i64, i64* %3, align 8
  %19 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %20 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %17
  %22 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %23 = call i32 @bfa_ioc_mbox_poll(%struct.bfa_ioc* %22)
  %24 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %25 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %24, i32 0, i32 1
  %26 = load i64, i64* @jiffies, align 8
  %27 = load i32, i32* @BFA_IOC_HB_TOV, align 4
  %28 = call i64 @msecs_to_jiffies(i32 %27)
  %29 = add nsw i64 %26, %28
  %30 = call i32 @mod_timer(i32* %25, i64 %29)
  br label %31

31:                                               ; preds = %21, %14
  ret void
}

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @bfa_ioc_recover(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_mbox_poll(%struct.bfa_ioc*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
