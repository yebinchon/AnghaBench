; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_perms.c_lkdtm_WRITE_RO_AFTER_INIT.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_perms.c_lkdtm_WRITE_RO_AFTER_INIT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ro_after_init = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"%p was NOT written during init!?\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"attempting bad ro_after_init write at %px\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lkdtm_WRITE_RO_AFTER_INIT() #0 {
  %1 = alloca i64*, align 8
  store i64* @ro_after_init, i64** %1, align 8
  %2 = load i64*, i64** %1, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 170
  %5 = icmp ne i64 %4, 170
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i64*, i64** %1, align 8
  %8 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64* %7)
  br label %15

9:                                                ; preds = %0
  %10 = load i64*, i64** %1, align 8
  %11 = call i32 @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64* %10)
  %12 = load i64*, i64** %1, align 8
  %13 = load i64, i64* %12, align 8
  %14 = xor i64 %13, 2882343476
  store i64 %14, i64* %12, align 8
  br label %15

15:                                               ; preds = %9, %6
  ret void
}

declare dso_local i32 @pr_info(i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
