; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_keygen.c_build_ar_scheme.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_keygen.c_build_ar_scheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FM_KG_KGAR_WRITE = common dso_local global i64 0, align 8
@FM_KG_KGAR_READ = common dso_local global i64 0, align 8
@FM_KG_KGAR_GO = common dso_local global i32 0, align 4
@FM_KG_KGAR_SEL_SCHEME_ENTRY = common dso_local global i32 0, align 4
@DUMMY_PORT_ID = common dso_local global i32 0, align 4
@FM_KG_KGAR_NUM_SHIFT = common dso_local global i32 0, align 4
@FM_KG_KGAR_SCM_WSEL_UPDATE_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32)* @build_ar_scheme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_ar_scheme(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i64, i64* @FM_KG_KGAR_WRITE, align 8
  br label %14

12:                                               ; preds = %3
  %13 = load i64, i64* @FM_KG_KGAR_READ, align 8
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i64 [ %11, %10 ], [ %13, %12 ]
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @FM_KG_KGAR_GO, align 4
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @FM_KG_KGAR_SEL_SCHEME_ENTRY, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @DUMMY_PORT_ID, align 4
  %23 = or i32 %21, %22
  %24 = load i64, i64* %4, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @FM_KG_KGAR_NUM_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = or i32 %23, %27
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %14
  %32 = load i32, i32* @FM_KG_KGAR_SCM_WSEL_UPDATE_CNT, align 4
  br label %34

33:                                               ; preds = %14
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  %36 = or i32 %28, %35
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
