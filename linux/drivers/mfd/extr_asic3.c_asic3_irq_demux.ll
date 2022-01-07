; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_asic3.c_asic3_irq_demux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_asic3.c_asic3_irq_demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.asic3 = type { i32, i32*, i32, i32 }
%struct.irq_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.irq_data*)* }

@MAX_ASIC_ISR_LOOPS = common dso_local global i32 0, align 4
@INTR = common dso_local global i32 0, align 4
@P_INT_STAT = common dso_local global i32 0, align 4
@ASIC3_NUM_GPIO_BANKS = common dso_local global i32 0, align 4
@ASIC3_GPIO_A_BASE = common dso_local global i32 0, align 4
@ASIC3_GPIO_BASE_INCR = common dso_local global i32 0, align 4
@ASIC3_GPIO_INT_STATUS = common dso_local global i64 0, align 8
@ASIC3_GPIOS_PER_BANK = common dso_local global i32 0, align 4
@ASIC3_NUM_GPIOS = common dso_local global i32 0, align 4
@ASIC3_NR_IRQS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"interrupt processing overrun\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @asic3_irq_demux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asic3_irq_demux(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.asic3*, align 8
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %14 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %15 = call %struct.asic3* @irq_desc_get_handler_data(%struct.irq_desc* %14)
  store %struct.asic3* %15, %struct.asic3** %3, align 8
  %16 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %17 = call %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* %16)
  store %struct.irq_data* %17, %struct.irq_data** %4, align 8
  %18 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %19 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %21, align 8
  %23 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %24 = call i32 %22(%struct.irq_data* %23)
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %161, %1
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @MAX_ASIC_ISR_LOOPS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %164

29:                                               ; preds = %25
  %30 = load %struct.asic3*, %struct.asic3** %3, align 8
  %31 = getelementptr inbounds %struct.asic3, %struct.asic3* %30, i32 0, i32 3
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @raw_spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.asic3*, %struct.asic3** %3, align 8
  %35 = load i32, i32* @INTR, align 4
  %36 = load i32, i32* @P_INT_STAT, align 4
  %37 = call i64 @ASIC3_OFFSET(i32 %35, i32 %36)
  %38 = call i8* @asic3_read_register(%struct.asic3* %34, i64 %37)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load %struct.asic3*, %struct.asic3** %3, align 8
  %41 = getelementptr inbounds %struct.asic3, %struct.asic3* %40, i32 0, i32 3
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @raw_spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, 1023
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %29
  br label %164

48:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %131, %48
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @ASIC3_NUM_GPIO_BANKS, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %134

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = shl i32 1, %55
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %130

59:                                               ; preds = %53
  %60 = load i32, i32* @ASIC3_GPIO_A_BASE, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @ASIC3_GPIO_BASE_INCR, align 4
  %63 = mul nsw i32 %61, %62
  %64 = add nsw i32 %60, %63
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %10, align 8
  %66 = load %struct.asic3*, %struct.asic3** %3, align 8
  %67 = getelementptr inbounds %struct.asic3, %struct.asic3* %66, i32 0, i32 3
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @raw_spin_lock_irqsave(i32* %67, i64 %68)
  %70 = load %struct.asic3*, %struct.asic3** %3, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* @ASIC3_GPIO_INT_STATUS, align 8
  %73 = add i64 %71, %72
  %74 = call i8* @asic3_read_register(%struct.asic3* %70, i64 %73)
  %75 = ptrtoint i8* %74 to i64
  store i64 %75, i64* %11, align 8
  %76 = load %struct.asic3*, %struct.asic3** %3, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @ASIC3_GPIO_INT_STATUS, align 8
  %79 = add i64 %77, %78
  %80 = call i32 @asic3_write_register(%struct.asic3* %76, i64 %79, i32 0)
  %81 = load %struct.asic3*, %struct.asic3** %3, align 8
  %82 = getelementptr inbounds %struct.asic3, %struct.asic3* %81, i32 0, i32 3
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @raw_spin_unlock_irqrestore(i32* %82, i64 %83)
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %126, %59
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @ASIC3_GPIOS_PER_BANK, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %129

89:                                               ; preds = %85
  %90 = load i32, i32* %6, align 4
  %91 = shl i32 1, %90
  store i32 %91, i32* %12, align 4
  %92 = load i64, i64* %11, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = and i64 %92, %94
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %89
  br label %126

98:                                               ; preds = %89
  %99 = load %struct.asic3*, %struct.asic3** %3, align 8
  %100 = getelementptr inbounds %struct.asic3, %struct.asic3* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @ASIC3_GPIOS_PER_BANK, align 4
  %103 = load i32, i32* %9, align 4
  %104 = mul nsw i32 %102, %103
  %105 = add i32 %101, %104
  %106 = load i32, i32* %6, align 4
  %107 = add i32 %105, %106
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @generic_handle_irq(i32 %108)
  %110 = load %struct.asic3*, %struct.asic3** %3, align 8
  %111 = getelementptr inbounds %struct.asic3, %struct.asic3* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %12, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %98
  %121 = load %struct.asic3*, %struct.asic3** %3, align 8
  %122 = load i64, i64* %10, align 8
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @asic3_irq_flip_edge(%struct.asic3* %121, i64 %122, i32 %123)
  br label %125

125:                                              ; preds = %120, %98
  br label %126

126:                                              ; preds = %125, %97
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4
  br label %85

129:                                              ; preds = %85
  br label %130

130:                                              ; preds = %129, %53
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %49

134:                                              ; preds = %49
  %135 = load i32, i32* @ASIC3_NUM_GPIOS, align 4
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %157, %134
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @ASIC3_NR_IRQS, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %160

140:                                              ; preds = %136
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @ASIC3_NUM_GPIOS, align 4
  %144 = sub nsw i32 %142, %143
  %145 = add nsw i32 %144, 4
  %146 = shl i32 1, %145
  %147 = and i32 %141, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %140
  %150 = load %struct.asic3*, %struct.asic3** %3, align 8
  %151 = getelementptr inbounds %struct.asic3, %struct.asic3* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = add i32 %152, %153
  %155 = call i32 @generic_handle_irq(i32 %154)
  br label %156

156:                                              ; preds = %149, %140
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %6, align 4
  br label %136

160:                                              ; preds = %136
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %5, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %5, align 4
  br label %25

164:                                              ; preds = %47, %25
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* @MAX_ASIC_ISR_LOOPS, align 4
  %167 = icmp sge i32 %165, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %164
  %169 = load %struct.asic3*, %struct.asic3** %3, align 8
  %170 = getelementptr inbounds %struct.asic3, %struct.asic3* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @dev_err(i32 %171, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %173

173:                                              ; preds = %168, %164
  ret void
}

declare dso_local %struct.asic3* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @asic3_read_register(%struct.asic3*, i64) #1

declare dso_local i64 @ASIC3_OFFSET(i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @asic3_write_register(%struct.asic3*, i64, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @asic3_irq_flip_edge(%struct.asic3*, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
