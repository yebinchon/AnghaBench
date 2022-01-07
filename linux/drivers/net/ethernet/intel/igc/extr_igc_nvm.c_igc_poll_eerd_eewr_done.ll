; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_nvm.c_igc_poll_eerd_eewr_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_nvm.c_igc_poll_eerd_eewr_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_hw = type { i32 }

@IGC_ERR_NVM = common dso_local global i64 0, align 8
@IGC_NVM_POLL_READ = common dso_local global i32 0, align 4
@IGC_EERD = common dso_local global i32 0, align 4
@IGC_EEWR = common dso_local global i32 0, align 4
@IGC_NVM_RW_REG_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.igc_hw*, i32)* @igc_poll_eerd_eewr_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @igc_poll_eerd_eewr_done(%struct.igc_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.igc_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.igc_hw* %0, %struct.igc_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i64, i64* @IGC_ERR_NVM, align 8
  %10 = sub nsw i64 0, %9
  store i64 %10, i64* %5, align 8
  store i64 100000, i64* %6, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %33, %2
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @IGC_NVM_POLL_READ, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @IGC_EERD, align 4
  %21 = call i64 @rd32(i32 %20)
  store i64 %21, i64* %8, align 8
  br label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @IGC_EEWR, align 4
  %24 = call i64 @rd32(i32 %23)
  store i64 %24, i64* %8, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @IGC_NVM_RW_REG_DONE, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i64 0, i64* %5, align 8
  br label %36

31:                                               ; preds = %25
  %32 = call i32 @udelay(i32 5)
  br label %33

33:                                               ; preds = %31
  %34 = load i64, i64* %7, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %7, align 8
  br label %11

36:                                               ; preds = %30, %11
  %37 = load i64, i64* %5, align 8
  ret i64 %37
}

declare dso_local i64 @rd32(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
