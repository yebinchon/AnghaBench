; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-video.c_cx23885_video_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-video.c_cx23885_video_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32, i32, i32*, i32 }

@VID_A_INT_MSK = common dso_local global i32 0, align 4
@VID_A_INT_STAT = common dso_local global i32 0, align 4
@VID_BC_MSK_OPC_ERR = common dso_local global i32 0, align 4
@VID_BC_MSK_SYNC = common dso_local global i32 0, align 4
@VID_BC_MSK_OF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c" (VID_BC_MSK_OPC_ERR 0x%08x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: video risc op code error\0A\00", align 1
@SRAM_CH01 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c" (VID_BC_MSK_SYNC 0x%08x) video lines miss-match\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c" (VID_BC_MSK_OF 0x%08x) fifo overflow\0A\00", align 1
@VID_BC_MSK_RISCI1 = common dso_local global i32 0, align 4
@VID_A_GPCNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx23885_video_irq(%struct.cx23885_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx23885_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @VID_A_INT_MSK, align 4
  %10 = call i32 @cx_read(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 0, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %101

17:                                               ; preds = %2
  %18 = load i32, i32* @VID_A_INT_STAT, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @cx_write(i32 %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @VID_BC_MSK_OPC_ERR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @VID_BC_MSK_SYNC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @VID_BC_MSK_OF, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %71

35:                                               ; preds = %30, %25, %17
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @VID_BC_MSK_OPC_ERR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load i32, i32* @VID_BC_MSK_OPC_ERR, align 4
  %42 = call i32 @dprintk(i32 7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %44 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %48 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %49 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @SRAM_CH01, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = call i32 @cx23885_sram_channel_dump(%struct.cx23885_dev* %47, i32* %52)
  br label %54

54:                                               ; preds = %40, %35
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @VID_BC_MSK_SYNC, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @VID_BC_MSK_SYNC, align 4
  %61 = call i32 @dprintk(i32 7, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @VID_BC_MSK_OF, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @VID_BC_MSK_OF, align 4
  %69 = call i32 @dprintk(i32 7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %67, %62
  br label %71

71:                                               ; preds = %70, %30
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @VID_BC_MSK_RISCI1, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %71
  %77 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %78 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %77, i32 0, i32 0
  %79 = call i32 @spin_lock(i32* %78)
  %80 = load i32, i32* @VID_A_GPCNT, align 4
  %81 = call i32 @cx_read(i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %83 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %84 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %83, i32 0, i32 1
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @cx23885_video_wakeup(%struct.cx23885_dev* %82, i32* %84, i32 %85)
  %87 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %88 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %87, i32 0, i32 0
  %89 = call i32 @spin_unlock(i32* %88)
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %76, %71
  %93 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i64 @cx23885_vbi_irq(%struct.cx23885_dev* %93, i32 %94)
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %92, %15
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @cx23885_sram_channel_dump(%struct.cx23885_dev*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cx23885_video_wakeup(%struct.cx23885_dev*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @cx23885_vbi_irq(%struct.cx23885_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
