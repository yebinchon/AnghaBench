; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_base.c_genwqe_setup_pf_jtimer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_base.c_genwqe_setup_pf_jtimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_dev = type { i32 }

@GENWQE_PF_JOBTIMEOUT_MSEC = common dso_local global i64 0, align 8
@IO_SLC_VF_APPJOB_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genwqe_dev*)* @genwqe_setup_pf_jtimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genwqe_setup_pf_jtimer(%struct.genwqe_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.genwqe_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.genwqe_dev* %0, %struct.genwqe_dev** %3, align 8
  %6 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %7 = call i32 @genwqe_T_psec(%struct.genwqe_dev* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i64, i64* @GENWQE_PF_JOBTIMEOUT_MSEC, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = load i64, i64* @GENWQE_PF_JOBTIMEOUT_MSEC, align 8
  %13 = mul i64 %12, 16000000000
  %14 = load i32, i32* %4, align 4
  %15 = mul nsw i32 %14, 15
  %16 = sext i32 %15 to i64
  %17 = udiv i64 %13, %16
  %18 = call i32 @ilog2(i64 %17)
  %19 = sub nsw i32 %18, 10
  store i32 %19, i32* %5, align 4
  %20 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %21 = load i32, i32* @IO_SLC_VF_APPJOB_TIMEOUT, align 4
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 255
  %24 = or i32 65280, %23
  %25 = call i32 @genwqe_write_vreg(%struct.genwqe_dev* %20, i32 %21, i32 %24, i32 0)
  store i32 1, i32* %2, align 4
  br label %26

26:                                               ; preds = %11, %10
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @genwqe_T_psec(%struct.genwqe_dev*) #1

declare dso_local i32 @ilog2(i64) #1

declare dso_local i32 @genwqe_write_vreg(%struct.genwqe_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
