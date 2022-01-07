; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_mvebu-devbus.c_get_timing_param_ps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_mvebu-devbus.c_get_timing_param_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devbus = type { i32, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"%pOF has no '%s' property\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: %u ps -> 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devbus*, %struct.device_node*, i8*, i32*)* @get_timing_param_ps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_timing_param_ps(%struct.devbus* %0, %struct.device_node* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.devbus*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.devbus* %0, %struct.devbus** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.device_node*, %struct.device_node** %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @of_property_read_u32(%struct.device_node* %12, i8* %13, i32* %10)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load %struct.devbus*, %struct.devbus** %6, align 8
  %19 = getelementptr inbounds %struct.devbus, %struct.devbus* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.device_node*, %struct.device_node** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.device_node* %21, i8* %22)
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %5, align 4
  br label %45

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.devbus*, %struct.devbus** %6, align 8
  %28 = getelementptr inbounds %struct.devbus, %struct.devbus* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  %31 = sub nsw i32 %30, 1
  %32 = load %struct.devbus*, %struct.devbus** %6, align 8
  %33 = getelementptr inbounds %struct.devbus, %struct.devbus* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %31, %34
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.devbus*, %struct.devbus** %6, align 8
  %38 = getelementptr inbounds %struct.devbus, %struct.devbus* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_dbg(i32 %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %40, i32 %41, i32 %43)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %25, %17
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.device_node*, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
