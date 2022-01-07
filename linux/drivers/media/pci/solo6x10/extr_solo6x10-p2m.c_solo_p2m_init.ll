; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-p2m.c_solo_p2m_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-p2m.c_solo_p2m_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32, i32, %struct.TYPE_2__*, %struct.solo_p2m_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.solo_p2m_dev = type { i32, i32 }

@SOLO_NR_P2M = common dso_local global i32 0, align 4
@SOLO_P2M_CSC_16BIT_565 = common dso_local global i32 0, align 4
@SOLO_P2M_DESC_INTR_OPT = common dso_local global i32 0, align 4
@SOLO_P2M_PCI_MASTER_MODE = common dso_local global i32 0, align 4
@SOLO_DMA_CTRL = common dso_local global i32 0, align 4
@SOLO_DMA_CTRL_SDRAM_CLK_INVERT = common dso_local global i32 0, align 4
@SOLO_DMA_CTRL_READ_CLK_SELECT = common dso_local global i32 0, align 4
@SOLO_SYS_CFG = common dso_local global i32 0, align 4
@SOLO_SYS_CFG_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Error detecting SDRAM size\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"SDRAM is not large enough (%u < %u)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @solo_p2m_init(%struct.solo_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.solo_dev*, align 8
  %4 = alloca %struct.solo_p2m_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %42, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @SOLO_NR_P2M, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %45

10:                                               ; preds = %6
  %11 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %12 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %11, i32 0, i32 3
  %13 = load %struct.solo_p2m_dev*, %struct.solo_p2m_dev** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.solo_p2m_dev, %struct.solo_p2m_dev* %13, i64 %15
  store %struct.solo_p2m_dev* %16, %struct.solo_p2m_dev** %4, align 8
  %17 = load %struct.solo_p2m_dev*, %struct.solo_p2m_dev** %4, align 8
  %18 = getelementptr inbounds %struct.solo_p2m_dev, %struct.solo_p2m_dev* %17, i32 0, i32 1
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.solo_p2m_dev*, %struct.solo_p2m_dev** %4, align 8
  %21 = getelementptr inbounds %struct.solo_p2m_dev, %struct.solo_p2m_dev* %20, i32 0, i32 0
  %22 = call i32 @init_completion(i32* %21)
  %23 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @SOLO_P2M_CONTROL(i32 %24)
  %26 = call i32 @solo_reg_write(%struct.solo_dev* %23, i32 %25, i32 0)
  %27 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @SOLO_P2M_CONFIG(i32 %28)
  %30 = load i32, i32* @SOLO_P2M_CSC_16BIT_565, align 4
  %31 = load i32, i32* @SOLO_P2M_DESC_INTR_OPT, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @SOLO_P2M_DMA_INTERVAL(i32 0)
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SOLO_P2M_PCI_MASTER_MODE, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @solo_reg_write(%struct.solo_dev* %27, i32 %29, i32 %36)
  %38 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @SOLO_IRQ_P2M(i32 %39)
  %41 = call i32 @solo_irq_on(%struct.solo_dev* %38, i32 %40)
  br label %42

42:                                               ; preds = %10
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %6

45:                                               ; preds = %6
  %46 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %47 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  store i32 2, i32* %5, align 4
  br label %48

48:                                               ; preds = %107, %45
  %49 = load i32, i32* %5, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %110

51:                                               ; preds = %48
  %52 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %53 = load i32, i32* @SOLO_DMA_CTRL, align 4
  %54 = call i32 @SOLO_DMA_CTRL_REFRESH_CYCLE(i32 1)
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @SOLO_DMA_CTRL_SDRAM_SIZE(i32 %55)
  %57 = or i32 %54, %56
  %58 = load i32, i32* @SOLO_DMA_CTRL_SDRAM_CLK_INVERT, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @SOLO_DMA_CTRL_READ_CLK_SELECT, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @SOLO_DMA_CTRL_LATENCY(i32 1)
  %63 = or i32 %61, %62
  %64 = call i32 @solo_reg_write(%struct.solo_dev* %52, i32 %53, i32 %63)
  %65 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %66 = load i32, i32* @SOLO_SYS_CFG, align 4
  %67 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %68 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SOLO_SYS_CFG_RESET, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @solo_reg_write(%struct.solo_dev* %65, i32 %66, i32 %71)
  %73 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %74 = load i32, i32* @SOLO_SYS_CFG, align 4
  %75 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %76 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @solo_reg_write(%struct.solo_dev* %73, i32 %74, i32 %77)
  %79 = load i32, i32* %5, align 4
  switch i32 %79, label %96 [
    i32 2, label %80
    i32 1, label %90
  ]

80:                                               ; preds = %51
  %81 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %82 = call i32 @solo_p2m_test(%struct.solo_dev* %81, i32 134152192, i32 65536)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %86 = call i32 @solo_p2m_test(%struct.solo_dev* %85, i32 100597760, i32 65536)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84, %80
  br label %107

89:                                               ; preds = %84
  br label %102

90:                                               ; preds = %51
  %91 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %92 = call i32 @solo_p2m_test(%struct.solo_dev* %91, i32 67043328, i32 65536)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %107

95:                                               ; preds = %90
  br label %102

96:                                               ; preds = %51
  %97 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %98 = call i32 @solo_p2m_test(%struct.solo_dev* %97, i32 33488896, i32 65536)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %107

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101, %95, %89
  %103 = load i32, i32* %5, align 4
  %104 = shl i32 33554432, %103
  %105 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %106 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  br label %110

107:                                              ; preds = %100, %94, %88
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %5, align 4
  br label %48

110:                                              ; preds = %102, %48
  %111 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %112 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %110
  %116 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %117 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %116, i32 0, i32 2
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = call i32 (i32*, i8*, ...) @dev_err(i32* %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %144

123:                                              ; preds = %110
  %124 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %125 = call i32 @SOLO_SDRAM_END(%struct.solo_dev* %124)
  %126 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %127 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp sgt i32 %125, %128
  br i1 %129, label %130, label %143

130:                                              ; preds = %123
  %131 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %132 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %131, i32 0, i32 2
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %136 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %139 = call i32 @SOLO_SDRAM_END(%struct.solo_dev* %138)
  %140 = call i32 (i32*, i8*, ...) @dev_err(i32* %134, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %137, i32 %139)
  %141 = load i32, i32* @EIO, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %2, align 4
  br label %144

143:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %143, %130, %115
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

declare dso_local i32 @SOLO_P2M_CONTROL(i32) #1

declare dso_local i32 @SOLO_P2M_CONFIG(i32) #1

declare dso_local i32 @SOLO_P2M_DMA_INTERVAL(i32) #1

declare dso_local i32 @solo_irq_on(%struct.solo_dev*, i32) #1

declare dso_local i32 @SOLO_IRQ_P2M(i32) #1

declare dso_local i32 @SOLO_DMA_CTRL_REFRESH_CYCLE(i32) #1

declare dso_local i32 @SOLO_DMA_CTRL_SDRAM_SIZE(i32) #1

declare dso_local i32 @SOLO_DMA_CTRL_LATENCY(i32) #1

declare dso_local i32 @solo_p2m_test(%struct.solo_dev*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @SOLO_SDRAM_END(%struct.solo_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
