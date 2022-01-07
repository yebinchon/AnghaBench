; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_adopt_running_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_adopt_running_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_priv = type { i64, i32, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.mcp_gen_header = type { i32 }

@MCP_HEADER_PTR_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Running firmware has bad header offset (%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Adopting fw %d.%d.%d: working around rx filter bug\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.myri10ge_priv*)* @myri10ge_adopt_running_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myri10ge_adopt_running_firmware(%struct.myri10ge_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.myri10ge_priv*, align 8
  %4 = alloca %struct.mcp_gen_header*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.myri10ge_priv* %0, %struct.myri10ge_priv** %3, align 8
  %9 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %10 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %9, i32 0, i32 6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %5, align 8
  store i64 4, i64* %6, align 8
  %13 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %14 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MCP_HEADER_PTR_OFFSET, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  %19 = call i64 @swab32(i32 %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = and i64 %20, 3
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %1
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %24, 4
  %26 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %27 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ugt i64 %25, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %23, %1
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %93

37:                                               ; preds = %23
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.mcp_gen_header* @kmalloc(i64 4, i32 %38)
  store %struct.mcp_gen_header* %39, %struct.mcp_gen_header** %4, align 8
  %40 = load %struct.mcp_gen_header*, %struct.mcp_gen_header** %4, align 8
  %41 = icmp eq %struct.mcp_gen_header* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %93

45:                                               ; preds = %37
  %46 = load %struct.mcp_gen_header*, %struct.mcp_gen_header** %4, align 8
  %47 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %48 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %49, %50
  %52 = call i32 @memcpy_fromio(%struct.mcp_gen_header* %46, i64 %51, i64 4)
  %53 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %54 = load %struct.mcp_gen_header*, %struct.mcp_gen_header** %4, align 8
  %55 = call i32 @myri10ge_validate_firmware(%struct.myri10ge_priv* %53, %struct.mcp_gen_header* %54)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.mcp_gen_header*, %struct.mcp_gen_header** %4, align 8
  %57 = call i32 @kfree(%struct.mcp_gen_header* %56)
  %58 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %59 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %91

62:                                               ; preds = %45
  %63 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %64 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 4
  br i1 %66, label %67, label %91

67:                                               ; preds = %62
  %68 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %69 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = icmp sge i32 %70, 4
  br i1 %71, label %72, label %91

72:                                               ; preds = %67
  %73 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %74 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = icmp sle i32 %75, 11
  br i1 %76, label %77, label %91

77:                                               ; preds = %72
  %78 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %79 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %78, i32 0, i32 4
  store i32 1, i32* %79, align 4
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %82 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %85 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %88 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @dev_warn(%struct.device* %80, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %77, %72, %67, %62, %45
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %42, %30
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i64 @swab32(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local %struct.mcp_gen_header* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy_fromio(%struct.mcp_gen_header*, i64, i64) #1

declare dso_local i32 @myri10ge_validate_firmware(%struct.myri10ge_priv*, %struct.mcp_gen_header*) #1

declare dso_local i32 @kfree(%struct.mcp_gen_header*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
