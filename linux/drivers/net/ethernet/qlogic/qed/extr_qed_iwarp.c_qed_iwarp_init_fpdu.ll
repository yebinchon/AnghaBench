; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_init_fpdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_init_fpdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_iwarp_ll2_buff = type { i32, i64 }
%struct.qed_iwarp_fpdu = type { i32, i32, i32*, i32, i32, i32, i32, %struct.qed_iwarp_ll2_buff* }
%struct.unaligned_opaque_data = type { i32, i32 }

@QED_IWARP_INVALID_FPDU_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_fpdu*, %struct.unaligned_opaque_data*, i32, i32)* @qed_iwarp_init_fpdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iwarp_init_fpdu(%struct.qed_iwarp_ll2_buff* %0, %struct.qed_iwarp_fpdu* %1, %struct.unaligned_opaque_data* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.qed_iwarp_ll2_buff*, align 8
  %7 = alloca %struct.qed_iwarp_fpdu*, align 8
  %8 = alloca %struct.unaligned_opaque_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qed_iwarp_ll2_buff* %0, %struct.qed_iwarp_ll2_buff** %6, align 8
  store %struct.qed_iwarp_fpdu* %1, %struct.qed_iwarp_fpdu** %7, align 8
  store %struct.unaligned_opaque_data* %2, %struct.unaligned_opaque_data** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %6, align 8
  %12 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %7, align 8
  %13 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %12, i32 0, i32 7
  store %struct.qed_iwarp_ll2_buff* %11, %struct.qed_iwarp_ll2_buff** %13, align 8
  %14 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %6, align 8
  %15 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %10, align 4
  %18 = add nsw i32 %16, %17
  %19 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %7, align 8
  %20 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %8, align 8
  %22 = getelementptr inbounds %struct.unaligned_opaque_data, %struct.unaligned_opaque_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %7, align 8
  %25 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %6, align 8
  %27 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %8, align 8
  %30 = getelementptr inbounds %struct.unaligned_opaque_data, %struct.unaligned_opaque_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %7, align 8
  %34 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %6, align 8
  %36 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %8, align 8
  %40 = getelementptr inbounds %struct.unaligned_opaque_data, %struct.unaligned_opaque_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %7, align 8
  %45 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %44, i32 0, i32 2
  store i32* %43, i32** %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %5
  %49 = load i32, i32* @QED_IWARP_INVALID_FPDU_LENGTH, align 4
  %50 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %7, align 8
  %51 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  br label %70

52:                                               ; preds = %5
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %7, align 8
  %55 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %7, align 8
  %60 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %9, align 4
  %63 = sub nsw i32 %61, %62
  %64 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %7, align 8
  %65 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  br label %69

66:                                               ; preds = %52
  %67 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %7, align 8
  %68 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %67, i32 0, i32 3
  store i32 0, i32* %68, align 8
  br label %69

69:                                               ; preds = %66, %58
  br label %70

70:                                               ; preds = %69, %48
  %71 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %7, align 8
  %72 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %7, align 8
  %75 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %73, %76
  %78 = load %struct.qed_iwarp_fpdu*, %struct.qed_iwarp_fpdu** %7, align 8
  %79 = getelementptr inbounds %struct.qed_iwarp_fpdu, %struct.qed_iwarp_fpdu* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
