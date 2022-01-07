; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_ath9k_htc_fw_panic_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_ath9k_htc_fw_panic_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32 }
%struct.sk_buff = type { i64 }
%struct.htc_panic_bad_vaddr = type { i32, i32, i32 }
%struct.htc_panic_bad_epid = type { i32 }

@.str = private unnamed_addr constant [70 x i8] c"ath: firmware panic! exccause: 0x%08x; pc: 0x%08x; badvaddr: 0x%08x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"ath: firmware panic! bad epid: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"ath: unknown panic pattern!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_target*, %struct.sk_buff*)* @ath9k_htc_fw_panic_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_fw_panic_report(%struct.htc_target* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.htc_target*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.htc_panic_bad_vaddr*, align 8
  %7 = alloca %struct.htc_panic_bad_epid*, align 8
  store %struct.htc_target* %0, %struct.htc_target** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %44 [
    i32 857870745, label %14
    i32 857871001, label %32
  ]

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.htc_panic_bad_vaddr*
  store %struct.htc_panic_bad_vaddr* %18, %struct.htc_panic_bad_vaddr** %6, align 8
  %19 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %20 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.htc_panic_bad_vaddr*, %struct.htc_panic_bad_vaddr** %6, align 8
  %23 = getelementptr inbounds %struct.htc_panic_bad_vaddr, %struct.htc_panic_bad_vaddr* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.htc_panic_bad_vaddr*, %struct.htc_panic_bad_vaddr** %6, align 8
  %26 = getelementptr inbounds %struct.htc_panic_bad_vaddr, %struct.htc_panic_bad_vaddr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.htc_panic_bad_vaddr*, %struct.htc_panic_bad_vaddr** %6, align 8
  %29 = getelementptr inbounds %struct.htc_panic_bad_vaddr, %struct.htc_panic_bad_vaddr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, ...) @dev_err(i32 %21, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %30)
  br label %49

32:                                               ; preds = %2
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.htc_panic_bad_epid*
  store %struct.htc_panic_bad_epid* %36, %struct.htc_panic_bad_epid** %7, align 8
  %37 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %38 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.htc_panic_bad_epid*, %struct.htc_panic_bad_epid** %7, align 8
  %41 = getelementptr inbounds %struct.htc_panic_bad_epid, %struct.htc_panic_bad_epid* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, ...) @dev_err(i32 %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %49

44:                                               ; preds = %2
  %45 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %46 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @dev_err(i32 %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %44, %32, %14
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
