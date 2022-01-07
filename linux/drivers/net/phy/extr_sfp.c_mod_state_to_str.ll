; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_mod_state_to_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_mod_state_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mod_state_strings = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [21 x i8] c"Unknown module state\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i16)* @mod_state_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mod_state_to_str(i16 zeroext %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  %4 = load i16, i16* %3, align 2
  %5 = zext i16 %4 to i32
  %6 = load i8**, i8*** @mod_state_strings, align 8
  %7 = call zeroext i16 @ARRAY_SIZE(i8** %6)
  %8 = zext i16 %7 to i32
  %9 = icmp sge i32 %5, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %17

11:                                               ; preds = %1
  %12 = load i8**, i8*** @mod_state_strings, align 8
  %13 = load i16, i16* %3, align 2
  %14 = zext i16 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %2, align 8
  br label %17

17:                                               ; preds = %11, %10
  %18 = load i8*, i8** %2, align 8
  ret i8* %18
}

declare dso_local zeroext i16 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
