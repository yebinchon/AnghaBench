; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_cee.c_bfa_cee_get_stats_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_cee.c_bfa_cee_get_stats_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_cee = type { i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 (i32, i32)* }
%struct.TYPE_3__ = type { i32 }

@BFA_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_cee*, i32)* @bfa_cee_get_stats_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_cee_get_stats_isr(%struct.bfa_cee* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_cee*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_cee* %0, %struct.bfa_cee** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.bfa_cee*, %struct.bfa_cee** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @BFA_STATUS_OK, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.bfa_cee*, %struct.bfa_cee** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.bfa_cee*, %struct.bfa_cee** %3, align 8
  %16 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @memcpy(i32 %14, i32 %18, i32 4)
  %20 = load %struct.bfa_cee*, %struct.bfa_cee** %3, align 8
  %21 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @bfa_cee_stats_swap(i32 %22)
  br label %24

24:                                               ; preds = %11, %2
  %25 = load %struct.bfa_cee*, %struct.bfa_cee** %3, align 8
  %26 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load %struct.bfa_cee*, %struct.bfa_cee** %3, align 8
  %28 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32 (i32, i32)*, i32 (i32, i32)** %29, align 8
  %31 = icmp ne i32 (i32, i32)* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load %struct.bfa_cee*, %struct.bfa_cee** %3, align 8
  %34 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32 (i32, i32)*, i32 (i32, i32)** %35, align 8
  %37 = load %struct.bfa_cee*, %struct.bfa_cee** %3, align 8
  %38 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 %36(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %32, %24
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @bfa_cee_stats_swap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
