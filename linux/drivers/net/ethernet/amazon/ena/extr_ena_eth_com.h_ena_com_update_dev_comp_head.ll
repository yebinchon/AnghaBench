; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_eth_com.h_ena_com_update_dev_comp_head.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_eth_com.h_ena_com_update_dev_comp_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_io_cq = type { i32, i32, i32, i32, i32 }

@ENA_COMP_HEAD_THRESH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Write completion queue doorbell for queue %d: head: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_io_cq*)* @ena_com_update_dev_comp_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_update_dev_comp_head(%struct.ena_com_io_cq* %0) #0 {
  %2 = alloca %struct.ena_com_io_cq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ena_com_io_cq* %0, %struct.ena_com_io_cq** %2, align 8
  %6 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %2, align 8
  %7 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %46

11:                                               ; preds = %1
  %12 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %2, align 8
  %13 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %2, align 8
  %17 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %15, %18
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %2, align 8
  %22 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ENA_COMP_HEAD_THRESH, align 4
  %25 = sdiv i32 %23, %24
  %26 = icmp sgt i32 %20, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %11
  %32 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %2, align 8
  %33 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %2, align 8
  %39 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @writel(i32 %37, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %2, align 8
  %44 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %31, %11
  br label %46

46:                                               ; preds = %45, %1
  ret i32 0
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
