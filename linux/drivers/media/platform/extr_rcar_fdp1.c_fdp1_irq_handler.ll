; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdp1_dev = type { i32 }

@FD1_CTL_IRQSTA = common dso_local global i32 0, align 4
@FD1_CTL_VCYCLE_STAT = common dso_local global i32 0, align 4
@FD1_CTL_STATUS = common dso_local global i32 0, align 4
@FD1_CTL_STATUS_VINT_CNT_MASK = common dso_local global i32 0, align 4
@FD1_CTL_STATUS_VINT_CNT_SHIFT = common dso_local global i32 0, align 4
@FD1_CTL_IRQ_MASK = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"IRQ: 0x%x %s%s%s\0A\00", align 1
@FD1_CTL_IRQ_VERE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"[Error]\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"[!E]\00", align 1
@FD1_CTL_IRQ_VINTE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"[VSync]\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"[!V]\00", align 1
@FD1_CTL_IRQ_FREE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"[FrameEnd]\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"[!F]\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"CycleStatus = %d (%dms)\0A\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"Control Status = 0x%08x : VINT_CNT = %d %s:%s:%s:%s\0A\00", align 1
@FD1_CTL_STATUS_SGREGSET = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"RegSet\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FD1_CTL_STATUS_SGVERR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"Vsync Error\00", align 1
@FD1_CTL_STATUS_SGFREND = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"FrameEnd\00", align 1
@FD1_CTL_STATUS_BSY = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"Busy\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"***********************************\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fdp1_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdp1_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fdp1_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.fdp1_dev*
  store %struct.fdp1_dev* %12, %struct.fdp1_dev** %6, align 8
  %13 = load %struct.fdp1_dev*, %struct.fdp1_dev** %6, align 8
  %14 = load i32, i32* @FD1_CTL_IRQSTA, align 4
  %15 = call i32 @fdp1_read(%struct.fdp1_dev* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.fdp1_dev*, %struct.fdp1_dev** %6, align 8
  %17 = load i32, i32* @FD1_CTL_VCYCLE_STAT, align 4
  %18 = call i32 @fdp1_read(%struct.fdp1_dev* %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.fdp1_dev*, %struct.fdp1_dev** %6, align 8
  %20 = load i32, i32* @FD1_CTL_STATUS, align 4
  %21 = call i32 @fdp1_read(%struct.fdp1_dev* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @FD1_CTL_STATUS_VINT_CNT_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @FD1_CTL_STATUS_VINT_CNT_SHIFT, align 4
  %26 = ashr i32 %24, %25
  store i32 %26, i32* %9, align 4
  %27 = load %struct.fdp1_dev*, %struct.fdp1_dev** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* @FD1_CTL_IRQ_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @FD1_CTL_IRQSTA, align 4
  %33 = call i32 @fdp1_write(%struct.fdp1_dev* %27, i32 %31, i32 %32)
  %34 = load i32, i32* @debug, align 4
  %35 = icmp sge i32 %34, 2
  br i1 %35, label %36, label %97

36:                                               ; preds = %2
  %37 = load %struct.fdp1_dev*, %struct.fdp1_dev** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @FD1_CTL_IRQ_VERE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @FD1_CTL_IRQ_VINTE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @FD1_CTL_IRQ_FREE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %57 = call i32 (%struct.fdp1_dev*, i8*, ...) @dprintk(%struct.fdp1_dev* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %38, i8* %44, i8* %50, i8* %56)
  %58 = load %struct.fdp1_dev*, %struct.fdp1_dev** %6, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.fdp1_dev*, %struct.fdp1_dev** %6, align 8
  %62 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %63, 1000
  %65 = sdiv i32 %60, %64
  %66 = call i32 (%struct.fdp1_dev*, i8*, ...) @dprintk(%struct.fdp1_dev* %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %59, i32 %65)
  %67 = load %struct.fdp1_dev*, %struct.fdp1_dev** %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @FD1_CTL_STATUS_SGREGSET, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @FD1_CTL_STATUS_SGVERR, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @FD1_CTL_STATUS_SGFREND, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @FD1_CTL_STATUS_BSY, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %94 = call i32 (%struct.fdp1_dev*, i8*, ...) @dprintk(%struct.fdp1_dev* %67, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 %68, i32 %69, i8* %75, i8* %81, i8* %87, i8* %93)
  %95 = load %struct.fdp1_dev*, %struct.fdp1_dev** %6, align 8
  %96 = call i32 (%struct.fdp1_dev*, i8*, ...) @dprintk(%struct.fdp1_dev* %95, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  br label %97

97:                                               ; preds = %36, %2
  %98 = load i32, i32* @FD1_CTL_IRQ_MASK, align 4
  %99 = load i32, i32* %7, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* @IRQ_NONE, align 4
  store i32 %103, i32* %3, align 4
  br label %125

104:                                              ; preds = %97
  %105 = load i32, i32* @FD1_CTL_IRQ_VERE, align 4
  %106 = load i32, i32* %7, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load %struct.fdp1_dev*, %struct.fdp1_dev** %6, align 8
  %111 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %112 = call i32 @device_frame_end(%struct.fdp1_dev* %110, i32 %111)
  br label %123

113:                                              ; preds = %104
  %114 = load i32, i32* @FD1_CTL_IRQ_FREE, align 4
  %115 = load i32, i32* %7, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load %struct.fdp1_dev*, %struct.fdp1_dev** %6, align 8
  %120 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %121 = call i32 @device_frame_end(%struct.fdp1_dev* %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %113
  br label %123

123:                                              ; preds = %122, %109
  %124 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %123, %102
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @fdp1_read(%struct.fdp1_dev*, i32) #1

declare dso_local i32 @fdp1_write(%struct.fdp1_dev*, i32, i32) #1

declare dso_local i32 @dprintk(%struct.fdp1_dev*, i8*, ...) #1

declare dso_local i32 @device_frame_end(%struct.fdp1_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
