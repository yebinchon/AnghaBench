; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }
%struct.fm10k_mbx_info = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_hw*, %struct.fm10k_mbx_info*)* @fm10k_mbx_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_mbx_write(%struct.fm10k_hw* %0, %struct.fm10k_mbx_info* %1) #0 {
  %3 = alloca %struct.fm10k_hw*, align 8
  %4 = alloca %struct.fm10k_mbx_info*, align 8
  %5 = alloca i32, align 4
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %3, align 8
  store %struct.fm10k_mbx_info* %1, %struct.fm10k_mbx_info** %4, align 8
  %6 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %7 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %12 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %9, i32 %10, i64 %13)
  %15 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %16 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %21 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %22 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %25 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %20, i32 %23, i64 %26)
  br label %28

28:                                               ; preds = %19, %2
  %29 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %30 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %32 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  ret void
}

declare dso_local i32 @fm10k_write_reg(%struct.fm10k_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
