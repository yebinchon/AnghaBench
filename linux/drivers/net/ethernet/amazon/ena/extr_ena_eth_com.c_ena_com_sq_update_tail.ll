; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_eth_com.c_ena_com_sq_update_tail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_eth_com.c_ena_com_sq_update_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_io_sq = type { i64, i32, i32, i32 }

@ENA_ADMIN_PLACEMENT_POLICY_DEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_io_sq*)* @ena_com_sq_update_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_sq_update_tail(%struct.ena_com_io_sq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_com_io_sq*, align 8
  store %struct.ena_com_io_sq* %0, %struct.ena_com_io_sq** %3, align 8
  %4 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %3, align 8
  %5 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ENA_ADMIN_PLACEMENT_POLICY_DEV, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %3, align 8
  %11 = call i32 @ena_com_sq_update_llq_tail(%struct.ena_com_io_sq* %10)
  store i32 %11, i32* %2, align 4
  br label %35

12:                                               ; preds = %1
  %13 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %3, align 8
  %14 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %3, align 8
  %18 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %3, align 8
  %21 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  %24 = and i32 %19, %23
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %12
  %30 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %3, align 8
  %31 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = xor i32 %32, 1
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %29, %12
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %9
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @ena_com_sq_update_llq_tail(%struct.ena_com_io_sq*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
