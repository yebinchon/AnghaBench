; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c___fprog_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c___fprog_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_fprog_kern = type { i32, i32 }
%struct.sock_filter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock_fprog_kern**, i32, i8*)* @__fprog_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fprog_create(%struct.sock_fprog_kern** %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock_fprog_kern**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sock_fprog_kern*, align 8
  %9 = alloca %struct.sock_filter*, align 8
  store %struct.sock_fprog_kern** %0, %struct.sock_fprog_kern*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.sock_filter*
  store %struct.sock_filter* %11, %struct.sock_filter** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = urem i64 %13, 4
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %52

19:                                               ; preds = %3
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.sock_fprog_kern* @kmalloc(i32 8, i32 %20)
  store %struct.sock_fprog_kern* %21, %struct.sock_fprog_kern** %8, align 8
  %22 = load %struct.sock_fprog_kern*, %struct.sock_fprog_kern** %8, align 8
  %23 = icmp ne %struct.sock_fprog_kern* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %52

27:                                               ; preds = %19
  %28 = load %struct.sock_filter*, %struct.sock_filter** %9, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @kmemdup(%struct.sock_filter* %28, i32 %29, i32 %30)
  %32 = load %struct.sock_fprog_kern*, %struct.sock_fprog_kern** %8, align 8
  %33 = getelementptr inbounds %struct.sock_fprog_kern, %struct.sock_fprog_kern* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.sock_fprog_kern*, %struct.sock_fprog_kern** %8, align 8
  %35 = getelementptr inbounds %struct.sock_fprog_kern, %struct.sock_fprog_kern* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %27
  %39 = load %struct.sock_fprog_kern*, %struct.sock_fprog_kern** %8, align 8
  %40 = call i32 @kfree(%struct.sock_fprog_kern* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %52

43:                                               ; preds = %27
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = udiv i64 %45, 4
  %47 = trunc i64 %46 to i32
  %48 = load %struct.sock_fprog_kern*, %struct.sock_fprog_kern** %8, align 8
  %49 = getelementptr inbounds %struct.sock_fprog_kern, %struct.sock_fprog_kern* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.sock_fprog_kern*, %struct.sock_fprog_kern** %8, align 8
  %51 = load %struct.sock_fprog_kern**, %struct.sock_fprog_kern*** %5, align 8
  store %struct.sock_fprog_kern* %50, %struct.sock_fprog_kern** %51, align 8
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %43, %38, %24, %16
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.sock_fprog_kern* @kmalloc(i32, i32) #1

declare dso_local i32 @kmemdup(%struct.sock_filter*, i32, i32) #1

declare dso_local i32 @kfree(%struct.sock_fprog_kern*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
