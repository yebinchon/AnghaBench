; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_of.c_read_prop64_dword.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_of.c_read_prop64_dword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@cxl_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"%s: %#llx (%llu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.device_node*, i8*, i32*)* @read_prop64_dword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_prop64_dword(%struct.device_node* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.device_node*, %struct.device_node** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32* @of_get_property(%struct.device_node* %8, i8* %9, i32* null)
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32*, i32** %7, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @be64_to_cpu(i32 %16)
  %18 = load i32*, i32** %6, align 8
  store i32 %17, i32* %18, align 4
  br label %19

19:                                               ; preds = %13, %3
  %20 = load i64, i64* @cxl_verbose, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i8*, i8** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %28, i32 %30)
  br label %32

32:                                               ; preds = %25, %22, %19
  %33 = load i32*, i32** %7, align 8
  ret i32* %33
}

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @pr_info(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
