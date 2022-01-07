; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at86rf230_local = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@IRQ_ACTIVE_HIGH = common dso_local global i32 0, align 4
@STATE_FORCE_TRX_OFF = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@IRQ_ACTIVE_LOW = common dso_local global i32 0, align 4
@SR_IRQ_POLARITY = common dso_local global i32 0, align 4
@SR_RX_SAFE_MODE = common dso_local global i32 0, align 4
@SR_IRQ_MASK = common dso_local global i32 0, align 4
@IRQ_TRX_END = common dso_local global i32 0, align 4
@SR_IRQ_MASK_MODE = common dso_local global i32 0, align 4
@SR_CSMA_SEED_0 = common dso_local global i32 0, align 4
@SR_CSMA_SEED_1 = common dso_local global i32 0, align 4
@SR_CLKM_SHA_SEL = common dso_local global i32 0, align 4
@SR_CLKM_CTRL = common dso_local global i32 0, align 4
@SR_XTAL_TRIM = common dso_local global i32 0, align 4
@SR_DVDD_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"DVDD error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SR_SLOTTED_OPERATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at86rf230_local*, i32)* @at86rf230_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at86rf230_hw_init(%struct.at86rf230_local* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.at86rf230_local*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  store %struct.at86rf230_local* %0, %struct.at86rf230_local** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @IRQ_ACTIVE_HIGH, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %13 = load i32, i32* @STATE_FORCE_TRX_OFF, align 4
  %14 = call i32 @at86rf230_sync_state_change(%struct.at86rf230_local* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %153

19:                                               ; preds = %2
  %20 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %21 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @irq_get_trigger_type(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %19
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %19
  %34 = load i32, i32* @IRQ_ACTIVE_LOW, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %37 = load i32, i32* @SR_IRQ_POLARITY, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @at86rf230_write_subreg(%struct.at86rf230_local* %36, i32 %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %153

44:                                               ; preds = %35
  %45 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %46 = load i32, i32* @SR_RX_SAFE_MODE, align 4
  %47 = call i32 @at86rf230_write_subreg(%struct.at86rf230_local* %45, i32 %46, i32 1)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %153

52:                                               ; preds = %44
  %53 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %54 = load i32, i32* @SR_IRQ_MASK, align 4
  %55 = load i32, i32* @IRQ_TRX_END, align 4
  %56 = call i32 @at86rf230_write_subreg(%struct.at86rf230_local* %53, i32 %54, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %153

61:                                               ; preds = %52
  %62 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %63 = load i32, i32* @SR_IRQ_MASK_MODE, align 4
  %64 = call i32 @at86rf230_write_subreg(%struct.at86rf230_local* %62, i32 %63, i32 0)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %153

69:                                               ; preds = %61
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %72 = call i32 @ARRAY_SIZE(i32* %71)
  %73 = call i32 @get_random_bytes(i32* %70, i32 %72)
  %74 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %75 = load i32, i32* @SR_CSMA_SEED_0, align 4
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @at86rf230_write_subreg(%struct.at86rf230_local* %74, i32 %75, i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %153

83:                                               ; preds = %69
  %84 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %85 = load i32, i32* @SR_CSMA_SEED_1, align 4
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @at86rf230_write_subreg(%struct.at86rf230_local* %84, i32 %85, i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %153

93:                                               ; preds = %83
  %94 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %95 = load i32, i32* @SR_CLKM_SHA_SEL, align 4
  %96 = call i32 @at86rf230_write_subreg(%struct.at86rf230_local* %94, i32 %95, i32 0)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %3, align 4
  br label %153

101:                                              ; preds = %93
  %102 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %103 = load i32, i32* @SR_CLKM_CTRL, align 4
  %104 = call i32 @at86rf230_write_subreg(%struct.at86rf230_local* %102, i32 %103, i32 0)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %3, align 4
  br label %153

109:                                              ; preds = %101
  %110 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %111 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %110, i32 0, i32 1
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %116 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %115, i32 0, i32 1
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, 100
  %121 = call i32 @usleep_range(i64 %114, i64 %120)
  %122 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %123 = load i32, i32* @SR_XTAL_TRIM, align 4
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @at86rf230_write_subreg(%struct.at86rf230_local* %122, i32 %123, i32 %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %109
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %3, align 4
  br label %153

130:                                              ; preds = %109
  %131 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %132 = load i32, i32* @SR_DVDD_OK, align 4
  %133 = call i32 @at86rf230_read_subreg(%struct.at86rf230_local* %131, i32 %132, i32* %9)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = load i32, i32* %6, align 4
  store i32 %137, i32* %3, align 4
  br label %153

138:                                              ; preds = %130
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %149, label %141

141:                                              ; preds = %138
  %142 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %143 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %142, i32 0, i32 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = call i32 @dev_err(i32* %145, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %153

149:                                              ; preds = %138
  %150 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %151 = load i32, i32* @SR_SLOTTED_OPERATION, align 4
  %152 = call i32 @at86rf230_write_subreg(%struct.at86rf230_local* %150, i32 %151, i32 0)
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %149, %141, %136, %128, %107, %99, %91, %81, %67, %59, %50, %42, %17
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @at86rf230_sync_state_change(%struct.at86rf230_local*, i32) #1

declare dso_local i32 @irq_get_trigger_type(i32) #1

declare dso_local i32 @at86rf230_write_subreg(%struct.at86rf230_local*, i32, i32) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @usleep_range(i64, i64) #1

declare dso_local i32 @at86rf230_read_subreg(%struct.at86rf230_local*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
