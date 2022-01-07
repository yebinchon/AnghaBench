; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_cmd.c_carl9170_cmd_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_cmd.c_carl9170_cmd_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carl9170_cmd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ar9170 = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.carl9170_cmd* @carl9170_cmd_buf(%struct.ar9170* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.carl9170_cmd*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = zext i32 %8 to i64
  %10 = add i64 4, %9
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.carl9170_cmd* @kzalloc(i32 %11, i32 %12)
  store %struct.carl9170_cmd* %13, %struct.carl9170_cmd** %7, align 8
  %14 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %7, align 8
  %15 = icmp ne %struct.carl9170_cmd* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %7, align 8
  %19 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %7, align 8
  %23 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  br label %25

25:                                               ; preds = %16, %3
  %26 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %7, align 8
  ret %struct.carl9170_cmd* %26
}

declare dso_local %struct.carl9170_cmd* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
