; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables.c_assert_sizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables.c_assert_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B43_TAB_ROTOR_SIZE = common dso_local global i64 0, align 8
@b43_tab_rotor = common dso_local global i32 0, align 4
@B43_TAB_RETARD_SIZE = common dso_local global i64 0, align 8
@b43_tab_retard = common dso_local global i32 0, align 4
@B43_TAB_FINEFREQA_SIZE = common dso_local global i64 0, align 8
@b43_tab_finefreqa = common dso_local global i32 0, align 4
@B43_TAB_FINEFREQG_SIZE = common dso_local global i64 0, align 8
@b43_tab_finefreqg = common dso_local global i32 0, align 4
@B43_TAB_NOISEA2_SIZE = common dso_local global i64 0, align 8
@b43_tab_noisea2 = common dso_local global i32 0, align 4
@B43_TAB_NOISEA3_SIZE = common dso_local global i64 0, align 8
@b43_tab_noisea3 = common dso_local global i32 0, align 4
@B43_TAB_NOISEG1_SIZE = common dso_local global i64 0, align 8
@b43_tab_noiseg1 = common dso_local global i32 0, align 4
@B43_TAB_NOISEG2_SIZE = common dso_local global i64 0, align 8
@b43_tab_noiseg2 = common dso_local global i32 0, align 4
@B43_TAB_NOISESCALE_SIZE = common dso_local global i64 0, align 8
@b43_tab_noisescalea2 = common dso_local global i32 0, align 4
@b43_tab_noisescalea3 = common dso_local global i32 0, align 4
@b43_tab_noisescaleg1 = common dso_local global i32 0, align 4
@b43_tab_noisescaleg2 = common dso_local global i32 0, align 4
@b43_tab_noisescaleg3 = common dso_local global i32 0, align 4
@B43_TAB_SIGMASQR_SIZE = common dso_local global i64 0, align 8
@b43_tab_sigmasqr1 = common dso_local global i32 0, align 4
@b43_tab_sigmasqr2 = common dso_local global i32 0, align 4
@B43_TAB_RSSIAGC1_SIZE = common dso_local global i64 0, align 8
@b43_tab_rssiagc1 = common dso_local global i32 0, align 4
@B43_TAB_RSSIAGC2_SIZE = common dso_local global i64 0, align 8
@b43_tab_rssiagc2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @assert_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_sizes() #0 {
  %1 = load i64, i64* @B43_TAB_ROTOR_SIZE, align 8
  %2 = load i32, i32* @b43_tab_rotor, align 4
  %3 = call i64 @ARRAY_SIZE(i32 %2)
  %4 = icmp ne i64 %1, %3
  %5 = zext i1 %4 to i32
  %6 = call i32 @BUILD_BUG_ON(i32 %5)
  %7 = load i64, i64* @B43_TAB_RETARD_SIZE, align 8
  %8 = load i32, i32* @b43_tab_retard, align 4
  %9 = call i64 @ARRAY_SIZE(i32 %8)
  %10 = icmp ne i64 %7, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUILD_BUG_ON(i32 %11)
  %13 = load i64, i64* @B43_TAB_FINEFREQA_SIZE, align 8
  %14 = load i32, i32* @b43_tab_finefreqa, align 4
  %15 = call i64 @ARRAY_SIZE(i32 %14)
  %16 = icmp ne i64 %13, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUILD_BUG_ON(i32 %17)
  %19 = load i64, i64* @B43_TAB_FINEFREQG_SIZE, align 8
  %20 = load i32, i32* @b43_tab_finefreqg, align 4
  %21 = call i64 @ARRAY_SIZE(i32 %20)
  %22 = icmp ne i64 %19, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUILD_BUG_ON(i32 %23)
  %25 = load i64, i64* @B43_TAB_NOISEA2_SIZE, align 8
  %26 = load i32, i32* @b43_tab_noisea2, align 4
  %27 = call i64 @ARRAY_SIZE(i32 %26)
  %28 = icmp ne i64 %25, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUILD_BUG_ON(i32 %29)
  %31 = load i64, i64* @B43_TAB_NOISEA3_SIZE, align 8
  %32 = load i32, i32* @b43_tab_noisea3, align 4
  %33 = call i64 @ARRAY_SIZE(i32 %32)
  %34 = icmp ne i64 %31, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUILD_BUG_ON(i32 %35)
  %37 = load i64, i64* @B43_TAB_NOISEG1_SIZE, align 8
  %38 = load i32, i32* @b43_tab_noiseg1, align 4
  %39 = call i64 @ARRAY_SIZE(i32 %38)
  %40 = icmp ne i64 %37, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUILD_BUG_ON(i32 %41)
  %43 = load i64, i64* @B43_TAB_NOISEG2_SIZE, align 8
  %44 = load i32, i32* @b43_tab_noiseg2, align 4
  %45 = call i64 @ARRAY_SIZE(i32 %44)
  %46 = icmp ne i64 %43, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUILD_BUG_ON(i32 %47)
  %49 = load i64, i64* @B43_TAB_NOISESCALE_SIZE, align 8
  %50 = load i32, i32* @b43_tab_noisescalea2, align 4
  %51 = call i64 @ARRAY_SIZE(i32 %50)
  %52 = icmp ne i64 %49, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @BUILD_BUG_ON(i32 %53)
  %55 = load i64, i64* @B43_TAB_NOISESCALE_SIZE, align 8
  %56 = load i32, i32* @b43_tab_noisescalea3, align 4
  %57 = call i64 @ARRAY_SIZE(i32 %56)
  %58 = icmp ne i64 %55, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUILD_BUG_ON(i32 %59)
  %61 = load i64, i64* @B43_TAB_NOISESCALE_SIZE, align 8
  %62 = load i32, i32* @b43_tab_noisescaleg1, align 4
  %63 = call i64 @ARRAY_SIZE(i32 %62)
  %64 = icmp ne i64 %61, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @BUILD_BUG_ON(i32 %65)
  %67 = load i64, i64* @B43_TAB_NOISESCALE_SIZE, align 8
  %68 = load i32, i32* @b43_tab_noisescaleg2, align 4
  %69 = call i64 @ARRAY_SIZE(i32 %68)
  %70 = icmp ne i64 %67, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @BUILD_BUG_ON(i32 %71)
  %73 = load i64, i64* @B43_TAB_NOISESCALE_SIZE, align 8
  %74 = load i32, i32* @b43_tab_noisescaleg3, align 4
  %75 = call i64 @ARRAY_SIZE(i32 %74)
  %76 = icmp ne i64 %73, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @BUILD_BUG_ON(i32 %77)
  %79 = load i64, i64* @B43_TAB_SIGMASQR_SIZE, align 8
  %80 = load i32, i32* @b43_tab_sigmasqr1, align 4
  %81 = call i64 @ARRAY_SIZE(i32 %80)
  %82 = icmp ne i64 %79, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @BUILD_BUG_ON(i32 %83)
  %85 = load i64, i64* @B43_TAB_SIGMASQR_SIZE, align 8
  %86 = load i32, i32* @b43_tab_sigmasqr2, align 4
  %87 = call i64 @ARRAY_SIZE(i32 %86)
  %88 = icmp ne i64 %85, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @BUILD_BUG_ON(i32 %89)
  %91 = load i64, i64* @B43_TAB_RSSIAGC1_SIZE, align 8
  %92 = load i32, i32* @b43_tab_rssiagc1, align 4
  %93 = call i64 @ARRAY_SIZE(i32 %92)
  %94 = icmp ne i64 %91, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @BUILD_BUG_ON(i32 %95)
  %97 = load i64, i64* @B43_TAB_RSSIAGC2_SIZE, align 8
  %98 = load i32, i32* @b43_tab_rssiagc2, align 4
  %99 = call i64 @ARRAY_SIZE(i32 %98)
  %100 = icmp ne i64 %97, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @BUILD_BUG_ON(i32 %101)
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
