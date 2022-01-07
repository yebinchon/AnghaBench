; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c___tlb_clear_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c___tlb_clear_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { i32 }
%struct.slave = type { i32 }
%struct.tlb_client_info = type { i64 }
%struct.TYPE_4__ = type { %struct.tlb_client_info* }
%struct.TYPE_3__ = type { i64 }

@TLB_NULL_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bonding*, %struct.slave*, i32)* @__tlb_clear_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tlb_clear_slave(%struct.bonding* %0, %struct.slave* %1, i32 %2) #0 {
  %4 = alloca %struct.bonding*, align 8
  %5 = alloca %struct.slave*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tlb_client_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca i64, align 8
  store %struct.bonding* %0, %struct.bonding** %4, align 8
  store %struct.slave* %1, %struct.slave** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.bonding*, %struct.bonding** %4, align 8
  %13 = call %struct.tlb_client_info* @BOND_ALB_INFO(%struct.bonding* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.tlb_client_info* %13, %struct.tlb_client_info** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %16 = load %struct.tlb_client_info*, %struct.tlb_client_info** %15, align 8
  store %struct.tlb_client_info* %16, %struct.tlb_client_info** %7, align 8
  %17 = load %struct.tlb_client_info*, %struct.tlb_client_info** %7, align 8
  %18 = icmp ne %struct.tlb_client_info* %17, null
  br i1 %18, label %19, label %42

19:                                               ; preds = %3
  %20 = load %struct.slave*, %struct.slave** %5, align 8
  %21 = call i64 @SLAVE_TLB_INFO(%struct.slave* %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  br label %25

25:                                               ; preds = %29, %19
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @TLB_NULL_INDEX, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load %struct.tlb_client_info*, %struct.tlb_client_info** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.tlb_client_info, %struct.tlb_client_info* %30, i64 %31
  %33 = getelementptr inbounds %struct.tlb_client_info, %struct.tlb_client_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  %35 = load %struct.tlb_client_info*, %struct.tlb_client_info** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds %struct.tlb_client_info, %struct.tlb_client_info* %35, i64 %36
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @tlb_init_table_entry(%struct.tlb_client_info* %37, i32 %38)
  %40 = load i64, i64* %11, align 8
  store i64 %40, i64* %8, align 8
  br label %25

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41, %3
  %43 = load %struct.slave*, %struct.slave** %5, align 8
  %44 = call i32 @tlb_init_slave(%struct.slave* %43)
  ret void
}

declare dso_local %struct.tlb_client_info* @BOND_ALB_INFO(%struct.bonding*) #1

declare dso_local i64 @SLAVE_TLB_INFO(%struct.slave*) #1

declare dso_local i32 @tlb_init_table_entry(%struct.tlb_client_info*, i32) #1

declare dso_local i32 @tlb_init_slave(%struct.slave*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
