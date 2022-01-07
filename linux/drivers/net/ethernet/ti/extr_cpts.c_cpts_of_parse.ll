; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpts.c_cpts_of_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpts.c_cpts_of_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpts = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.device_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cpts_clock_mult\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"cpts_clock_shift\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"CPTS: Missing property in the DT.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpts*, %struct.device_node*)* @cpts_of_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpts_of_parse(%struct.cpts* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpts*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.cpts* %0, %struct.cpts** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = call i32 @of_property_read_u32(%struct.device_node* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %7)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %7, align 8
  %15 = load %struct.cpts*, %struct.cpts** %4, align 8
  %16 = getelementptr inbounds %struct.cpts, %struct.cpts* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i8* %14, i8** %17, align 8
  br label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = call i32 @of_property_read_u32(%struct.device_node* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %7)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.cpts*, %struct.cpts** %4, align 8
  %25 = getelementptr inbounds %struct.cpts, %struct.cpts* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i8* %23, i8** %26, align 8
  br label %27

27:                                               ; preds = %22, %18
  %28 = load %struct.cpts*, %struct.cpts** %4, align 8
  %29 = getelementptr inbounds %struct.cpts, %struct.cpts* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.cpts*, %struct.cpts** %4, align 8
  %35 = getelementptr inbounds %struct.cpts, %struct.cpts* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %33, %27
  %40 = load %struct.cpts*, %struct.cpts** %4, align 8
  %41 = getelementptr inbounds %struct.cpts, %struct.cpts* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %39
  %46 = load %struct.cpts*, %struct.cpts** %4, align 8
  %47 = getelementptr inbounds %struct.cpts, %struct.cpts* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %33
  br label %56

52:                                               ; preds = %45, %39
  %53 = load %struct.cpts*, %struct.cpts** %4, align 8
  %54 = load %struct.device_node*, %struct.device_node** %5, align 8
  %55 = call i32 @cpts_of_mux_clk_setup(%struct.cpts* %53, %struct.device_node* %54)
  store i32 %55, i32* %3, align 4
  br label %62

56:                                               ; preds = %51
  %57 = load %struct.cpts*, %struct.cpts** %4, align 8
  %58 = getelementptr inbounds %struct.cpts, %struct.cpts* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %56, %52
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @cpts_of_mux_clk_setup(%struct.cpts*, %struct.device_node*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
