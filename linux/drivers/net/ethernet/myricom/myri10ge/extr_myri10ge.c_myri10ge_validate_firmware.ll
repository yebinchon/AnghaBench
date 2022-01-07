; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_validate_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_validate_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_priv = type { i8*, i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.mcp_gen_header = type { i32, i32 }

@MCP_TYPE_ETH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Bad firmware type: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@MXGEFW_VERSION_MAJOR = common dso_local global i64 0, align 8
@MXGEFW_VERSION_MINOR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Found firmware version %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Driver needs %d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.myri10ge_priv*, %struct.mcp_gen_header*)* @myri10ge_validate_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myri10ge_validate_firmware(%struct.myri10ge_priv* %0, %struct.mcp_gen_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.myri10ge_priv*, align 8
  %5 = alloca %struct.mcp_gen_header*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.myri10ge_priv* %0, %struct.myri10ge_priv** %4, align 8
  store %struct.mcp_gen_header* %1, %struct.mcp_gen_header** %5, align 8
  %7 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %8 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.mcp_gen_header*, %struct.mcp_gen_header** %5, align 8
  %12 = getelementptr inbounds %struct.mcp_gen_header, %struct.mcp_gen_header* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @ntohl(i32 %13)
  %15 = load i64, i64* @MCP_TYPE_ETH, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = load %struct.mcp_gen_header*, %struct.mcp_gen_header** %5, align 8
  %20 = getelementptr inbounds %struct.mcp_gen_header, %struct.mcp_gen_header* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ntohl(i32 %21)
  %23 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %73

26:                                               ; preds = %2
  %27 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %28 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.mcp_gen_header*, %struct.mcp_gen_header** %5, align 8
  %31 = getelementptr inbounds %struct.mcp_gen_header, %struct.mcp_gen_header* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strncpy(i8* %29, i32 %32, i32 8)
  %34 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %35 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 7
  store i8 0, i8* %37, align 1
  %38 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %39 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %42 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %41, i32 0, i32 1
  %43 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %44 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %43, i32 0, i32 2
  %45 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %46 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %45, i32 0, i32 3
  %47 = call i32 @sscanf(i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64* %42, i64* %44, i32* %46)
  %48 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %49 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MXGEFW_VERSION_MAJOR, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %26
  %54 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %55 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MXGEFW_VERSION_MINOR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %72, label %59

59:                                               ; preds = %53, %26
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %62 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = ptrtoint i8* %63 to i64
  %65 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %64)
  %66 = load %struct.device*, %struct.device** %6, align 8
  %67 = load i64, i64* @MXGEFW_VERSION_MAJOR, align 8
  %68 = load i64, i64* @MXGEFW_VERSION_MINOR, align 8
  %69 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %67, i64 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %73

72:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %59, %17
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, ...) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
