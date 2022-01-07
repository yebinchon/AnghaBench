; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.h_bnxt_db_write_relaxed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.h_bnxt_db_write_relaxed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.bnxt_db_info = type { i32, i32, i32 }

@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@BNXT_FLAG_DOUBLE_DB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, %struct.bnxt_db_info*, i32)* @bnxt_db_write_relaxed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_db_write_relaxed(%struct.bnxt* %0, %struct.bnxt_db_info* %1, i32 %2) #0 {
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca %struct.bnxt_db_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store %struct.bnxt_db_info* %1, %struct.bnxt_db_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %9 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load %struct.bnxt_db_info*, %struct.bnxt_db_info** %5, align 8
  %16 = getelementptr inbounds %struct.bnxt_db_info, %struct.bnxt_db_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.bnxt_db_info*, %struct.bnxt_db_info** %5, align 8
  %21 = getelementptr inbounds %struct.bnxt_db_info, %struct.bnxt_db_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @writeq_relaxed(i32 %19, i32 %22)
  br label %48

24:                                               ; preds = %3
  %25 = load %struct.bnxt_db_info*, %struct.bnxt_db_info** %5, align 8
  %26 = getelementptr inbounds %struct.bnxt_db_info, %struct.bnxt_db_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.bnxt_db_info*, %struct.bnxt_db_info** %5, align 8
  %32 = getelementptr inbounds %struct.bnxt_db_info, %struct.bnxt_db_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @writel_relaxed(i32 %30, i32 %33)
  %35 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %36 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BNXT_FLAG_DOUBLE_DB, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %24
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.bnxt_db_info*, %struct.bnxt_db_info** %5, align 8
  %44 = getelementptr inbounds %struct.bnxt_db_info, %struct.bnxt_db_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @writel_relaxed(i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %41, %24
  br label %48

48:                                               ; preds = %47, %14
  ret void
}

declare dso_local i32 @writeq_relaxed(i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
