; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_itr_divisor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_itr_divisor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_q_vector = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@I40E_ITR_ADAPTIVE_MIN_INC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_q_vector*)* @i40e_itr_divisor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_itr_divisor(%struct.i40e_q_vector* %0) #0 {
  %2 = alloca %struct.i40e_q_vector*, align 8
  %3 = alloca i32, align 4
  store %struct.i40e_q_vector* %0, %struct.i40e_q_vector** %2, align 8
  %4 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %2, align 8
  %5 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %4, i32 0, i32 0
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %20 [
    i32 128, label %14
    i32 129, label %17
    i32 130, label %17
    i32 132, label %21
    i32 131, label %24
    i32 133, label %24
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* @I40E_ITR_ADAPTIVE_MIN_INC, align 4
  %16 = mul nsw i32 %15, 1024
  store i32 %16, i32* %3, align 4
  br label %27

17:                                               ; preds = %1, %1
  %18 = load i32, i32* @I40E_ITR_ADAPTIVE_MIN_INC, align 4
  %19 = mul nsw i32 %18, 512
  store i32 %19, i32* %3, align 4
  br label %27

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %1, %20
  %22 = load i32, i32* @I40E_ITR_ADAPTIVE_MIN_INC, align 4
  %23 = mul nsw i32 %22, 256
  store i32 %23, i32* %3, align 4
  br label %27

24:                                               ; preds = %1, %1
  %25 = load i32, i32* @I40E_ITR_ADAPTIVE_MIN_INC, align 4
  %26 = mul nsw i32 %25, 32
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %21, %17, %14
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
