; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_xgxs_link_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_xgxs_link_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32 }

@FR_AB_XX_CORE_STAT = common dso_local global i32 0, align 4
@FRF_AB_XX_ALIGN_DONE = common dso_local global i32 0, align 4
@FRF_AB_XX_SYNC_STAT = common dso_local global i32 0, align 4
@FFE_AB_XX_STAT_ALL_LANES = common dso_local global i32 0, align 4
@FRF_AB_XX_COMMA_DET = common dso_local global i32 0, align 4
@FRF_AB_XX_CHAR_ERR = common dso_local global i32 0, align 4
@FRF_AB_XX_DISPERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ef4_nic*)* @falcon_xgxs_link_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_xgxs_link_ok(%struct.ef4_nic* %0) #0 {
  %2 = alloca %struct.ef4_nic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %8 = load i32, i32* @FR_AB_XX_CORE_STAT, align 4
  %9 = call i32 @ef4_reado(%struct.ef4_nic* %7, i32* %3, i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @FRF_AB_XX_ALIGN_DONE, align 4
  %12 = call i32 @EF4_OWORD_FIELD(i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @FRF_AB_XX_SYNC_STAT, align 4
  %15 = call i32 @EF4_OWORD_FIELD(i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @FFE_AB_XX_STAT_ALL_LANES, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %18, %1
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @FRF_AB_XX_COMMA_DET, align 4
  %26 = load i32, i32* @FFE_AB_XX_STAT_ALL_LANES, align 4
  %27 = call i32 @EF4_SET_OWORD_FIELD(i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @FRF_AB_XX_CHAR_ERR, align 4
  %30 = load i32, i32* @FFE_AB_XX_STAT_ALL_LANES, align 4
  %31 = call i32 @EF4_SET_OWORD_FIELD(i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @FRF_AB_XX_DISPERR, align 4
  %34 = load i32, i32* @FFE_AB_XX_STAT_ALL_LANES, align 4
  %35 = call i32 @EF4_SET_OWORD_FIELD(i32 %32, i32 %33, i32 %34)
  %36 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %37 = load i32, i32* @FR_AB_XX_CORE_STAT, align 4
  %38 = call i32 @ef4_writeo(%struct.ef4_nic* %36, i32* %3, i32 %37)
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @ef4_reado(%struct.ef4_nic*, i32*, i32) #1

declare dso_local i32 @EF4_OWORD_FIELD(i32, i32) #1

declare dso_local i32 @EF4_SET_OWORD_FIELD(i32, i32, i32) #1

declare dso_local i32 @ef4_writeo(%struct.ef4_nic*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
