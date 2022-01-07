; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_write_itr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_write_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_q_vector = type { i32, i64, i32, %struct.igb_adapter* }
%struct.igb_adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@e1000_82575 = common dso_local global i64 0, align 8
@E1000_EITR_CNT_IGNR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_q_vector*)* @igb_write_itr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_write_itr(%struct.igb_q_vector* %0) #0 {
  %2 = alloca %struct.igb_q_vector*, align 8
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.igb_q_vector* %0, %struct.igb_q_vector** %2, align 8
  %5 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %6 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %5, i32 0, i32 3
  %7 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  store %struct.igb_adapter* %7, %struct.igb_adapter** %3, align 8
  %8 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %9 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 32764
  store i32 %11, i32* %4, align 4
  %12 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %13 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %46

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 4, i32* %4, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @e1000_82575, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load i32, i32* %4, align 4
  %31 = shl i32 %30, 16
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %38

34:                                               ; preds = %21
  %35 = load i32, i32* @E1000_EITR_CNT_IGNR, align 4
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %41 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @writel(i32 %39, i32 %42)
  %44 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %45 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %38, %16
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
