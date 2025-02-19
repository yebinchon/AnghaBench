; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_q_num_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_q_num_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32, i32, i32, i32, i32 }

@BNAD_MAX_RX = common dso_local global i32 0, align 4
@BNAD_MAX_RXP_PER_RX = common dso_local global i32 0, align 4
@BNAD_CF_MSIX = common dso_local global i32 0, align 4
@BNAD_TXQ_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnad*)* @bnad_q_num_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnad_q_num_init(%struct.bnad* %0) #0 {
  %2 = alloca %struct.bnad*, align 8
  %3 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %2, align 8
  %4 = call i64 (...) @num_online_cpus()
  %5 = trunc i64 %4 to i32
  %6 = load i32, i32* @BNAD_MAX_RX, align 4
  %7 = load i32, i32* @BNAD_MAX_RXP_PER_RX, align 4
  %8 = mul nsw i32 %6, %7
  %9 = call i32 @min(i32 %5, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.bnad*, %struct.bnad** %2, align 8
  %11 = getelementptr inbounds %struct.bnad, %struct.bnad* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @BNAD_CF_MSIX, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %17

17:                                               ; preds = %16, %1
  %18 = load %struct.bnad*, %struct.bnad** %2, align 8
  %19 = getelementptr inbounds %struct.bnad, %struct.bnad* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = load %struct.bnad*, %struct.bnad** %2, align 8
  %21 = getelementptr inbounds %struct.bnad, %struct.bnad* %20, i32 0, i32 2
  store i32 1, i32* %21, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.bnad*, %struct.bnad** %2, align 8
  %24 = getelementptr inbounds %struct.bnad, %struct.bnad* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @BNAD_TXQ_NUM, align 4
  %26 = load %struct.bnad*, %struct.bnad** %2, align 8
  %27 = getelementptr inbounds %struct.bnad, %struct.bnad* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @num_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
