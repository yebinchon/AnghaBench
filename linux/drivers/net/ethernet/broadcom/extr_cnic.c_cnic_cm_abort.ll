; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_cm_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_cm_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_sock = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cnic_local* }
%struct.cnic_local = type { i32 (%struct.cnic_sock*, i64)* }

@L4_KCQE_OPCODE_VALUE_RESET_COMP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SK_F_PG_OFFLD_COMPLETE = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_sock*)* @cnic_cm_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_cm_abort(%struct.cnic_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cnic_sock*, align 8
  %4 = alloca %struct.cnic_local*, align 8
  %5 = alloca i64, align 8
  store %struct.cnic_sock* %0, %struct.cnic_sock** %3, align 8
  %6 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %7 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.cnic_local*, %struct.cnic_local** %9, align 8
  store %struct.cnic_local* %10, %struct.cnic_local** %4, align 8
  %11 = load i64, i64* @L4_KCQE_OPCODE_VALUE_RESET_COMP, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %13 = call i32 @cnic_in_use(%struct.cnic_sock* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %50

18:                                               ; preds = %1
  %19 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %20 = call i64 @cnic_abort_prep(%struct.cnic_sock* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %24 = call i32 @cnic_cm_abort_req(%struct.cnic_sock* %23)
  store i32 %24, i32* %2, align 4
  br label %50

25:                                               ; preds = %18
  %26 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %27 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %26, i32 0, i32 0
  %28 = load i32 (%struct.cnic_sock*, i64)*, i32 (%struct.cnic_sock*, i64)** %27, align 8
  %29 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 %28(%struct.cnic_sock* %29, i64 %30)
  %32 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %33 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %44, %37
  %39 = load i32, i32* @SK_F_PG_OFFLD_COMPLETE, align 4
  %40 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %41 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %40, i32 0, i32 1
  %42 = call i64 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i32 @msleep(i32 1)
  br label %38

46:                                               ; preds = %38
  %47 = load i32, i32* @EALREADY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %46, %22, %15
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @cnic_in_use(%struct.cnic_sock*) #1

declare dso_local i64 @cnic_abort_prep(%struct.cnic_sock*) #1

declare dso_local i32 @cnic_cm_abort_req(%struct.cnic_sock*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
