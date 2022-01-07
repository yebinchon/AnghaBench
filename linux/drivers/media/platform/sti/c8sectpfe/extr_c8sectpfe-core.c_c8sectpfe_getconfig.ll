; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/c8sectpfe/extr_c8sectpfe-core.c_c8sectpfe_getconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/c8sectpfe/extr_c8sectpfe-core.c_c8sectpfe_getconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c8sectpfei = type { i32, i64, %struct.c8sectpfe_hw }
%struct.c8sectpfe_hw = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@SYS_CFG_NUM_IB = common dso_local global i64 0, align 8
@SYS_CFG_NUM_MIB = common dso_local global i64 0, align 8
@SYS_CFG_NUM_SWTS = common dso_local global i64 0, align 8
@SYS_CFG_NUM_TSOUT = common dso_local global i64 0, align 8
@SYS_CFG_NUM_CCSC = common dso_local global i64 0, align 8
@SYS_CFG_NUM_RAM = common dso_local global i64 0, align 8
@SYS_CFG_NUM_TP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"C8SECTPFE hw supports the following:\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Input Blocks: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Merged Input Blocks: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Software Transport Stream Inputs: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Transport Stream Output: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Cable Card Converter: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"RAMs supported by C8SECTPFE: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Tango TPs supported by C8SECTPFE: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c8sectpfei*)* @c8sectpfe_getconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c8sectpfe_getconfig(%struct.c8sectpfei* %0) #0 {
  %2 = alloca %struct.c8sectpfei*, align 8
  %3 = alloca %struct.c8sectpfe_hw*, align 8
  store %struct.c8sectpfei* %0, %struct.c8sectpfei** %2, align 8
  %4 = load %struct.c8sectpfei*, %struct.c8sectpfei** %2, align 8
  %5 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %4, i32 0, i32 2
  store %struct.c8sectpfe_hw* %5, %struct.c8sectpfe_hw** %3, align 8
  %6 = load %struct.c8sectpfei*, %struct.c8sectpfei** %2, align 8
  %7 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SYS_CFG_NUM_IB, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i8* @readl(i64 %10)
  %12 = load %struct.c8sectpfe_hw*, %struct.c8sectpfe_hw** %3, align 8
  %13 = getelementptr inbounds %struct.c8sectpfe_hw, %struct.c8sectpfe_hw* %12, i32 0, i32 6
  store i8* %11, i8** %13, align 8
  %14 = load %struct.c8sectpfei*, %struct.c8sectpfei** %2, align 8
  %15 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SYS_CFG_NUM_MIB, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i8* @readl(i64 %18)
  %20 = load %struct.c8sectpfe_hw*, %struct.c8sectpfe_hw** %3, align 8
  %21 = getelementptr inbounds %struct.c8sectpfe_hw, %struct.c8sectpfe_hw* %20, i32 0, i32 5
  store i8* %19, i8** %21, align 8
  %22 = load %struct.c8sectpfei*, %struct.c8sectpfei** %2, align 8
  %23 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SYS_CFG_NUM_SWTS, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i8* @readl(i64 %26)
  %28 = load %struct.c8sectpfe_hw*, %struct.c8sectpfe_hw** %3, align 8
  %29 = getelementptr inbounds %struct.c8sectpfe_hw, %struct.c8sectpfe_hw* %28, i32 0, i32 4
  store i8* %27, i8** %29, align 8
  %30 = load %struct.c8sectpfei*, %struct.c8sectpfei** %2, align 8
  %31 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SYS_CFG_NUM_TSOUT, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i8* @readl(i64 %34)
  %36 = load %struct.c8sectpfe_hw*, %struct.c8sectpfe_hw** %3, align 8
  %37 = getelementptr inbounds %struct.c8sectpfe_hw, %struct.c8sectpfe_hw* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load %struct.c8sectpfei*, %struct.c8sectpfei** %2, align 8
  %39 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SYS_CFG_NUM_CCSC, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i8* @readl(i64 %42)
  %44 = load %struct.c8sectpfe_hw*, %struct.c8sectpfe_hw** %3, align 8
  %45 = getelementptr inbounds %struct.c8sectpfe_hw, %struct.c8sectpfe_hw* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.c8sectpfei*, %struct.c8sectpfei** %2, align 8
  %47 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SYS_CFG_NUM_RAM, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i8* @readl(i64 %50)
  %52 = load %struct.c8sectpfe_hw*, %struct.c8sectpfe_hw** %3, align 8
  %53 = getelementptr inbounds %struct.c8sectpfe_hw, %struct.c8sectpfe_hw* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.c8sectpfei*, %struct.c8sectpfei** %2, align 8
  %55 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SYS_CFG_NUM_TP, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i8* @readl(i64 %58)
  %60 = load %struct.c8sectpfe_hw*, %struct.c8sectpfe_hw** %3, align 8
  %61 = getelementptr inbounds %struct.c8sectpfe_hw, %struct.c8sectpfe_hw* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  %62 = load %struct.c8sectpfei*, %struct.c8sectpfei** %2, align 8
  %63 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i32, i8*, ...) @dev_info(i32 %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.c8sectpfei*, %struct.c8sectpfei** %2, align 8
  %67 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.c8sectpfe_hw*, %struct.c8sectpfe_hw** %3, align 8
  %70 = getelementptr inbounds %struct.c8sectpfe_hw, %struct.c8sectpfe_hw* %69, i32 0, i32 6
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 (i32, i8*, ...) @dev_info(i32 %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %71)
  %73 = load %struct.c8sectpfei*, %struct.c8sectpfei** %2, align 8
  %74 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.c8sectpfe_hw*, %struct.c8sectpfe_hw** %3, align 8
  %77 = getelementptr inbounds %struct.c8sectpfe_hw, %struct.c8sectpfe_hw* %76, i32 0, i32 5
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (i32, i8*, ...) @dev_info(i32 %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %78)
  %80 = load %struct.c8sectpfei*, %struct.c8sectpfei** %2, align 8
  %81 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.c8sectpfe_hw*, %struct.c8sectpfe_hw** %3, align 8
  %84 = getelementptr inbounds %struct.c8sectpfe_hw, %struct.c8sectpfe_hw* %83, i32 0, i32 4
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 (i32, i8*, ...) @dev_info(i32 %82, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %85)
  %87 = load %struct.c8sectpfei*, %struct.c8sectpfei** %2, align 8
  %88 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.c8sectpfe_hw*, %struct.c8sectpfe_hw** %3, align 8
  %91 = getelementptr inbounds %struct.c8sectpfe_hw, %struct.c8sectpfe_hw* %90, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 (i32, i8*, ...) @dev_info(i32 %89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %92)
  %94 = load %struct.c8sectpfei*, %struct.c8sectpfei** %2, align 8
  %95 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.c8sectpfe_hw*, %struct.c8sectpfe_hw** %3, align 8
  %98 = getelementptr inbounds %struct.c8sectpfe_hw, %struct.c8sectpfe_hw* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 (i32, i8*, ...) @dev_info(i32 %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %99)
  %101 = load %struct.c8sectpfei*, %struct.c8sectpfei** %2, align 8
  %102 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.c8sectpfe_hw*, %struct.c8sectpfe_hw** %3, align 8
  %105 = getelementptr inbounds %struct.c8sectpfe_hw, %struct.c8sectpfe_hw* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 (i32, i8*, ...) @dev_info(i32 %103, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %106)
  %108 = load %struct.c8sectpfei*, %struct.c8sectpfei** %2, align 8
  %109 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.c8sectpfe_hw*, %struct.c8sectpfe_hw** %3, align 8
  %112 = getelementptr inbounds %struct.c8sectpfe_hw, %struct.c8sectpfe_hw* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 (i32, i8*, ...) @dev_info(i32 %110, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %113)
  ret void
}

declare dso_local i8* @readl(i64) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
