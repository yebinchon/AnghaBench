; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_abort_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_abort_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_sock = type { i32, i32 }

@SK_F_CONNECT_START = common dso_local global i32 0, align 4
@SK_F_OFFLD_SCHED = common dso_local global i32 0, align 4
@SK_F_OFFLD_COMPLETE = common dso_local global i32 0, align 4
@L4_KCQE_OPCODE_VALUE_RESET_COMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_sock*)* @cnic_abort_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_abort_prep(%struct.cnic_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cnic_sock*, align 8
  store %struct.cnic_sock* %0, %struct.cnic_sock** %3, align 8
  %4 = load i32, i32* @SK_F_CONNECT_START, align 4
  %5 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %6 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %5, i32 0, i32 1
  %7 = call i32 @clear_bit(i32 %4, i32* %6)
  %8 = call i32 (...) @smp_mb__after_atomic()
  br label %9

9:                                                ; preds = %15, %1
  %10 = load i32, i32* @SK_F_OFFLD_SCHED, align 4
  %11 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %12 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %11, i32 0, i32 1
  %13 = call i64 @test_and_set_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = call i32 @msleep(i32 1)
  br label %9

17:                                               ; preds = %9
  %18 = load i32, i32* @SK_F_OFFLD_COMPLETE, align 4
  %19 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %20 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %19, i32 0, i32 1
  %21 = call i64 @test_and_clear_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* @L4_KCQE_OPCODE_VALUE_RESET_COMP, align 4
  %25 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %26 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  store i32 1, i32* %2, align 4
  br label %28

27:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %23
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
