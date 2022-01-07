; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_register_sfp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_register_sfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.fwnode_reference_args = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"sfp\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"unable to parse \22sfp\22 node: %d\0A\00", align 1
@sfp_phylink_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phylink*, %struct.fwnode_handle*)* @phylink_register_sfp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phylink_register_sfp(%struct.phylink* %0, %struct.fwnode_handle* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phylink*, align 8
  %5 = alloca %struct.fwnode_handle*, align 8
  %6 = alloca %struct.fwnode_reference_args, align 4
  %7 = alloca i32, align 4
  store %struct.phylink* %0, %struct.phylink** %4, align 8
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %5, align 8
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %9 = icmp ne %struct.fwnode_handle* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

11:                                               ; preds = %2
  %12 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %13 = call i32 @fwnode_property_get_reference_args(%struct.fwnode_handle* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null, i32 0, i32 0, %struct.fwnode_reference_args* %6)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %42

22:                                               ; preds = %16
  %23 = load %struct.phylink*, %struct.phylink** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @phylink_err(%struct.phylink* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %42

27:                                               ; preds = %11
  %28 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.phylink*, %struct.phylink** %4, align 8
  %31 = call i32 @sfp_register_upstream(i32 %29, %struct.phylink* %30, i32* @sfp_phylink_ops)
  %32 = load %struct.phylink*, %struct.phylink** %4, align 8
  %33 = getelementptr inbounds %struct.phylink, %struct.phylink* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.phylink*, %struct.phylink** %4, align 8
  %35 = getelementptr inbounds %struct.phylink, %struct.phylink* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %27
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %38, %22, %21, %10
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @fwnode_property_get_reference_args(%struct.fwnode_handle*, i8*, i32*, i32, i32, %struct.fwnode_reference_args*) #1

declare dso_local i32 @phylink_err(%struct.phylink*, i8*, i32) #1

declare dso_local i32 @sfp_register_upstream(i32, %struct.phylink*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
