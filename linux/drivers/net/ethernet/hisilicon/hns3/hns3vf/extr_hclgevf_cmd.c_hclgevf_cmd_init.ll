; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_cmd.c_hclgevf_cmd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_cmd.c_hclgevf_cmd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { i32, %struct.TYPE_12__*, i32, %struct.TYPE_13__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i64, i64 }
%struct.TYPE_9__ = type { i32, i64, i64 }
%struct.TYPE_8__ = type { i32, i64, i64, %struct.hclgevf_dev* }

@HCLGEVF_STATE_CMD_DISABLE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed(%d) to query firmware version\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"The firmware version is %lu.%lu.%lu.%lu\0A\00", align 1
@HNAE3_FW_VERSION_BYTE3_MASK = common dso_local global i32 0, align 4
@HNAE3_FW_VERSION_BYTE3_SHIFT = common dso_local global i32 0, align 4
@HNAE3_FW_VERSION_BYTE2_MASK = common dso_local global i32 0, align 4
@HNAE3_FW_VERSION_BYTE2_SHIFT = common dso_local global i32 0, align 4
@HNAE3_FW_VERSION_BYTE1_MASK = common dso_local global i32 0, align 4
@HNAE3_FW_VERSION_BYTE1_SHIFT = common dso_local global i32 0, align 4
@HNAE3_FW_VERSION_BYTE0_MASK = common dso_local global i32 0, align 4
@HNAE3_FW_VERSION_BYTE0_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hclgevf_cmd_init(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclgevf_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %3, align 8
  %6 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_bh(i32* %10)
  %12 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %19 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %20 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 3
  store %struct.hclgevf_dev* %18, %struct.hclgevf_dev** %21, align 8
  %22 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %23 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %26 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %29 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = call i32 @atomic_set(i32* %30, i32 0)
  %32 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %33 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %38 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %43 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %48 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %53 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %52, i32 0, i32 3
  %54 = call i32 @hclgevf_cmd_init_regs(%struct.TYPE_13__* %53)
  %55 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %56 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %62 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock_bh(i32* %65)
  %67 = load i32, i32* @HCLGEVF_STATE_CMD_DISABLE, align 4
  %68 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %69 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %68, i32 0, i32 0
  %70 = call i32 @clear_bit(i32 %67, i32* %69)
  %71 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %72 = call i64 @hclgevf_is_reset_pending(%struct.hclgevf_dev* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %1
  %75 = load i32, i32* @EBUSY, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %115

77:                                               ; preds = %1
  %78 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %79 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %78, i32 0, i32 3
  %80 = call i32 @hclgevf_cmd_query_firmware_version(%struct.TYPE_13__* %79, i32* %4)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %85 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %84, i32 0, i32 1
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %115

90:                                               ; preds = %77
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %93 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %95 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %94, i32 0, i32 1
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @HNAE3_FW_VERSION_BYTE3_MASK, align 4
  %100 = load i32, i32* @HNAE3_FW_VERSION_BYTE3_SHIFT, align 4
  %101 = call i32 @hnae3_get_field(i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @HNAE3_FW_VERSION_BYTE2_MASK, align 4
  %104 = load i32, i32* @HNAE3_FW_VERSION_BYTE2_SHIFT, align 4
  %105 = call i32 @hnae3_get_field(i32 %102, i32 %103, i32 %104)
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @HNAE3_FW_VERSION_BYTE1_MASK, align 4
  %108 = load i32, i32* @HNAE3_FW_VERSION_BYTE1_SHIFT, align 4
  %109 = call i32 @hnae3_get_field(i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @HNAE3_FW_VERSION_BYTE0_MASK, align 4
  %112 = load i32, i32* @HNAE3_FW_VERSION_BYTE0_SHIFT, align 4
  %113 = call i32 @hnae3_get_field(i32 %110, i32 %111, i32 %112)
  %114 = call i32 @dev_info(i32* %97, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %105, i32 %109, i32 %113)
  store i32 0, i32* %2, align 4
  br label %121

115:                                              ; preds = %83, %74
  %116 = load i32, i32* @HCLGEVF_STATE_CMD_DISABLE, align 4
  %117 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %118 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %117, i32 0, i32 0
  %119 = call i32 @set_bit(i32 %116, i32* %118)
  %120 = load i32, i32* %5, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %115, %90
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @hclgevf_cmd_init_regs(%struct.TYPE_13__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @hclgevf_is_reset_pending(%struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_cmd_query_firmware_version(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @hnae3_get_field(i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
