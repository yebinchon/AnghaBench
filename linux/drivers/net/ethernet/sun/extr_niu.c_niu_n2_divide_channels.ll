; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_n2_divide_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_n2_divide_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu_parent = type { i32, i32*, i32*, i32 }

@.str = private unnamed_addr constant [44 x i8] c"niu%d: Port %u [%u RX chans] [%u TX chans]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu_parent*)* @niu_n2_divide_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_n2_divide_channels(%struct.niu_parent* %0) #0 {
  %2 = alloca %struct.niu_parent*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.niu_parent* %0, %struct.niu_parent** %2, align 8
  %5 = load %struct.niu_parent*, %struct.niu_parent** %2, align 8
  %6 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %48, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %51

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = sdiv i32 16, %13
  %15 = load %struct.niu_parent*, %struct.niu_parent** %2, align 8
  %16 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32 %14, i32* %20, align 4
  %21 = load i32, i32* %3, align 4
  %22 = sdiv i32 16, %21
  %23 = load %struct.niu_parent*, %struct.niu_parent** %2, align 8
  %24 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %22, i32* %28, align 4
  %29 = load %struct.niu_parent*, %struct.niu_parent** %2, align 8
  %30 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.niu_parent*, %struct.niu_parent** %2, align 8
  %34 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.niu_parent*, %struct.niu_parent** %2, align 8
  %41 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %39, i32 %46)
  br label %48

48:                                               ; preds = %12
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %8

51:                                               ; preds = %8
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
