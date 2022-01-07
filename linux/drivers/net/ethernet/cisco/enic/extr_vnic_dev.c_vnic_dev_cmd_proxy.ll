; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_cmd_proxy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_cmd_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev = type { i32*, i32, i32 (%struct.vnic_dev*, i32, i32)* }

@STAT_ERROR = common dso_local global i32 0, align 4
@ERR_ECMDUNKNOWN = common dso_local global i32 0, align 4
@CMD_CAPABILITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Error %d proxy devcmd %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnic_dev*, i32, i32, i8**, i8**, i32)* @vnic_dev_cmd_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnic_dev_cmd_proxy(%struct.vnic_dev* %0, i32 %1, i32 %2, i8** %3, i8** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vnic_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vnic_dev* %0, %struct.vnic_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.vnic_dev*, %struct.vnic_dev** %8, align 8
  %17 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @memset(i32* %18, i32 0, i32 8)
  %20 = load %struct.vnic_dev*, %struct.vnic_dev** %8, align 8
  %21 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.vnic_dev*, %struct.vnic_dev** %8, align 8
  %24 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %22, i32* %26, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.vnic_dev*, %struct.vnic_dev** %8, align 8
  %29 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %27, i32* %31, align 4
  %32 = load i8**, i8*** %11, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.vnic_dev*, %struct.vnic_dev** %8, align 8
  %36 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32 %34, i32* %38, align 4
  %39 = load i8**, i8*** %12, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct.vnic_dev*, %struct.vnic_dev** %8, align 8
  %43 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  store i32 %41, i32* %45, align 4
  %46 = load %struct.vnic_dev*, %struct.vnic_dev** %8, align 8
  %47 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %46, i32 0, i32 2
  %48 = load i32 (%struct.vnic_dev*, i32, i32)*, i32 (%struct.vnic_dev*, i32, i32)** %47, align 8
  %49 = load %struct.vnic_dev*, %struct.vnic_dev** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 %48(%struct.vnic_dev* %49, i32 %50, i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %6
  %56 = load i32, i32* %15, align 4
  store i32 %56, i32* %7, align 4
  br label %105

57:                                               ; preds = %6
  %58 = load %struct.vnic_dev*, %struct.vnic_dev** %8, align 8
  %59 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* @STAT_ERROR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %57
  %68 = load %struct.vnic_dev*, %struct.vnic_dev** %8, align 8
  %69 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* @ERR_ECMDUNKNOWN, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @CMD_CAPABILITY, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76, %67
  %81 = load %struct.vnic_dev*, %struct.vnic_dev** %8, align 8
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @_CMD_N(i32 %83)
  %85 = call i32 @vdev_neterr(%struct.vnic_dev* %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %84)
  br label %86

86:                                               ; preds = %80, %76
  %87 = load i32, i32* %15, align 4
  store i32 %87, i32* %7, align 4
  br label %105

88:                                               ; preds = %57
  %89 = load %struct.vnic_dev*, %struct.vnic_dev** %8, align 8
  %90 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = load i8**, i8*** %11, align 8
  store i8* %95, i8** %96, align 8
  %97 = load %struct.vnic_dev*, %struct.vnic_dev** %8, align 8
  %98 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i8*
  %104 = load i8**, i8*** %12, align 8
  store i8* %103, i8** %104, align 8
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %88, %86, %55
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @vdev_neterr(%struct.vnic_dev*, i8*, i32, i32) #1

declare dso_local i32 @_CMD_N(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
