; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usdhi6_host = type { i32 }

@USDHI6_SOFT_RST = common dso_local global i32 0, align 4
@USDHI6_SOFT_RST_RESERVED = common dso_local global i32 0, align 4
@USDHI6_SOFT_RST_RESET = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usdhi6_host*)* @usdhi6_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usdhi6_reset(%struct.usdhi6_host* %0) #0 {
  %2 = alloca %struct.usdhi6_host*, align 8
  %3 = alloca i32, align 4
  store %struct.usdhi6_host* %0, %struct.usdhi6_host** %2, align 8
  %4 = load %struct.usdhi6_host*, %struct.usdhi6_host** %2, align 8
  %5 = load i32, i32* @USDHI6_SOFT_RST, align 4
  %6 = load i32, i32* @USDHI6_SOFT_RST_RESERVED, align 4
  %7 = call i32 @usdhi6_write(%struct.usdhi6_host* %4, i32 %5, i32 %6)
  %8 = call i32 (...) @cpu_relax()
  %9 = load %struct.usdhi6_host*, %struct.usdhi6_host** %2, align 8
  %10 = load i32, i32* @USDHI6_SOFT_RST, align 4
  %11 = load i32, i32* @USDHI6_SOFT_RST_RESERVED, align 4
  %12 = load i32, i32* @USDHI6_SOFT_RST_RESET, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @usdhi6_write(%struct.usdhi6_host* %9, i32 %10, i32 %13)
  store i32 1000, i32* %3, align 4
  br label %15

15:                                               ; preds = %27, %1
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load %struct.usdhi6_host*, %struct.usdhi6_host** %2, align 8
  %20 = load i32, i32* @USDHI6_SOFT_RST, align 4
  %21 = call i32 @usdhi6_read(%struct.usdhi6_host* %19, i32 %20)
  %22 = load i32, i32* @USDHI6_SOFT_RST_RESET, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %30

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %3, align 4
  br label %15

30:                                               ; preds = %25, %15
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @ETIMEDOUT, align 4
  %36 = sub nsw i32 0, %35
  br label %37

37:                                               ; preds = %34, %33
  %38 = phi i32 [ 0, %33 ], [ %36, %34 ]
  ret i32 %38
}

declare dso_local i32 @usdhi6_write(%struct.usdhi6_host*, i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @usdhi6_read(%struct.usdhi6_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
