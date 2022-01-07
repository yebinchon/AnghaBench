; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_refcount.c_lkdtm_REFCOUNT_DEC_SATURATED.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_refcount.c_lkdtm_REFCOUNT_DEC_SATURATED.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REFCOUNT_SATURATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"attempting bad refcount_dec() from saturated\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lkdtm_REFCOUNT_DEC_SATURATED() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @REFCOUNT_SATURATED, align 4
  %3 = call i32 @REFCOUNT_INIT(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @refcount_dec(i32* %1)
  %6 = call i32 @check_saturated(i32* %1)
  ret void
}

declare dso_local i32 @REFCOUNT_INIT(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @refcount_dec(i32*) #1

declare dso_local i32 @check_saturated(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
