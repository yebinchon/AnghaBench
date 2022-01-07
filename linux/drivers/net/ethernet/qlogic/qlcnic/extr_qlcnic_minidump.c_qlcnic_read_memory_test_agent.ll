; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_minidump.c_qlcnic_read_memory_test_agent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_minidump.c_qlcnic_read_memory_test_agent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.__mem = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Unaligned memory addr:0x%x size:0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QLCNIC_MS_ADDR_LO = common dso_local global i32 0, align 4
@QLCNIC_MS_ADDR_HI = common dso_local global i32 0, align 4
@QLCNIC_MS_CTRL = common dso_local global i32 0, align 4
@QLCNIC_TA_START_ENABLE = common dso_local global i32 0, align 4
@MAX_CTL_CHECK = common dso_local global i32 0, align 4
@TA_CTL_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to read through agent\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@qlcnic_ms_read_data = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.__mem*, i32*, i32*)* @qlcnic_read_memory_test_agent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_read_memory_test_agent(%struct.qlcnic_adapter* %0, %struct.__mem* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca %struct.__mem*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %6, align 8
  store %struct.__mem* %1, %struct.__mem** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.__mem*, %struct.__mem** %7, align 8
  %16 = getelementptr inbounds %struct.__mem, %struct.__mem* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = load %struct.__mem*, %struct.__mem** %7, align 8
  %19 = getelementptr inbounds %struct.__mem, %struct.__mem* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = and i32 %21, 15
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %14, align 4
  %26 = srem i32 %25, 16
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %24, %4
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %30 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @dev_info(i32* %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  store i32 0, i32* %5, align 4
  br label %130

39:                                               ; preds = %24
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %41 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  br label %45

45:                                               ; preds = %113, %39
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %120

48:                                               ; preds = %45
  %49 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %50 = load i32, i32* @QLCNIC_MS_ADDR_LO, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @qlcnic_ind_wr(%struct.qlcnic_adapter* %49, i32 %50, i32 %51)
  %53 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %54 = load i32, i32* @QLCNIC_MS_ADDR_HI, align 4
  %55 = call i32 @qlcnic_ind_wr(%struct.qlcnic_adapter* %53, i32 %54, i32 0)
  %56 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %57 = load i32, i32* @QLCNIC_MS_CTRL, align 4
  %58 = load i32, i32* @QLCNIC_TA_START_ENABLE, align 4
  %59 = call i32 @qlcnic_ind_wr(%struct.qlcnic_adapter* %56, i32 %57, i32 %58)
  store i32 0, i32* %13, align 4
  br label %60

60:                                               ; preds = %74, %48
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @MAX_CTL_CHECK, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %66 = load i32, i32* @QLCNIC_MS_CTRL, align 4
  %67 = call i32 @qlcnic_ind_rd(%struct.qlcnic_adapter* %65, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @TA_CTL_BUSY, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %64
  br label %77

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  br label %60

77:                                               ; preds = %72, %60
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @MAX_CTL_CHECK, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %77
  %82 = call i64 (...) @printk_ratelimit()
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %86 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = call i32 @dev_err(i32* %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  %92 = load i32*, i32** %9, align 8
  store i32 %91, i32* %92, align 4
  br label %121

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93, %77
  store i32 0, i32* %13, align 4
  br label %95

95:                                               ; preds = %110, %94
  %96 = load i32, i32* %13, align 4
  %97 = icmp slt i32 %96, 4
  br i1 %97, label %98, label %113

98:                                               ; preds = %95
  %99 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %100 = load i32*, i32** @qlcnic_ms_read_data, align 8
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @qlcnic_ind_rd(%struct.qlcnic_adapter* %99, i32 %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @cpu_to_le32(i32 %106)
  %108 = load i32*, i32** %8, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %8, align 8
  store i32 %107, i32* %108, align 4
  br label %110

110:                                              ; preds = %98
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %13, align 4
  br label %95

113:                                              ; preds = %95
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 16
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %14, align 4
  %117 = sub nsw i32 %116, 16
  store i32 %117, i32* %14, align 4
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 16
  store i32* %119, i32** %9, align 8
  br label %45

120:                                              ; preds = %45
  br label %121

121:                                              ; preds = %120, %84
  %122 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %123 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load %struct.__mem*, %struct.__mem** %7, align 8
  %128 = getelementptr inbounds %struct.__mem, %struct.__mem* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %121, %28
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @qlcnic_ind_wr(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @qlcnic_ind_rd(%struct.qlcnic_adapter*, i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
