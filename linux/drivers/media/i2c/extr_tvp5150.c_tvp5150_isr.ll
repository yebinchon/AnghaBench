; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tvp5150 = type { i32, i32, %struct.TYPE_2__, %struct.regmap* }
%struct.TYPE_2__ = type { i32 }
%struct.regmap = type { i32 }

@TVP5150_MISC_CTL_YCBCR_OE = common dso_local global i32 0, align 4
@TVP5150_MISC_CTL_SYNC_OE = common dso_local global i32 0, align 4
@TVP5150_MISC_CTL_CLOCK_OE = common dso_local global i32 0, align 4
@TVP5150_INT_STATUS_REG_A = common dso_local global i32 0, align 4
@TVP5150_INT_A_LOCK = common dso_local global i32 0, align 4
@TVP5150_INT_A_LOCK_STATUS = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"sync lo%s signal\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ck\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@tvp5150_ev_fmt = common dso_local global i32 0, align 4
@TVP5150_MISC_CTL = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@TVP5150_INT_ACTIVE_REG_B = common dso_local global i32 0, align 4
@TVP5150_INT_STATUS_REG_B = common dso_local global i32 0, align 4
@TVP5150_INT_RESET_REG_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tvp5150_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tvp5150*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.tvp5150*
  store %struct.tvp5150* %12, %struct.tvp5150** %6, align 8
  %13 = load %struct.tvp5150*, %struct.tvp5150** %6, align 8
  %14 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %13, i32 0, i32 3
  %15 = load %struct.regmap*, %struct.regmap** %14, align 8
  store %struct.regmap* %15, %struct.regmap** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* @TVP5150_MISC_CTL_YCBCR_OE, align 4
  %17 = load i32, i32* @TVP5150_MISC_CTL_SYNC_OE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @TVP5150_MISC_CTL_CLOCK_OE, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.regmap*, %struct.regmap** %7, align 8
  %22 = load i32, i32* @TVP5150_INT_STATUS_REG_A, align 4
  %23 = call i32 @regmap_read(%struct.regmap* %21, i32 %22, i32* %10)
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %77

26:                                               ; preds = %2
  %27 = load %struct.regmap*, %struct.regmap** %7, align 8
  %28 = load i32, i32* @TVP5150_INT_STATUS_REG_A, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @regmap_write(%struct.regmap* %27, i32 %28, i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @TVP5150_INT_A_LOCK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %75

35:                                               ; preds = %26
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @TVP5150_INT_A_LOCK_STATUS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = load %struct.tvp5150*, %struct.tvp5150** %6, align 8
  %44 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.tvp5150*, %struct.tvp5150** %6, align 8
  %46 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @debug, align 4
  %50 = load %struct.tvp5150*, %struct.tvp5150** %6, align 8
  %51 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %56 = call i32 @dev_dbg_lvl(i32 %48, i32 1, i32 %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %55)
  %57 = load %struct.tvp5150*, %struct.tvp5150** %6, align 8
  %58 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %57, i32 0, i32 2
  %59 = call i32 @v4l2_subdev_notify_event(%struct.TYPE_2__* %58, i32* @tvp5150_ev_fmt)
  %60 = load %struct.regmap*, %struct.regmap** %7, align 8
  %61 = load i32, i32* @TVP5150_MISC_CTL, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.tvp5150*, %struct.tvp5150** %6, align 8
  %64 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %35
  %68 = load %struct.tvp5150*, %struct.tvp5150** %6, align 8
  %69 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  br label %72

71:                                               ; preds = %35
  br label %72

72:                                               ; preds = %71, %67
  %73 = phi i32 [ %70, %67 ], [ 0, %71 ]
  %74 = call i32 @regmap_update_bits(%struct.regmap* %60, i32 %61, i32 %62, i32 %73)
  br label %75

75:                                               ; preds = %72, %26
  %76 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %76, i32* %3, align 4
  br label %97

77:                                               ; preds = %2
  %78 = load %struct.regmap*, %struct.regmap** %7, align 8
  %79 = load i32, i32* @TVP5150_INT_ACTIVE_REG_B, align 4
  %80 = call i32 @regmap_read(%struct.regmap* %78, i32 %79, i32* %9)
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %77
  store i32 0, i32* %10, align 4
  %84 = load %struct.regmap*, %struct.regmap** %7, align 8
  %85 = load i32, i32* @TVP5150_INT_STATUS_REG_B, align 4
  %86 = call i32 @regmap_read(%struct.regmap* %84, i32 %85, i32* %10)
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load %struct.regmap*, %struct.regmap** %7, align 8
  %91 = load i32, i32* @TVP5150_INT_RESET_REG_B, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @regmap_write(%struct.regmap* %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %83
  br label %95

95:                                               ; preds = %94, %77
  %96 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %75
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @dev_dbg_lvl(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @v4l2_subdev_notify_event(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
