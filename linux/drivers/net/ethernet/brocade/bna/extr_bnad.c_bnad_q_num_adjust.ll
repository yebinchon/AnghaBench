; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_q_num_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_q_num_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32, i32, i32, i32 }

@bnad_rxqs_per_cq = common dso_local global i32 0, align 4
@BNAD_MAILBOX_MSIX_VECTORS = common dso_local global i32 0, align 4
@BNAD_CF_MSIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnad*, i32, i32)* @bnad_q_num_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnad_q_num_adjust(%struct.bnad* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bnad*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bnad*, %struct.bnad** %4, align 8
  %8 = getelementptr inbounds %struct.bnad, %struct.bnad* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.bnad*, %struct.bnad** %4, align 8
  %11 = getelementptr inbounds %struct.bnad, %struct.bnad* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.bnad*, %struct.bnad** %4, align 8
  %14 = getelementptr inbounds %struct.bnad, %struct.bnad* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %12, %15
  %17 = load i32, i32* @bnad_rxqs_per_cq, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* @BNAD_MAILBOX_MSIX_VECTORS, align 4
  %20 = add nsw i32 %18, %19
  %21 = icmp sge i32 %9, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %3
  %23 = load %struct.bnad*, %struct.bnad** %4, align 8
  %24 = getelementptr inbounds %struct.bnad, %struct.bnad* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BNAD_CF_MSIX, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.bnad*, %struct.bnad** %4, align 8
  %32 = getelementptr inbounds %struct.bnad, %struct.bnad* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bnad*, %struct.bnad** %4, align 8
  %35 = getelementptr inbounds %struct.bnad, %struct.bnad* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  %38 = sub nsw i32 %30, %37
  %39 = load i32, i32* @BNAD_MAILBOX_MSIX_VECTORS, align 4
  %40 = sub nsw i32 %38, %39
  %41 = load %struct.bnad*, %struct.bnad** %4, align 8
  %42 = getelementptr inbounds %struct.bnad, %struct.bnad* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  br label %46

43:                                               ; preds = %22, %3
  %44 = load %struct.bnad*, %struct.bnad** %4, align 8
  %45 = getelementptr inbounds %struct.bnad, %struct.bnad* %44, i32 0, i32 3
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
