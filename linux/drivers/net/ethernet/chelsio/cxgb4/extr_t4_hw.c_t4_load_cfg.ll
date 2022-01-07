; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_load_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_load_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SF_SEC_SIZE = common dso_local global i32 0, align 4
@FLASH_CFG_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cfg file too large, max is %u bytes\0A\00", align 1
@EFBIG = common dso_local global i32 0, align 4
@SF_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"config file %s failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"download\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_load_cfg(%struct.adapter* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.adapter*, %struct.adapter** %5, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.adapter*, %struct.adapter** %5, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = udiv i32 %18, %22
  store i32 %23, i32* %14, align 4
  %24 = load %struct.adapter*, %struct.adapter** %5, align 8
  %25 = call i32 @t4_flash_cfg_addr(%struct.adapter* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  br label %117

30:                                               ; preds = %3
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @SF_SEC_SIZE, align 4
  %34 = udiv i32 %32, %33
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @FLASH_CFG_MAX_SIZE, align 4
  %37 = icmp ugt i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load %struct.adapter*, %struct.adapter** %5, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @FLASH_CFG_MAX_SIZE, align 4
  %43 = call i32 (i32, i8*, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EFBIG, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %117

46:                                               ; preds = %30
  %47 = load i32, i32* @FLASH_CFG_MAX_SIZE, align 4
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @DIV_ROUND_UP(i32 %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load %struct.adapter*, %struct.adapter** %5, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %9, align 4
  %54 = add i32 %52, %53
  %55 = sub i32 %54, 1
  %56 = call i32 @t4_flash_erase_sectors(%struct.adapter* %50, i32 %51, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %46
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %46
  br label %102

63:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %97, %63
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %101

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %9, align 4
  %71 = sub i32 %69, %70
  %72 = load i32, i32* @SF_PAGE_SIZE, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %9, align 4
  %77 = sub i32 %75, %76
  store i32 %77, i32* %10, align 4
  br label %80

78:                                               ; preds = %68
  %79 = load i32, i32* @SF_PAGE_SIZE, align 4
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %78, %74
  %81 = load %struct.adapter*, %struct.adapter** %5, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @t4_write_flash(%struct.adapter* %81, i32 %82, i32 %83, i32* %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %102

89:                                               ; preds = %80
  %90 = load i32, i32* @SF_PAGE_SIZE, align 4
  %91 = load i32, i32* %12, align 4
  %92 = add i32 %91, %90
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* @SF_PAGE_SIZE, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %6, align 8
  br label %97

97:                                               ; preds = %89
  %98 = load i32, i32* @SF_PAGE_SIZE, align 4
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %9, align 4
  br label %64

101:                                              ; preds = %64
  br label %102

102:                                              ; preds = %101, %88, %62
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %102
  %106 = load %struct.adapter*, %struct.adapter** %5, align 8
  %107 = getelementptr inbounds %struct.adapter, %struct.adapter* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp eq i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %113 = load i32, i32* %8, align 4
  %114 = call i32 (i32, i8*, ...) @dev_err(i32 %108, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %112, i32 %113)
  br label %115

115:                                              ; preds = %105, %102
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %115, %38, %28
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @t4_flash_cfg_addr(%struct.adapter*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @t4_flash_erase_sectors(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t4_write_flash(%struct.adapter*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
