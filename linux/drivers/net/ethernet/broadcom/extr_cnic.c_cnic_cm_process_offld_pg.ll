; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_cm_process_offld_pg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_cm_process_offld_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { %struct.cnic_sock* }
%struct.cnic_sock = type { i32, i32 }
%struct.l4_kcq = type { i64, i64, i64, i32 }

@L4_KCQE_OPCODE_VALUE_UPDATE_PG = common dso_local global i64 0, align 8
@SK_F_OFFLD_SCHED = common dso_local global i32 0, align 4
@L4_KCQE_COMPLETION_STATUS_CTX_ALLOC_FAIL = common dso_local global i64 0, align 8
@L4_KCQE_OPCODE_VALUE_CONNECT_COMPLETE = common dso_local global i32 0, align 4
@SK_F_PG_OFFLD_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*, %struct.l4_kcq*)* @cnic_cm_process_offld_pg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_cm_process_offld_pg(%struct.cnic_dev* %0, %struct.l4_kcq* %1) #0 {
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.l4_kcq*, align 8
  %5 = alloca %struct.cnic_local*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cnic_sock*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  store %struct.l4_kcq* %1, %struct.l4_kcq** %4, align 8
  %9 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %10 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %9, i32 0, i32 0
  %11 = load %struct.cnic_local*, %struct.cnic_local** %10, align 8
  store %struct.cnic_local* %11, %struct.cnic_local** %5, align 8
  %12 = load %struct.l4_kcq*, %struct.l4_kcq** %4, align 8
  %13 = getelementptr inbounds %struct.l4_kcq, %struct.l4_kcq* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.l4_kcq*, %struct.l4_kcq** %4, align 8
  %16 = getelementptr inbounds %struct.l4_kcq, %struct.l4_kcq* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %19 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %18, i32 0, i32 0
  %20 = load %struct.cnic_sock*, %struct.cnic_sock** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %20, i64 %21
  store %struct.cnic_sock* %22, %struct.cnic_sock** %8, align 8
  %23 = load %struct.cnic_sock*, %struct.cnic_sock** %8, align 8
  %24 = call i32 @csk_hold(%struct.cnic_sock* %23)
  %25 = load %struct.cnic_sock*, %struct.cnic_sock** %8, align 8
  %26 = call i32 @cnic_in_use(%struct.cnic_sock* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  br label %65

29:                                               ; preds = %2
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @L4_KCQE_OPCODE_VALUE_UPDATE_PG, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* @SK_F_OFFLD_SCHED, align 4
  %35 = load %struct.cnic_sock*, %struct.cnic_sock** %8, align 8
  %36 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %35, i32 0, i32 0
  %37 = call i32 @clear_bit(i32 %34, i32* %36)
  br label %65

38:                                               ; preds = %29
  %39 = load %struct.l4_kcq*, %struct.l4_kcq** %4, align 8
  %40 = getelementptr inbounds %struct.l4_kcq, %struct.l4_kcq* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @L4_KCQE_COMPLETION_STATUS_CTX_ALLOC_FAIL, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load i32, i32* @SK_F_OFFLD_SCHED, align 4
  %46 = load %struct.cnic_sock*, %struct.cnic_sock** %8, align 8
  %47 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %46, i32 0, i32 0
  %48 = call i32 @clear_bit(i32 %45, i32* %47)
  %49 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %50 = load %struct.cnic_sock*, %struct.cnic_sock** %8, align 8
  %51 = load i32, i32* @L4_KCQE_OPCODE_VALUE_CONNECT_COMPLETE, align 4
  %52 = call i32 @cnic_cm_upcall(%struct.cnic_local* %49, %struct.cnic_sock* %50, i32 %51)
  br label %65

53:                                               ; preds = %38
  %54 = load %struct.l4_kcq*, %struct.l4_kcq** %4, align 8
  %55 = getelementptr inbounds %struct.l4_kcq, %struct.l4_kcq* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.cnic_sock*, %struct.cnic_sock** %8, align 8
  %58 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @SK_F_PG_OFFLD_COMPLETE, align 4
  %60 = load %struct.cnic_sock*, %struct.cnic_sock** %8, align 8
  %61 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %60, i32 0, i32 0
  %62 = call i32 @set_bit(i32 %59, i32* %61)
  %63 = load %struct.cnic_sock*, %struct.cnic_sock** %8, align 8
  %64 = call i32 @cnic_cm_conn_req(%struct.cnic_sock* %63)
  br label %65

65:                                               ; preds = %53, %44, %33, %28
  %66 = load %struct.cnic_sock*, %struct.cnic_sock** %8, align 8
  %67 = call i32 @csk_put(%struct.cnic_sock* %66)
  ret void
}

declare dso_local i32 @csk_hold(%struct.cnic_sock*) #1

declare dso_local i32 @cnic_in_use(%struct.cnic_sock*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @cnic_cm_upcall(%struct.cnic_local*, %struct.cnic_sock*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cnic_cm_conn_req(%struct.cnic_sock*) #1

declare dso_local i32 @csk_put(%struct.cnic_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
