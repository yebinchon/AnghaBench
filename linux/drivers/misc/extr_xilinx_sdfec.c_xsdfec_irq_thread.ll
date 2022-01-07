; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_xilinx_sdfec.c_xsdfec_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_xilinx_sdfec.c_xsdfec_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsdfec_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@XSDFEC_ECC_ISR_ADDR = common dso_local global i32 0, align 4
@XSDFEC_ISR_ADDR = common dso_local global i32 0, align 4
@XSDFEC_ALL_ECC_ISR_MBE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"tmp=%x, uecc=%x, aecc=%x, cecc=%x, isr=%x\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"uecc=%x, cecc=%x, isr=%x\00", align 1
@XSDFEC_ECC_ISR_MBE_MASK = common dso_local global i32 0, align 4
@XSDFEC_NEEDS_RESET = common dso_local global i8* null, align 8
@XSDFEC_PL_INIT_ECC_ISR_MBE_MASK = common dso_local global i32 0, align 4
@XSDFEC_PL_RECONFIGURE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"state=%x, stats=%x\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xsdfec_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsdfec_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xsdfec_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.xsdfec_dev*
  store %struct.xsdfec_dev* %15, %struct.xsdfec_dev** %5, align 8
  %16 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %18 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %25 = call i32 @xsdfec_isr_enable(%struct.xsdfec_dev* %24, i32 0)
  %26 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %27 = call i32 @xsdfec_ecc_isr_enable(%struct.xsdfec_dev* %26, i32 0)
  %28 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %29 = load i32, i32* @XSDFEC_ECC_ISR_ADDR, align 4
  %30 = call i32 @xsdfec_regread(%struct.xsdfec_dev* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %32 = load i32, i32* @XSDFEC_ISR_ADDR, align 4
  %33 = call i32 @xsdfec_regread(%struct.xsdfec_dev* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %35 = load i32, i32* @XSDFEC_ECC_ISR_ADDR, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @xsdfec_regwrite(%struct.xsdfec_dev* %34, i32 %35, i32 %36)
  %38 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %39 = load i32, i32* @XSDFEC_ISR_ADDR, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @xsdfec_regwrite(%struct.xsdfec_dev* %38, i32 %39, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @XSDFEC_ALL_ECC_ISR_MBE_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @hweight32(i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @hweight32(i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %9, align 4
  %51 = mul nsw i32 2, %50
  %52 = sub nsw i32 %49, %51
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @hweight32(i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %56 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %57, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %65 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %68 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %71 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %74 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %72, i32 %75)
  %77 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %78 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %77, i32 0, i32 8
  %79 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %80 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @spin_lock_irqsave(i32* %78, i32 %81)
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %2
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %88 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %2
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %97 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %96, i32 0, i32 10
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %94, %91
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %106 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %103, %100
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %136

112:                                              ; preds = %109
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @XSDFEC_ECC_ISR_MBE_MASK, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i8*, i8** @XSDFEC_NEEDS_RESET, align 8
  %119 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %120 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %119, i32 0, i32 9
  store i8* %118, i8** %120, align 8
  br label %131

121:                                              ; preds = %112
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @XSDFEC_PL_INIT_ECC_ISR_MBE_MASK, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load i8*, i8** @XSDFEC_PL_RECONFIGURE, align 8
  %128 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %129 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %128, i32 0, i32 9
  store i8* %127, i8** %129, align 8
  br label %130

130:                                              ; preds = %126, %121
  br label %131

131:                                              ; preds = %130, %117
  %132 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %133 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %132, i32 0, i32 3
  store i32 1, i32* %133, align 4
  %134 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %135 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %134, i32 0, i32 4
  store i32 1, i32* %135, align 8
  br label %136

136:                                              ; preds = %131, %109
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %141 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %140, i32 0, i32 3
  store i32 1, i32* %141, align 4
  br label %142

142:                                              ; preds = %139, %136
  %143 = load i32, i32* %11, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %142
  %146 = load i8*, i8** @XSDFEC_NEEDS_RESET, align 8
  %147 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %148 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %147, i32 0, i32 9
  store i8* %146, i8** %148, align 8
  %149 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %150 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %149, i32 0, i32 3
  store i32 1, i32* %150, align 4
  %151 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %152 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %151, i32 0, i32 4
  store i32 1, i32* %152, align 8
  br label %153

153:                                              ; preds = %145, %142
  %154 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %155 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %154, i32 0, i32 8
  %156 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %157 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %156, i32 0, i32 7
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @spin_unlock_irqrestore(i32* %155, i32 %158)
  %160 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %161 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %164 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %167 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %162, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %165, i32 %168)
  %170 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %171 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %153
  %175 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %176 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %174, %153
  %180 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %181 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %180, i32 0, i32 5
  %182 = call i32 @wake_up_interruptible(i32* %181)
  br label %185

183:                                              ; preds = %174
  %184 = load i32, i32* @IRQ_NONE, align 4
  store i32 %184, i32* %6, align 4
  br label %185

185:                                              ; preds = %183, %179
  %186 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %187 = call i32 @xsdfec_isr_enable(%struct.xsdfec_dev* %186, i32 1)
  %188 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %5, align 8
  %189 = call i32 @xsdfec_ecc_isr_enable(%struct.xsdfec_dev* %188, i32 1)
  %190 = load i32, i32* %6, align 4
  ret i32 %190
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @xsdfec_isr_enable(%struct.xsdfec_dev*, i32) #1

declare dso_local i32 @xsdfec_ecc_isr_enable(%struct.xsdfec_dev*, i32) #1

declare dso_local i32 @xsdfec_regread(%struct.xsdfec_dev*, i32) #1

declare dso_local i32 @xsdfec_regwrite(%struct.xsdfec_dev*, i32, i32) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
