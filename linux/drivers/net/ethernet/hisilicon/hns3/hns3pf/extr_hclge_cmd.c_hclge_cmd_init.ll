; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_cmd.c_hclge_cmd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_cmd.c_hclge_cmd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, %struct.TYPE_10__*, i32, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.TYPE_7__ = type { i32, i64, i64 }

@HCLGE_STATE_CMD_DISABLE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"firmware version query failed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"The firmware version is %lu.%lu.%lu.%lu\0A\00", align 1
@HNAE3_FW_VERSION_BYTE3_MASK = common dso_local global i32 0, align 4
@HNAE3_FW_VERSION_BYTE3_SHIFT = common dso_local global i32 0, align 4
@HNAE3_FW_VERSION_BYTE2_MASK = common dso_local global i32 0, align 4
@HNAE3_FW_VERSION_BYTE2_SHIFT = common dso_local global i32 0, align 4
@HNAE3_FW_VERSION_BYTE1_MASK = common dso_local global i32 0, align 4
@HNAE3_FW_VERSION_BYTE1_SHIFT = common dso_local global i32 0, align 4
@HNAE3_FW_VERSION_BYTE0_MASK = common dso_local global i32 0, align 4
@HNAE3_FW_VERSION_BYTE0_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Firmware compatible features not enabled(%d).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hclge_cmd_init(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  %6 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_bh(i32* %10)
  %12 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %19 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %24 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %29 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %34 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %39 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %38, i32 0, i32 3
  %40 = call i32 @hclge_cmd_init_regs(%struct.TYPE_11__* %39)
  %41 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %42 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock(i32* %45)
  %47 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %48 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock_bh(i32* %51)
  %53 = load i32, i32* @HCLGE_STATE_CMD_DISABLE, align 4
  %54 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %55 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %54, i32 0, i32 0
  %56 = call i32 @clear_bit(i32 %53, i32* %55)
  %57 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %58 = call i64 @hclge_is_reset_pending(%struct.hclge_dev* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %1
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %113

63:                                               ; preds = %1
  %64 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %65 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %64, i32 0, i32 3
  %66 = call i32 @hclge_cmd_query_firmware_version(%struct.TYPE_11__* %65, i32* %4)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %71 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %70, i32 0, i32 1
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %113

76:                                               ; preds = %63
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %79 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %81 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %80, i32 0, i32 1
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @HNAE3_FW_VERSION_BYTE3_MASK, align 4
  %86 = load i32, i32* @HNAE3_FW_VERSION_BYTE3_SHIFT, align 4
  %87 = call i32 @hnae3_get_field(i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @HNAE3_FW_VERSION_BYTE2_MASK, align 4
  %90 = load i32, i32* @HNAE3_FW_VERSION_BYTE2_SHIFT, align 4
  %91 = call i32 @hnae3_get_field(i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @HNAE3_FW_VERSION_BYTE1_MASK, align 4
  %94 = load i32, i32* @HNAE3_FW_VERSION_BYTE1_SHIFT, align 4
  %95 = call i32 @hnae3_get_field(i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @HNAE3_FW_VERSION_BYTE0_MASK, align 4
  %98 = load i32, i32* @HNAE3_FW_VERSION_BYTE0_SHIFT, align 4
  %99 = call i32 @hnae3_get_field(i32 %96, i32 %97, i32 %98)
  %100 = call i32 @dev_info(i32* %83, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %91, i32 %95, i32 %99)
  %101 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %102 = call i32 @hclge_firmware_compat_config(%struct.hclge_dev* %101)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %76
  %106 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %107 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %106, i32 0, i32 1
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @dev_warn(i32* %109, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %105, %76
  store i32 0, i32* %2, align 4
  br label %119

113:                                              ; preds = %69, %60
  %114 = load i32, i32* @HCLGE_STATE_CMD_DISABLE, align 4
  %115 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %116 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %115, i32 0, i32 0
  %117 = call i32 @set_bit(i32 %114, i32* %116)
  %118 = load i32, i32* %5, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %113, %112
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hclge_cmd_init_regs(%struct.TYPE_11__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @hclge_is_reset_pending(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_cmd_query_firmware_version(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @hnae3_get_field(i32, i32, i32) #1

declare dso_local i32 @hclge_firmware_compat_config(%struct.hclge_dev*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
