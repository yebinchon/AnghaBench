; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_index_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_index_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_mbx_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_mbx_info*, i32, i32)* @fm10k_mbx_index_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_mbx_index_len(%struct.fm10k_mbx_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fm10k_mbx_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fm10k_mbx_info* %0, %struct.fm10k_mbx_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = sub nsw i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 %15, 2
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %14, %3
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %20 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 1
  %23 = sub nsw i32 %22, 1
  %24 = and i32 %18, %23
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
