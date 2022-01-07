; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_flash.c_update_devicetree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_flash.c_update_devicetree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.update_nodes_workarea = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"ibm,update-nodes\00", align 1
@RTAS_UNKNOWN_SERVICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTAS_DATA_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NODE_ACTION_MASK = common dso_local global i32 0, align 4
@NODE_COUNT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"device reconfiguration - action: %#x, nodes: %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl*, i32)* @update_devicetree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_devicetree(%struct.cxl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.update_nodes_workarea*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.cxl* %0, %struct.cxl** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = call i32 @rtas_token(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @RTAS_UNKNOWN_SERVICE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %112

23:                                               ; preds = %2
  %24 = load i32, i32* @RTAS_DATA_BUF_SIZE, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kzalloc(i32 %24, i32 %25)
  store i8* %26, i8** %15, align 8
  %27 = load i8*, i8** %15, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %112

32:                                               ; preds = %23
  %33 = load i8*, i8** %15, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = bitcast i8* %34 to %struct.update_nodes_workarea*
  store %struct.update_nodes_workarea* %35, %struct.update_nodes_workarea** %6, align 8
  %36 = load %struct.cxl*, %struct.cxl** %4, align 8
  %37 = getelementptr inbounds %struct.cxl, %struct.cxl* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cpu_to_be64(i32 %40)
  %42 = load %struct.update_nodes_workarea*, %struct.update_nodes_workarea** %6, align 8
  %43 = getelementptr inbounds %struct.update_nodes_workarea, %struct.update_nodes_workarea* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %106, %32
  %45 = load i32, i32* %9, align 4
  %46 = load i8*, i8** %15, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @rcall(i32 %45, i8* %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %109

55:                                               ; preds = %51, %44
  %56 = load i8*, i8** %15, align 8
  %57 = bitcast i8* %56 to i32*
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  store i32* %58, i32** %12, align 8
  br label %59

59:                                               ; preds = %104, %55
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @be32_to_cpu(i32 %61)
  %63 = load i32, i32* @NODE_ACTION_MASK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %105

66:                                               ; preds = %59
  %67 = load i32*, i32** %12, align 8
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @be32_to_cpu(i32 %68)
  %70 = load i32, i32* @NODE_ACTION_MASK, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %7, align 4
  %72 = load i32*, i32** %12, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @be32_to_cpu(i32 %73)
  %75 = load i32, i32* @NODE_COUNT_MASK, align 4
  %76 = and i32 %74, %75
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @pr_devel(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i32*, i32** %12, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %12, align 8
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %101, %66
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %104

86:                                               ; preds = %82
  %87 = load i32*, i32** %12, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %12, align 8
  %89 = load i32, i32* %87, align 4
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %7, align 4
  switch i32 %90, label %100 [
    i32 129, label %91
    i32 128, label %92
    i32 130, label %96
  ]

91:                                               ; preds = %86
  br label %100

92:                                               ; preds = %86
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @update_node(i32 %93, i32 %94)
  br label %100

96:                                               ; preds = %86
  %97 = load i32*, i32** %12, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %12, align 8
  %99 = load i32, i32* %97, align 4
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %86, %96, %92, %91
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %82

104:                                              ; preds = %82
  br label %59

105:                                              ; preds = %59
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %10, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %44, label %109

109:                                              ; preds = %106, %54
  %110 = load i8*, i8** %15, align 8
  %111 = call i32 @kfree(i8* %110)
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %109, %29, %20
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @rtas_token(i8*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @rcall(i32, i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @pr_devel(i8*, i32, i32) #1

declare dso_local i32 @update_node(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
