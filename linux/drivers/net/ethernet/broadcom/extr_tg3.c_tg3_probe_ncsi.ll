; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_probe_ncsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_probe_ncsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@TG3_APE_SEG_SIG = common dso_local global i32 0, align 4
@APE_SEG_SIG_MAGIC = common dso_local global i32 0, align 4
@TG3_APE_FW_STATUS = common dso_local global i32 0, align 4
@APE_FW_STATUS_READY = common dso_local global i32 0, align 4
@TG3_APE_FW_FEATURES = common dso_local global i32 0, align 4
@TG3_APE_FW_FEATURE_NCSI = common dso_local global i32 0, align 4
@APE_HAS_NCSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_probe_ncsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_probe_ncsi(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %4 = load %struct.tg3*, %struct.tg3** %2, align 8
  %5 = load i32, i32* @TG3_APE_SEG_SIG, align 4
  %6 = call i32 @tg3_ape_read32(%struct.tg3* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @APE_SEG_SIG_MAGIC, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %31

11:                                               ; preds = %1
  %12 = load %struct.tg3*, %struct.tg3** %2, align 8
  %13 = load i32, i32* @TG3_APE_FW_STATUS, align 4
  %14 = call i32 @tg3_ape_read32(%struct.tg3* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @APE_FW_STATUS_READY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  br label %31

20:                                               ; preds = %11
  %21 = load %struct.tg3*, %struct.tg3** %2, align 8
  %22 = load i32, i32* @TG3_APE_FW_FEATURES, align 4
  %23 = call i32 @tg3_ape_read32(%struct.tg3* %21, i32 %22)
  %24 = load i32, i32* @TG3_APE_FW_FEATURE_NCSI, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.tg3*, %struct.tg3** %2, align 8
  %29 = load i32, i32* @APE_HAS_NCSI, align 4
  %30 = call i32 @tg3_flag_set(%struct.tg3* %28, i32 %29)
  br label %31

31:                                               ; preds = %10, %19, %27, %20
  ret void
}

declare dso_local i32 @tg3_ape_read32(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_flag_set(%struct.tg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
