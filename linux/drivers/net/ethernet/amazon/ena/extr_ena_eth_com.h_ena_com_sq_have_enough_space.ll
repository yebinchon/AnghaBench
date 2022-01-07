; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_eth_com.h_ena_com_sq_have_enough_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_eth_com.h_ena_com_sq_have_enough_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_io_sq = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENA_ADMIN_PLACEMENT_POLICY_HOST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_io_sq*, i32)* @ena_com_sq_have_enough_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_sq_have_enough_space(%struct.ena_com_io_sq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_com_io_sq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ena_com_io_sq* %0, %struct.ena_com_io_sq** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %8 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ENA_ADMIN_PLACEMENT_POLICY_HOST, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %14 = call i32 @ena_com_free_desc(%struct.ena_com_io_sq* %13)
  %15 = load i32, i32* %5, align 4
  %16 = icmp sge i32 %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %3, align 4
  br label %31

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %21 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sdiv i32 %19, %23
  %25 = add nsw i32 %24, 2
  store i32 %25, i32* %6, align 4
  %26 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %27 = call i32 @ena_com_free_desc(%struct.ena_com_io_sq* %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %18, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @ena_com_free_desc(%struct.ena_com_io_sq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
