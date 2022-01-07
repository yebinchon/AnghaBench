; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_set_pinstates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_set_pinstates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usdhi6_host = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usdhi6_host*, i32)* @usdhi6_set_pinstates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usdhi6_set_pinstates(%struct.usdhi6_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usdhi6_host*, align 8
  %5 = alloca i32, align 4
  store %struct.usdhi6_host* %0, %struct.usdhi6_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.usdhi6_host*, %struct.usdhi6_host** %4, align 8
  %7 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @IS_ERR(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %22 [
    i32 128, label %14
    i32 129, label %14
  ]

14:                                               ; preds = %12, %12
  %15 = load %struct.usdhi6_host*, %struct.usdhi6_host** %4, align 8
  %16 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.usdhi6_host*, %struct.usdhi6_host** %4, align 8
  %19 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pinctrl_select_state(i32 %17, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %30

22:                                               ; preds = %12
  %23 = load %struct.usdhi6_host*, %struct.usdhi6_host** %4, align 8
  %24 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.usdhi6_host*, %struct.usdhi6_host** %4, align 8
  %27 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pinctrl_select_state(i32 %25, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %22, %14, %11
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pinctrl_select_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
